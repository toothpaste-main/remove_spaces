@echo off

rem  Remove spaces in a txt file and write to a new file.
rem  Make the the following changes and run this batch file in the directory of your file:
rem  1) Change "input_file.txt" on line 13 to the file you wish to alter
rem  2) Change the space in "line: =!" on line 15 to what ever character you want to remove
rem  3) Change "output_file.txt" on line 15 to the name of a new file to save to

rem  TODO change these to parameters

   setlocal enabledelayedexpansion

   for /F "tokens=*" %%A in (input_file.txt) do (
  set line=%%A
echo(!line: =!>>output_file.txt
 )