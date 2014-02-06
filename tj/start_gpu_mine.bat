@ECHO OFF

REM cgminer-3.7.2-windows\cgminer.exe --scrypt -o stratum+tcp://usa-1.liteguardian.com:3335 -u whitey04.7870 -p keroine

REM ERIC Config
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_USE_SYNC_OBJECTS 1
REM cgminer-3.7.2-windows\cgminer.exe --scrypt -o stratum+tcp://usa-1.liteguardian.com:3335 -u whitey04.7870 -p keroine ^
REM   --failover-only -o stratum+tcp://usa-1b.liteguardian.com:3335 -u whitey04.7870 -p keroine ^
REM  --failover-only -o stratum+tcp://hk-1.liteguardian.com:3335 -u whitey04.7870 -p keroine ^
REM  --auto-fan --temp-target=50 -g 1 -w 256 --thread-concurrency 14208 --gpu-engine 990 --gpu-memclock 1420 -I 13
cgminer-3.7.2-windows\cgminer.exe --api-listen --scrypt -o stratum+tcp://usa-1.liteguardian.com:3335 -u whitey04.7870 -p keroine ^
  --failover-only -o stratum+tcp://usa-1b.liteguardian.com:3335 -u whitey04.7870 -p keroine ^
  --failover-only -o stratum+tcp://hk-1.liteguardian.com:3335 -u whitey04.7870 -p keroine ^
  --auto-fan --temp-target=50 --temp-cutoff=75 -g 1 -w 256 --thread-concurrency 20000 -I 13