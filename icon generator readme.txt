VC Icon Generator by HowardC
==================================

Liscense:
=========
This application is free for personal use. This application may be distributed publically so long as it's free, the original docs are included, and
credit is given to "HowardC", the author.  This application may also be packed with other tools, so long as the liscense agreement is still upheld.

This tool uses the tpl_converter created by "Broly7". For usage and credit regarding tpl_converter refer to it's author.

Version History
=================

Version 8.0
=================
Added remaining Images, App is now essentially complete.
Added all the recently added images to the command-line parser.
Cleaned up the interface a lot.
Added Support for User-Created Alternate templates (Save images to the "Alt Save Icons" folder.)
Removed "Original Save Icons" folder as they aren't needed for this app and can be distributed seperately. 


Version 7.0
=================
Added proper famicom support!
Added Mega Drive Japan support!
Went ahead and added slots for remaining entries.

Version 6.1
=================
Added MSX Support!

Version 6.0
=================
Make Preview no longer crashes if you try to run it sans a image.
The script files to generate the save icons were improperly set, so I changed those.  Palette issues should now be resolved. 
Sega consoles should now output the proper names for wte files (but these seem to change so always check your wad!) 
Sega Consoles now use auto-detection to figure out the wte names (If your output dir is the dir containing the orignal files)
Added Super Famicom Support
Added Famicom Support (No template images yet unfortunately)

Version 5.0
=================
Added support for all english language consoles!  
Added browse buttons for ease of use.
Added a "Make Preview" button to generate Icons without saving them.
Added WTE output support for sega consoles.  
Removed the initial "test.bmp" source file, since browse buttons are now added.

Version 4.0
=================
Added tpl converter integration... this app now outputs finished tpls (even the non-standard neogeo one!)
Useage is now slightly different as this app outputs tpls and not bitmaps.  
Fixed an error in which the channel icon checkbox made a banner image and vice versa.
Renamed the checkboxes so that hopefully things are less confusing (icons are tiny images, while images are large ones).  

Version 3.0
============
Added support for png images.
Added a save icon animation preview. (For those adventurous types who are going to make a completely custom template set.)
Added the ability to generate channel (also known as icon for some reason) and banner images.
Added new "makecode" command line switch, which will let you turn on/off the creation of the various images.
Added better documentation of the command line switches. 



Version 2.0
=================
Added Proper neogeo support (9 images, not 5)
Added NeoGeo templates and original icons.

Version 1.0
==========
Initial release


Description
================
Using original bitmaps, ripped from original tpl files as a base, this app takes an image and inserts it into these base images,
eliminating the need to edit them in photoshop or a similar app, and finally makes them into tpls.  It also properly converts standard images into tpls.

Instructions
================
It couldn't be simpler... type the path to the screenshot (or whatever) in the source box, select the console, and click make!
Optionally you can type the destination path in as well, but keep in mind that we are making up to 3 tpls, not one, so you should NOT
put an extension at the end.  (To make banner.tpl, iconvcpic.tpl and vcpic.tpl in the "d:\icons" folder, you would set the path to "d:\icons\"

Don't forget to move images to their folders for repacking and/or inject the save images.



Command line Options
=======================
usage:  vcigen.exe -sys system -s "srcfile" [-d "destfile base" -m makecode]

-sys system= the console you wish to make images for valid choices are neogeo, nes, snes, smd, gen, tg16, sms, c64, fc, sfc, msx, mdj, and pce.

-s "srcfile" = the path to the image (generally a snapshot) you wish to use to make the various images.

-d "destfile base" = the path and "base name" to where the images will be outputted.  NO EXTENSION please!  (use d:\snap\neogeo NOT d:\snap\neogeo.bmp!)
If omitted, the source image's path and base name will be used.

-m makecode = a code that determines which images will be made.  Add an "s" to include save icon generation, "c" for channel image and "b" for banner image.
Simply "build" a code by tacking the letters together.  "-m sc" for example, would make the save images and channel image, but not the banner image. If 
omitted, all three types will be made. 

-alt = Uses the alternate save images found in "alt save icons" folder (if applicable) 

Notes:
=====

For simplicity's sake, only one source image can be used at a time.  This is because official images are all based on the same snapshot.  If you prefer to 
use different images, simply run the app three times, using a different path each time, with the appropriate checkboxes checked for each time.  Also it might
be to your benefit to run it three times anyway as you can overwrite a wads existing tpls by setting the correct path for each image to be generated.

The original, unedited icons are also included in case something would go wrong.  The base icons have been edited to include a picture of the console.
If you'd rather use generic icons, simply use those.

Commadore 64, NES, Famicom and Neogeo save icons have to be specially injected/built and thus require my save icon INJECTOR to actually put them in a wad.  

TODO/BUGS/ECT:
==============
The Sega save icons use this fancy blurr effect to transition from the logo to the snapshot.  I can't really replicate this (easily) within code, so for now 
they are generated with the standard fade effect.  