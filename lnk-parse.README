#----------------------------------------------------------------------\
 lnk-parse-1.0.pl  
 Copyright 2006 Jacob Cunningham 
 jakec76@users.sourceforge.net

 Distributed under the GNU Public License

#----------------------------------------------------------------------\

 About
 ------
 "lnk-parse-1.0.pl" is a MS Windows .lnk file parser
 written in Perl. 
 It is based on the structure of .lnk files as documented in
 http://www.i2s-lab.com/Papers/The_Windows_Shortcut_File_Format.pdf 
 with a few exceptions.**

 I have tested this using Perl version 5.8.2 under Linux and Perl 5.8.6 
 ActiveState Binary Build 811 on Windows2000 with LNK files from 
 Windows 2000/XP/2k3.



 Usage:
 ------- 
 lnk-parse-1.0.pl <filename.lnk>



** exceptions:
--------------

 The output of this script was tested against the output of commercial 
 software to verify accuracy. During my rigerous testing I discovered
 the following corrections need to be made to the  
 The_Windows_Shortcut_File_Format.pdf document.

 1) The Last Access time is actually at header location 0x24 and the 
    Modification Time is actually at header offset 0x2C

 2) The offset 0xC in the Network Volume Table contains a long integer
    with the offset of the Mapped Network Drive letter if present,
    otherwise it is set to zero.

