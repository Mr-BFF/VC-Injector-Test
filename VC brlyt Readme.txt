VCBrlyt:  virtual console brlyt Editor  by HowardC
===============================================



Disclaimer:
===========
This application uses files from various VC wads.  Unless you own a VC title for the console you are patching, you are illegally stealing data from the 
copyright holders.  I will not be held responsible for ay illegal acts that invole this application.


Liscense:
=========
This application is free for personal use. This application may be distributed publically so long as it's free, the original docs are included, and
credit is given to "HowardC", the author.  This application may also be packed with other tools, so long as the liscense agreement is still upheld.

This tool REQUIRES the forms 2.0 library included with any version of Office.  If you don't have office installed, click on the shortcut in this folder,
save the zip to this folder, and run the application.  Forms 2.0 is property of microsoft and CANNOT be redistributed with any application.

Version 9.0
===========
Changed the shortcut to install forms 2.0 to reflect a better installer.
Fixed (hopefully) a bug in the logo swap.
Changed default value of padding to a value known to work.


Version 8.0
===========
Added Unicode Support!  (For Japanese text.)
Fixed Japanese region in the main window so that it reads and writes the year and number of players properly.  
Fixed a minor bug that kept the main window's text from refreshing after it had been edited in the hardcore editor.
Adusted the color preview to accept player entires with multiple lines (for japanese text).
cleaned up the edges of the color preview to make things look nicer. 
Added Neogeo MVS color template (because in the future it should be possible to use unibios to put the neogeo emulator into mvs mode).

Changed the way the editor crops the year and player entries... now even if a non-regioned banner is used (like mega drive japan) the editor can get
the date/num player portion of the text.

Added Language auto-detection, which is used for banners that are non-regioned (like mega drive japan).  This allows the editor to properly WRITE 
non-regioned banners.

Added Experimental region force option to the editor.  If a game's brlyt only has a japanese entry, or lacks an entry that you want to use, region force will
change the first present region in the file to the region you specify.

Added Experimental padding option to editor.  According to recent discoveries, extra padding might fix corrupted banners.  Atm only 64 bytes are added by default, 
but if we determine that the amount of padding needs to be different it will be fixed accordingly.




Version 7.1
===========
Misc Bugfixes.

Version 7.0
===========
Fixed a bug in the logo swap... should work now.

Version 6.0
===========
Freezing Bugs are Now fixed.  App generates 100% compliant brlyts now.
Added Color Templates for all systems.

Version 5.1
============
All entries are now loaded and then re-saved when saving a brlyt, which should ensure the end result is a multiple of 8 and thus should eliminate the 
freezing.


Version 5.0
===========
Fixed a bug causing the app to freak out if a English entry isn't found.
Now upon loading a file, the editor looks for the first region with an entry, instead of defaulting to english.
Now upon loading the color scheme of a brlyt, the editor uses the color of the region currently selected in the main window instead of defaulting to english.
Partial Japan banner support.  (still no full-fledged asian language support, but you can sort of view the text and change the color scheme)
Added Super Famicom color scheme.
 

Version 4.1
===========
Fixed a bug that would cause a brlyt's colors to get corrupted upon replacement.
Fixed a minor gui bug.  

Version 4.0
===========
Complete Re-write yet again, now entries of any size are supported!
Application has been renamed VC brlyt Editor due to expanded functionality.
Added color scheme editor as well as the ability to swap color schemes.
Added "Hardcore" manual text editor, the allows you to edit any text entry in a brlyt, even ones that aren't normally supported by this app!  
Added the ability to swap out logos in a banner (simple copy/replace).  
Added the ability to change the System name.  
Added the ability to change the ESRB Rating (only appears in newer vc titles).
Added support to set individual regions instead of setting them all to the same value.
Also all the dodgy replace string functions are gone, so the chance of ruining a brlyt file due to error is next to none!
User Interface has changed significantly as well as command-line options.  PLEASE READ THIS FILE AGAIN!!!!



