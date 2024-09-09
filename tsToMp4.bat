@echo off
setlocal enabledelayedexpansion
set INPUT_DIR=./videoInput
set OUTPUT_DIR=./videoOutput

if not exist %INPUT_DIR% mkdir %INPUT_DIR%
if not exist %OUTPUT_DIR% mkdir %OUTPUT_DIR%

@echo on    
for %%f in (%INPUT_DIR%/*.*) do (
    set "INPUT_FILE=%INPUT_DIR%/%%f"
    set "OUTPUT_FILE=%OUTPUT_DIR%/%%~nf.mp4"
    bin\ffmpeg.exe -i "!INPUT_FILE!" "!OUTPUT_FILE!"
)