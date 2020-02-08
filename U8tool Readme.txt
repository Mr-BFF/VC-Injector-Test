U8Tool:  U8 archive packer/extractor  by HowardC
===============================================

Liscense:
=========
This application is free for personal use. This application may be distributed publically so long as it's free, the original docs are included, and
credit is given to "HowardC", the author.  This application may also be packed with other tools, so long as the liscense agreement is still upheld.

This tool uses gbalzss lz77 decompressor created by "Andre". For usage and credit regarding gbalzss refer to it's included readme.

This tool REQUIRES the forms 2.0 library included with any version of Office.  If you don't have office installed, click on the shortcut in this folder,
save the zip to this folder, and run the exe.  Forms 2.0 is property of microsoft and CANNOT be redistributed with any application.


WARNING WARNING WARNING!!!
===========================
Improperly packing the 00000000.app or icon.bin can HARD BRICK your wii!!!!  Do NOT attempt to edit banners unless you know what you are doing!!!!!!


Version 10.1
============
Altered the command-line function so it doesn't confuse "imet" with "inject" by mistake.

Version 10
===========
Fixed a bug about the command prompt popping up in command-line mode.
Added the new "inject" mode, which is useful for simple file swaps.

Version 9.6
===========
Fixes speed issues when exracting odd-ball archives.

Version 9.5
===========
It came to my attention that the command line flags weren't working, so I fixed that.

Version 9.0
===========
Fixed a very Minor bug that could have caused issues with lz77 compressed files.  
Added Support for headerless lz77 compression and decompression.  (.arc files that are named "LZ77___.arc")
Added a quick fix to keep icon.bin from corrupting.  


Version 8.0
===========
Fixed a minor bug that didn't read the proper channel names if clone is checked.
Fixed a bug that didn't allow you to define a blank name for a channel in the imet header.
Fixed a bug that didn't add the proper buffering between files when imet is checked.  
Added Unicode support (for japanese text).  YOU MUST AQUIRE FM20.dll (the forms 2.0 library) from the microsoft website to run this program!!!


Version 7.1
===========
Fixed a bug that caused a c64 5.app to be incorrectly identified as a sound.bin.  

Version 7.0
===========
Fixed a bug related to the recent changes which caused the tool to go crazy when packing a normal archive and using the "delete recursive" option.
Fixed u8 structure to be 100% identical to official u8 archives.  
Added Prelimenary extract support for sound.bin.  It isn't a u8 archive, but I'll needed to extract it to fix the sound bug anyway.
Added Prelimenary packing support for sound.bin.  (You take a wav, aiff or bns file and u8tool will pack it up with a imd5 header and optional lz77 compression.)
When extracting a file or using the "get settings from file" button, the channel titles are now read into the text boxes.  

Version 6.5
===========
Optimized a line of code which should speed-up extraction dramatically! 

Version 6.0
============
Fixed a Minor bug that caused a crash under certain conditions when repacking apps.  


Version 5.0
============
Due to some unfortuantes that used this tool without knowing how to use it, I've added rudimentary auto-settings for critical files like banner.bin, icon.bin
and 00000000.app that keep the user from creating said files with improper headers.  Note that this sensing ONLY works when the files are saved to the 
current file name, so ALWAYS SAVE THESE FILES TO THEIR REAL NAMES!

Also added a get settings from source button, which reads the header settings from a specified file ans sets them that way.  
(Can also be called via "source" tag in command line)

Added disclaimer above.

Version 4.0
============
Added bnr file extension to the filters.  
Changed folder browse behavior again...  Now it attempts to start in the directory you are working in.  
Changed checkboxes to option boxes where appropriate for noob protection.
Fixed bug in the DVD header (Thanks Summerset)
Added the md5 dll back into the archive.  (OOPS!)


Version 3.0
============
Fixed a few minor bugs.
Fixed the browse filter (.bin is now supported)