Version 3.0
===========
Complete Re-Write, now the template files are no longer needed!
Removed console selection is this is no longer relevant.
Added path text box so the path to the brlyt can be selected. (was always available via command line)
Note:  The re-write means usage is sligtly different... please consult this readme.


Version 2.0
===========
Spaces are no Longer used to buffer names, so centering should now work.
Added Multi-Line support.  Put a "^" symbol in your strings for a line break.
Added Null-Space Support.  Use a "_" symbol to null out a character.  (Useful for odd default names.)


Version 1.0
===========
Initial Release

Usage:
===========
Simply start the program and type the path to the brlyt file.  The values of the english texts are automatically loaded after you type in the path if present.
To view a text for a specific region, simply select the region from the drop-down box directly to the right of the text box.  To set a new value for a region,
first select the region, then edit the text displayed in the box and click "Set".  If you want to set ALL regions to this value simply use the "set all" 
button instead.  Please note that once you are done changing all the info you need to click the "Save Changes" button to actually save it!  Also note that
there is only one entry for the system, thus the lack of a drop-down box. 

You can change the color scheme and logo via the drop-down boxes. Use the color editor button to get a rough preview of the new banner and/or create a custom
color scheme.  Use the hardcore text editor to if you have a foreign or new banner, which contains text entries not shown on the main window.  

Don't forget to repack your files!

Command Line Usage:
======================

vcinfo.exe output [-Title title] [-YEAR year] [-Play players] [-System system] [-Color schemefile]  [-T_REG name] [-Y_REG year] [-H_ENTRY text] [-Force REG]
[-pad amount]

output = The output file (and path) for the info file you wish to edit... if ommitted, defaults to the last brlyt path you entered.

-Title title = Name of the game (should be in quotes) The name will be shortened if it is too long.  Adding a "^" adds a line-break. 
          This sets ALL regions to this text!

-Year year = The release year.  This sets ALL regions to this value!

-Play players= The number of players.  NOTE:  Do NOT use dashes!  To set a player number to "1-4" simply type "4" and the "1-" will be added.
            This sets ALL regions to this value!

-System system = Change the system (console) name.

-Color schemefile = Change the color scheme preset (you make presets un the color editor gui and via command line, you call the name of one in the list)

-Logo  logo.tpl = Path to tpl you wish to use for the logo in the banner.

-H_ENTRY text = Manual text change, where "ENTRY" is the entry name of the text found in the brlyt and "text" = the new text value.  FOR ADVANCED USERS ONLY!

-T_REG name = Name of the game for a specific region. (Replace the "REG" with the region code.)
-Y_REG year = The release year for a specific region.  (Replace the "REG" with the region code.)

-Force REG = If region code specified is not present, the first valid region found in the file will be changed to the region specified. If NONE is selected 
or the brlyt is region free (only mega drive japan seems to do this) then the new region will NOT be forced.

-Pad amount = The amount of padding you wish to add to the end of the file in bytes.  Putting a "+" before the number will add a fixed number of bytes 
while just putting a number will set the size of the file to the amount you specify.  Padding a file will prevent images from getting corrupted.




Notes:
==================
If you want to set a specific region and don't want to bother setting all the others, you can first set the others with the "all"  version of the switch
and then set the region with the different value with the specific region switch.  To do it this way you MUST set the "all" switch first!

There is no confirmation when you press the "set" or "set all" buttons (I figured it'd get annoying.) so be sure to set the values as you change them.  
Also be sure to click the "save changes" button or all of your work will be lost!

Editing a scheme in the Color Editor does NOT change the scheme in the brlyt you are editing.  The two work independantly of each other.  
To use custom colors on a brlyt, either select a preset in the main window and save the brlyt, or use the color editor to make a custom scheme, save it to a 
preset, and select this new preset when back in the main window.  

Setting the text in the hardcore editor does NOT save the changes, it merely edits the file currently in memory (like all changes do in the editor).  You
need to save the changes in the main window after you are done.  

TO DO/Bugs/ECT
================
Better error handling.
A more robust banner preview.
Add support for changing the position and dimensions of an element in the editor (I'll probably never do this.)


