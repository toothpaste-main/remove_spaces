@echo off

rem  Whitespace Cleaner

rem  Remove spaces in a txt file and write to a new file.

rem  Parameters (order matters!):
rem  [-i] [inputFile] [-o] [outputFile] [-d] [delim]

rem  [-i] [inputFile]	name of file to be changed (default "input_file.txt")
rem  [-o] [outputFile]	name of file to save changes to (default "output_file.txt")
rem  [-d] [delim]	character to be removed (" " by default)

rem  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

setlocal disableDelayedExpansion

rem initialize variables
set "inputFile=input_file.txt"
set "outputFile=output_file.txt"
set "delim= "

rem assign input file
if "%~1"=="-i" (set "inputFile=%~2" & shift & shift)

rem assign output file
if "%~1"=="-o" (set "outputFile=%~2" & shift & shift)

rem assign character to be removed 
if "%~1"=="-d" (set "delim=%~2" & shift & shift)

rem  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

setlocal enabledelayedexpansion

for /F "tokens=*" %%A in (%inputFile%) do (
  set line=%%A
  echo(!line:%delim%=!>>%outputFile%
)
