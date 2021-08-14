set a=0

setlocal EnableDelayedExpansion

for /f "delims=" %%f in ('dir /a /b *.*') do (
    if not "%%~nxf"=="%~nx0" (
        set /A a+=1
        ren "%%f" "!a!%%~xf"
    )
)
pause
