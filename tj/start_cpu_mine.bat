@ECHO OFF

@REM minerd.exe and pskill.exe must be on path; ensure they are at least for TJ ;-)
SET PATH=%PATH%;%CD%\..\..\pooler-cpuminer-2.3.2-win64;c:\pstools;

CHOICE /C SQ /T 90 /D s /N /M "Starting CPU mine in 90s. [S]tart or [Q]uit?"
SET USER_CHOICE=%ERRORLEVEL%

@REM If user chose "Start" or timed out; run miner now!
IF %USER_CHOICE%==1 (
  @REM Kill any CPU miners already running
  pskill.exe minerd.exe

  @REM START run *without* /B for compatability with scheduled tasks
  @REM START /LOW puts process at low priority; so using all CPU cores is OK
  start /LOW minerd.exe ^
  -o stratum+tcp://usa-1.liteguardian.com:3335 ^
  -u whitey04.HomeCPU ^
  -p keroine
)

