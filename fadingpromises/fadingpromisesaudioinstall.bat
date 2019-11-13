@echo off
IF NOT EXIST "override\baidan01.wav" goto install
goto end

:install

"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan01.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan02.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan03.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan04.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan05.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan06.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan07.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan08.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan09.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan10.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan11.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan12.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan13.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan14.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan15.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan16.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan17.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan18.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan19.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan20.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan21.ogg"
"fadingpromises\oggdec.exe" "fadingpromises\audio\baidan22.ogg"

move "fadingpromises\audio\*.wav" "override" > nul

:end
::::