Version 2.0
===========
Added Packing Support
Added "Delete Recursive "_OUT" folders checkbox for noob protection.  
(If you pack up a 00000000.app and you've been working on the banner.bin first, it would include the banner_bin_out folder in the archive otherwise!)

Fixed DvD header bugs
Fixed a bug in the sound.bin file-size calculation.. sound.bin should now play on repacked banners.
Set a text limit of 20 visible characters in the title boxes, because, apparently that's all channel names can handle before it begins to look stupid.
Made the title boxes smaller to reflect the smaller text length.
Cleaned up the interface a little, including removing the extra button (OOPS!)
Added browse buttons for file and folder paths.
Added a little more noob protection (omitting a "\" when typing a relative path no longer results in an error when packing.)
Added support for LZ77 compression when packing (untested!)




Version 1.0
===========
Initial Release

Usage:
===========
Extracting:

1a. Fill in the path to the file you wish to extract and press the extract button.
1b. Optionally you can also set the output folder, but this is done automatically if you leave that section blank.

2. Your file is now extracted!  Note that the values of the various checkboxes are changed.  These are the types of headers that were in the file and tell
you which settings to use when packing the file back up!

Packing:

1a. Fill in the path to the folder that contains all of your files.  Be sure to end the path with a "\"
1b. Optionally you can set the output file name, but this is done automatically if you leave that section blank.
1c. Depending upon the type of archive you wish to make, you may need to check various header options.  Please note that MOST can't be used together so you
should really only check one, but incase we run across some odd file in the future, I've left the option to check multiple headers.

WARNING!!!  You can brick your wii by putting the wrong header on a 00000000.app! If you are unsure as to which settings to use, simply use the 
"Get settings from Original File" button!!! (For the record, a 0.app uses a IMET header).

1d. If you checked IMET or IMETDVD then you need to fill out the name of the channel in the boxes that appear to the right.  By default, what you type in one
box is cloned to all the others, but unchecking the clone checkbox will allow you to enter different titles for each game.  Note that channel titles cannot
exceed 42 english characters!

2. Click "pack" and your file is now created!

Injecting:

First off understand that the inject mode is a simple work-around to prevent the corruption of tpl images in archives.  This mode should NEVER be used if you
don't need it.  Also understand that this mode only allows you to replace existing files with files of the EXACT SAME SIZE.  If any of your files aren't 
the same size then this mode will error out and exit!!!  Third understand that "special" headers aren't supported for this mode.  U8 "normal" archives and 
imd5 are the only supported archives simply because it is IMPOSSIBLE to work on any of the other archive types without changing file sizes because the files
inside them are compressed with a tool that isn't available to us.  This shouldn't matter anyway as tpls are never found in special archives, but in archives
INSIDE special archives, which don't use special headers.  Also the only options you can set, for obvious reasons are the lz77 compression options.

Keeping all of that in mind:

1.  Extract the archive you wish to inject normally and edit any files you wish to change in the extracted folders.
2.  Select the extracted folder you've been working in as the source folder and the archive you extracted it from as the destination file.
2a. Optionally set the compression mode.
3.  Click "Inject" and your original archive will now contain the files you edited!



Command Line Usage:
======================

u8tool.exe -file "path\to\filename.app" -folder "path\to\folder_out\" [-source "path\to\source\file\"] [-extract] [-pack] [-inject] [-IMD5] [-IMET] [-DVD] [-Lz77] [-Title "Channel Title"] [-jap-dut "Specific Channel Title"]


-file "path\to\filename.app" = Path to the file, this can be the source or destination, depending upon if you are packing or extracting.

-folder "path\to\folder_out\" = Path to the folder, this can be the source or destination, depending upon if you are packing or extracting. Note you need to 
end this one with a "\"

-source path\to\source = sets all header settings based on the header of the file you specify.

-extract = extract the file to the folder
-pack = pack the folder into the file
-inject = inject the files in the folder you specify into the archive you spcify.  NOTE READ INJECT INSTRUCTIONS ABOVE!!
-imd5 = add imd5 header to file
-imet = add imet (0.app) header to file
-sound = pack a sound.bin file.
-dvd = add dvd-specific imet header to file
-lz77 = add lz77 compression to the file
-lz77_nohead = add lz77 compression to the file without the "LZ77" header
-title "Channel Title"= Set ALL channel titles to this title
-jap-dut "Specific Title" = Set only this language (use the language codes found in the gui  "Jap" "Eng" ect..) to this title.
Use this AFTER a global "-title" change to save yourself some typing.



Why you should use this tool instead of the u8tools already out there:
======================================================================
1. It's not part of the wii sdk, so it isn't "illegal" (mind you most we currently use are legal as well)
2. This is the only legal u8tool that properly handles the root folder, meaning to the noobs that you don't have to use u8 coes to pack up 5.apps!  
3. This is the only u8tool that tells you what headers are in a file when it's extracted, allowing you to know exactly how to re-pack it.
4. This is the only legal u8tool that can handle multiple recursive folders, meaning to the noobs that you can properly extract a html.arc!
5. This tool doesn't pollute your headers with "MADE by some l33t guy" tags, which nintendo could potentially (very unlikely)
use to block channel installs in the future.
6. This is the only legal u8tool with command line options.
7. With the help of gbalzss, this is the ONLY u8tool that'll automatically decompress lz77 compressed files, meaning to the noobs that you can extract and
edit banner.bin and icon.bin without the need for generic, pre-decompressed 0.app "templates"!


Notes:
==================
This tool can NOT be used in conjunction with other u8tools out there.  (Why would you?)  This is because most of them ignore the first "root" folder and
this one doesn't, meaning when you re-pack a file extracted with another tool, the root folder is lost!

Lz77 compression is NOT reccomended on the icon.bin or banner.bin atm as our compressor doesn't always work right.



TODO/BUGS/ECT:
=================

I have been getting reports that the lz77 compression might be corrupted.  This part of the tool is external and I didn't write.  The good news is in the
case of vc titles it doesn't matter as there is no need to re-compress files after you have edited them.  


