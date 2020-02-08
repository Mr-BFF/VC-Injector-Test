VCInfo:  virtual console Save Icon Injector by HowardC
===============================================




Liscense:
=========
This application is free for personal use. This application may be distributed publically so long as it's free, the original docs are included, and
credit is given to "HowardC", the author.  This application may also be packed with other tools, so long as the liscense agreement is still upheld.

This tool REQUIRES the forms 2.0 library included with any version of Office.  If you don't have office installed, click on the shortcut in this folder,
save the zip to this folder, and extract the dll to this folder.  Forms 2.0 is property of microsoft and CANNOT be redistributed with any application.

Version 5.0
===========
Updated the forms 2.0 shortcut to a better one.
Fixed a bug with the text injection on nes games.
In an attept to remove the automation error, the form no longer loads neogeo settings upon startup.

Version 4.0
===========
Added Unicode support! (For Japanese text.)
Added Shift_JIS support! (For Japanese text on the snes)
Added Reversed Unicode Support! (For Japanese N64 titles).
Fixed a recently introduced bug in the neogeo injection.
Fixed a bug in the Command Line function.

Version 3.0
===========
Fixed broken nes injection.
Fixed broken command line support.  (There have been changes, see below)
Removed base files folder and all but one template as they are no longer needed.

Version 2.0
============
Added Title Support for all Sega Consoles (Must extract ccfs first)
Added Title Support for N64 (Must extract 00000005.app first)
Added Title Support for the Tg-16 (Must extract 00000005.app first)
Added Title Support for the Snes (00000005.app must be present!)
Added Title Support for the C-64

Because Sega Consoles and N64 Consoles have save title entries for each country, added regional titles.

Modifed the way the neogeo injection works.  It now uses the proper banner.tpl created by my icon generator instead of merging two together.


Version 1.1
============
Fixed Path bug.

Version 1.0
===========
Initial Release

Description:
=============
This tool is used for neogeo and nes vc titles to properly inject the tpl into the 00000001.app and set the title. It can also be used on the other consoles
to set the title (Other consoles don't use special tpls and thus you can simply copy them into the extracted folder.)

Usage:
===========
First you need to make your tpl(s). (NeoGeo and Nes Only)  Use the tpls in the "base files" folder and do NOT make your own from scratch (filesize is important, especially for the
neogeo.)  For the neogeo save icons, you have more frames and thus you have to edit both files, not just the first.(If Using split mode only)  Aftr that, it's time to run the program.
Simply start the program, select the console you wish to inject a icon for, set the path to the file to inject enter the information, set the tpl(s) path 
and click "Inject"! Your file will be edited!
Don't forget to repack your wad!

Command Line Usage:
======================


*WARNING!!!!!  Command-Line Support is currently broken!

vc_save_inject.exe -c console -n name -src srcpath -dst dstpath [-title name] [-RE name]




-c console = The console you want to make a info file for.  Valid flags are: NeoGeo, NES, SNES, N64, GEN, SMS, SMD, TG16, C64, and MSX

Note that you ALWAYS want to put the console flag first in a command line string as it also sets the default paths.  

-n name = Name of the game (should be in quotes) The name will be shortened if it is too long.  Adding a "^" adds a line-break.

-src srcpath = The path to the tpl(s) you wish to inject 
(Note that neogeo and sega consoles use special tpls that can ONLY be generated via my icon generator)

-dst The output file/folder (and path) for the info file you wish to inject...

-title = Works the same as name, in the case of consoles with multiple titles, this sets ALL titles to the given name.

-RE name = Instead of "RE" use the two letter region code found in the apps window.  This sets the name for the region you give.

FAQ:
=======================
Q:  Why do I need this?  

A:  Neogeo and Nes save incon images are embedded inside files that can't be edited by the average user using standard tools.  
    N64 and Snes save names are also in non-editable formats.  Also every title name is stored in a completely different file with a different format.
    This app just makes things a little simplier. 

Q:  How do I get inside .app files?  

A:  Use my u8 tool and ONLY my u8tool (the others have problems.)

Q:  How do I get inside .ccf files for the sega consoles?/ Where are the sega console's banner files?

A:  All sega consoles store their important bits inside data.ccf, with the banner data in misc.ccf which is inside data.ccf.  
    Long story short, use my ccf tool to extract both files.

Q:  Where do I copy the save icon banner for a sega console? / WTF are wte files?
    Wte files are regular tpl files with a special header.  My icon generator automatically adds this header.  
    Sega consoles have the save icon split into 7 individual wte files.  Long story short, use my icon generator and don't worry about it.

Q:  Ok, if the sega console files are so special, when why don't you support tpl input for those consoles and convert them to wte?

A:  Because I don't have to.  I add the neogeo header with this injector because the header for the file also contains the save name, so it makes sense to do
    it here.  Wte files just use a generic header, so I can do that on the generator instead.

Q:  I'm confused, this is complicated, ect.....

A:  Yup! but it still beats hex editing!  Honestly though this app is mainly made so turn key solutions can call it via command-line and so power users can 
    play with new ideas  if you are a noob, you should NOT be using this app directly!
	

Notes:
==================

For Consoles in which there AREN'T multiple text entries for each region, this app puts the singular entry in the english box regrdless of region.  
This isn't a bug or error, it just makes things simplier to understand for the user.  

Some Consoles allow you to edit both lines of the save text, others don't. The "practical" limit for the first line is 20 as anything longer is turncated 
on the mouse-over.  This app sets a very reasonable limit of 32 characters per line.  If you make a line longer than 32 characters, 
everything else is automatically moved to the next line.  

For nes games you want to inject your tpl into the 00000001.app file.  For neogeo games it's the banner.bin in 00000005.app.

While the source path is always a tpl or group of tpls (or wtes), the destination path can be anything from the path to an extracted app, an actual app file,
a specialized tpl file or anything in-between.  What you point to depends upon the console type.  

If you don't want to fool with paths, you can always copy the file you want to inject images into to the same folder as this app... when you select a console
the correct filename is automatically entered.  




TODO/BUGS/ECT:
=================

Better Error Handling.
