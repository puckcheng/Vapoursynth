@ECHO OFF

cd "/d %~dp0"

"C:\Program Files (x86)\VapourSynth\core64\vspipe.exe" --y4m "%~f1"  - | "C:\Program Files (x86)\MeGUI_2715_x86\tools\x265\x64\x265.exe" --y4m --preset slow --frame-threads 8 --crf 18 --deblock -1:-1 -D 10 --merange 44 --aq-strength 0.8 --qcomp 0.65 --output "D:\Media\TEMP\temp.hevc" -

pause