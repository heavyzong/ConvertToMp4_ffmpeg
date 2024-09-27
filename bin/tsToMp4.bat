set INPUT_FILE=%1
set OUTPUT_FILE=%INPUT_FILE%.mp4

@rem -i input.ts specifies the input file.
@rem -c copy tells ffmpeg to copy the input streams as is (i.e., no re-encoding is done).
@rem -bsf:a aac_adtstoasc is a bitstream filter that is needed to convert the AAC audio format from the Transport Stream format to the MP4 format.
@rem output.mp4 specifies the output file.

@rem ffmpeg.exe -i %INPUT_FILE% -c copy -bsf:a aac_adtstoasc %OUTPUT_FILE%
ffmpeg.exe -i %INPUT_FILE% -c copy %OUTPUT_FILE%