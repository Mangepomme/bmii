import os
import logging
import shutil
import subprocess
import sys
import usb

from bmii.usbctl.utils import ninja_syntax


def asm(f):
    return f + '.a51'


def cc(f):
    return f + '.c'


def obj(f):
    return os.path.join('$builddir', f + '.rel')


class Firmware():
    def prepare(self):
        pass

    def build(self):
        self.prepare()

    def find_devpath(self):
        ids = [(0xFFFF, 0xebfe),
                (0x04b4, 0x8613),
                (0x09fb, 0x6001)]
        for i in ids:
            dev = usb.core.find(idVendor=i[0], idProduct=i[1])
            if dev != None:
                if dev.idVendor == 0x09fb and \
                    usb.util.get_string(dev, 2) != "USB-JTAG-BM":
                    logging.debug("Found genuine USB Blaster: %s. Ignoring",
                            usb.util.get_string(dev, 2))
                    continue
                logging.debug("Found device (%03d:%03d)", dev.bus, dev.address)
                return os.path.join(os.sep, "dev", "bus", "usb",
                        "%03d" % dev.bus,
                        "%03d" % dev.address)
        logging.error("Cannot find device")
        sys.exit(2)

    def is_compiled(self):
        if not os.path.exists(self.ihex):
            logging.warn("Firmware %s not found", self.ihex)
            logging.warn("Trying to build it")
            self.build()

    def fxload(self, *args):
        subprocess.run(["fxload",
                "-t", "fx2lp",
                "-I", self.ihex,
                "-D", self.find_devpath()] + list(args),
                check=True)

    def load(self):
        self.is_compiled()
        self.fxload()

    def flash(self):
        self.fxload("-c", "0x01",
                "-s", os.path.join(os.path.dirname(os.path.realpath(__file__)),
                    "3rdparty", "Vend_Ax.hex"))


class BMIIFirmware(Firmware):
    def __init__(self):
        self.fwpath = os.path.join(os.path.split(os.path.realpath(__file__))[0], 'fw')
        self.builddir = 'build'
        self.buildfile = os.path.join(self.builddir, "build.ninja")
        self.ihex = os.path.join(self.builddir, "bmii_fw.ihx")

        self.csources = [
                'gpif',
                'gpifisr',
                'io',
                'intr',
                'main',
                'setupdat',
                'timer',
                'usbisr',
                ]

        self.assources = [
                'dscr',
                'int2jt'
                ]


    def prepare(self):
        try:
            os.makedirs(self.builddir)
        except:
            pass
        with open(self.buildfile, 'w') as buildfile:
            n = ninja_syntax.Writer(buildfile)

            n.comment('BMII firmware build file')
            n.newline()

            n.variable('builddir', self.builddir)
            n.variable('cc', 'sdcc')

            locs = [("DSCR_AREA", 0x3e00),
                    ("INT2JT", 0x3f00)]

            cflags = ['-mmcs51']
            cflags += ['--code-size 0x3c00',
                    '--xram-size 0x0200',
                    '--xram-loc  0x3c00']
            cflags += ['-Wl"-b {0}={1}"'.format(l[0], hex(l[1])) for l in locs]
            n.variable('cflags', " ".join(cflags))

            n.variable('as', 'sdas8051')
            n.variable('asflags', '-logs')
            n.newline()

            n.rule('cp',
                command='cp $in $out',
                description='CP $out')

            n.rule('cc',
                command='$cc -c -Wp -MMD,-MP,-MF$out.dep $cflags $in -o $out',
                depfile='$out.d',
                description='CC $out')

            n.rule('as',
                command='$as $asflags $in',
                description='AS $out')

            n.rule('link',
                command='$cc $cflags $in -o $out',
                description='LINK $out')

            n.newline()

            for i in self.csources:
                n.build(obj(i), 'cc', os.path.join(self.fwpath, cc(i)))

            for i in self.assources:
                n.build(os.path.join('$builddir', asm(i)), 'cp',
                        os.path.join(self.fwpath, asm(i)))
                n.build(obj(i), 'as', os.path.join('$builddir', asm(i)))

            n.newline()

            n.build(self.ihex, 'link',
                    [obj(i) for i in self.csources + self.assources])


    def build(self):
        logging.debug("Preparing USB controller firmware build system... ")
        self.prepare()
        logging.debug("Building USB controller firmware... ")
        subprocess.run(["ninja", "-f", self.buildfile], check=True)
        logging.info("USB controller firmware built")


    def load(self):
        logging.debug("Loading USB controller firmware")
        Firmware.load(self)
        logging.info("USB controller firmware loaded")


    def flash(self):
        logging.debug("Flashing USB controller firmware")
        Firmware.flash(self)
        logging.info("USB controller firmware flashed")


class UBFirmware(Firmware):
    def __init__(self):
        self.srcdir = os.path.join(os.path.dirname(os.path.realpath(__file__)),
                "3rdparty", "ixo-usb-jtag")
        self.builddir = os.path.join("build", "ixo-usb-jtag")
        self.ihex = os.path.join(self.builddir, "usbjtag.hex")

    def prepare(self):
        shutil.rmtree(self.builddir, ignore_errors=True)
        shutil.copytree(self.srcdir, self.builddir)

    def build(self):
        logging.debug("Building ixo.de USB JTAG firmware...")
        self.prepare()
        subprocess.run(["make",
                "-C", self.builddir,
                "HARDWARE=hw_bmii"],
                check=True)
        logging.info("ixo.de USB JTAG firmware built")

    def load(self):
        logging.debug("Loading ixo.de USB JTAG firmware")
        Firmware.load(self)
        logging.info("ixo.de USB JTAG firmware loaded")

    def flash(self):
        pass
