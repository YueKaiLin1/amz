@echo off
setlocal
set GIT_BASH=C:\Program Files\Git\git-bash.exe

if exist "%GIT_BASH%" (
    start "" "%GIT_BASH%" -c "cd /d %cd% && git init && git status && git add -A && git commit -m 'kt' && git push -u origin master && exec bash"
) else (
    echo Git Bash not found at "%GIT_BASH%"
)
endlocal