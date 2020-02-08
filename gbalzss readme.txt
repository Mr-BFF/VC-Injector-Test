lzssdemo.c is just a little demonstration of how to decompress data
you compressed with gbalzss.c using the GBA BIOS function to do the work.

For information how to use/compile gbalzss.c check out the readme in the
gbalzss_compressor_tool directory.

Note that if you compile to arm 32 bit code you need to exchange "swi 0x110000;"
with "swi 0x11;". If you dont know what that means you probably use thumb code and
the code below works for you :)

If you use gcc for your development you can call the BIOS function
with that procedure.

void bios_lzss( char* src, char* dest )
// bios lzss decompressor
{
	asm volatile(   "mov r0, %0;"
			"mov r1, %1;"
			"swi 0x110000;"
			: // no ouput
			: "r" (src), "r" (dest)
                        : "r0", "r1" );
}

Again: Be sure you align the compressed data to a 4 byte boundary.
You can make this sure if you use gcc by declaring your data array like that:

const u8 compressed[4808] __attribute__ ((aligned (4))) = { 01, 02, 00, ....... }

Have fun
Andre

please mail me if you found a bug/error or need a hint :)
ovaron@gmx.net

credits: tribute to gbadev.org & cowbite & no$gba's gbatek without those I couldnt
do much on gba, and also to those great tutorial makers like gbajunkie, pern and to
BeLogic for his superb gba sound informations.