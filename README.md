# Functions
## The Goal is to
### Reduce mistakes
### Reduce brain colories expensses
# Install
```
winget install -e --id 7zip.7zip
curl --ssl-no-revoke -L https://github.com/Meir-E/Functions/archive/refs/tags/tag0.01.zip > myfile.zip
"%PROGRAMFILES%\7-Zip\7z" e myfile.zip -o"%USERPROFILE%\Documents\GitHub\Functions"
del myfile.zip
```
Basic writing and formatting syntax | https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax

Run ver/1
```
@SET ME=IR & TITLE Mei-R:MAN &SET BATman=%USERPROFILE%\Documents\GitHub\Functions\BATman
```
Run ver/2
```
@SET ME=IR & TITLE Mei-R:MAN & %USERPROFILE%\Documents\GitHub\Functions\BATman
```
# Install - option 2 - Only update BATman.bat
```
cd "%USERPROFILE%\Documents\GitHub\Functions"
curl --ssl-no-revoke -L https://raw.githubusercontent.com/Meir-Tools/Functions/main/BATman.bat > BATman.bat
```
## check and errors
..\Functions\BATman -> Not Installed
```
if exist %BATman%.* ( echo %BATman% -^> Installed ) else ( echo %BATman% -^> Not Installed & PAUSE)
```
