----------------------------------------------------------------------
# lnk-parse
 Copyright 2006 Jacob Cunningham <jakec76@users.sourceforge.net>
 
 Copyright 2016 Loïc Corbasson <loic.corbasson@gmail.com>

 Distributed under the GNU General Public License v2 or later.

----------------------------------------------------------------------

## About
 `lnk-parse.pl` is a Microsoft Windows .lnk file parser
 written in Perl.
 It is based on the structure of `.lnk` files as documented in
 [_The Windows Shortcut File Format_](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/8bits/The_Windows_Shortcut_File_Format.pdf)
 by Jesse Hager
 with a few exceptions<sup id="a1">[1](#f1)</sup>.

 I have tested this using Perl version 5.8.2 under Linux and Perl 5.8.6
 ActiveState Binary Build 811 on Windows 2000 with LNK files from
 Windows 2000/XP/2003.


## Usage
 `lnk-parse.pl <filename.lnk>`

----------------------------------------------------------------------
#### Footnotes
<sup id="f1">[1](#a1)</sup>
Exceptions:
 The output of this script was tested against the output of commercial
 software to verify accuracy. During my rigerous testing I discovered
 the following corrections need to be made to the
 _The Windows Shortcut File Format_ document, version 1.0:
 1. The Last Access Time is actually at header location `0x24` and the
    Modification Time is actually at header offset `0x2C`;
 2. The offset `0xC` in the Network Volume Table contains a long integer
    with the offset of the Mapped Network Drive letter if present,
    otherwise it is set to zero.
[↩](#a1)

