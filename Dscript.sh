cd $HOME/myexpos/expl
./expl samples/idle.expl
./expl samples/shell.expl
./expl samples/even.expl
./expl samples/odd.expl
./expl samples/new.expl
./expl samples/ls.expl
./expl samples/cat.expl
./expl samples/cp.expl
./expl samples/rm.expl
./expl samples/lu.expl
./expl samples/login.expl
./expl samples/ru.expl
cd $HOME/myexpos/spl
echo "------------Startup Code"
./spl spl_progs/startup.spl
echo "------------Compiling Exception Handler"
./spl spl_progs/exhandler.spl
echo "------------Compiling Hardware Interrupts"
echo "Console"
./spl spl_progs/console.spl
echo "Timer"
./spl spl_progs/timer.spl
echo "Disk"
./spl spl_progs/disk.spl
echo "------------------------Compiling Modules"
echo "Resource Manager"
./spl spl_progs/mod0resourcemanager.spl
echo "Process Manager"
./spl spl_progs/mod1processmanager.spl
echo "Memory Manager"
./spl spl_progs/mod2memorymanager.spl
echo "File Manager"
./spl spl_progs/mod3filemanager.spl
echo "Device Manager"
./spl spl_progs/mod4devicemanager.spl
echo "Scheduler"
./spl spl_progs/mod5scheduler.spl
echo "Pager Module"
./spl spl_progs/mod6pager.spl
echo "Boot Module"
./spl spl_progs/mod7boot.spl
echo "------------Compiling Software Interrupts"
echo "INT 4"
./spl spl_progs/int4.spl
echo "INT 5"
./spl spl_progs/int5.spl
echo "INT 6"
./spl spl_progs/int6.spl
echo "INT 7"
./spl spl_progs/int7.spl
echo "INT 8"
./spl spl_progs/int8.spl
echo "INT 9"
./spl spl_progs/int9.spl
echo "INT 10"
./spl spl_progs/int10.spl
echo "INT 11"
./spl spl_progs/int11.spl
echo "INT 12"
./spl spl_progs/int12.spl
echo "INT 13"
./spl spl_progs/int13.spl
echo "INT 14"
./spl spl_progs/int14.spl
echo "INT 15"
./spl spl_progs/int15.spl
echo "INT 16"
./spl spl_progs/int16.spl
echo "INT 17"
./spl spl_progs/int17.spl
cd $HOME/myexpos/xfs-interface
./xfs-interface << EOF
fdisk
load --idle ../expl/samples/idle.xsm
load --exhandler ../spl/spl_progs/exhandler.xsm
load --int=timer ../spl/spl_progs/timer.xsm
load --int=disk ../spl/spl_progs/disk.xsm
load --int=console ../spl/spl_progs/console.xsm
load --int=4 ../spl/spl_progs/int4.xsm
load --int=5 ../spl/spl_progs/int5.xsm
load --int=6 ../spl/spl_progs/int6.xsm
load --int=7 ../spl/spl_progs/int7.xsm
load --int=8 ../spl/spl_progs/int8.xsm
load --int=9 ../spl/spl_progs/int9.xsm
load --int=10 ../spl/spl_progs/int10.xsm
load --int=11 ../spl/spl_progs/int11.xsm
load --int=12 ../spl/spl_progs/int12.xsm
load --int=13 ../spl/spl_progs/int13.xsm
load --int=14 ../spl/spl_progs/int14.xsm
load --int=15 ../spl/spl_progs/int15.xsm
load --int=16 ../spl/spl_progs/int16.xsm
load --int=17 ../spl/spl_progs/int17.xsm
load --module 0 ../spl/spl_progs/mod0resourcemanager.xsm
load --module 1 ../spl/spl_progs/mod1processmanager.xsm
load --module 2 ../spl/spl_progs/mod2memorymanager.xsm
load --module 3 ../spl/spl_progs/mod3filemanager.xsm
load --module 4 ../spl/spl_progs/mod4devicemanager.xsm
load --module 5 ../spl/spl_progs/mod5scheduler.xsm
load --module 6 ../spl/spl_progs/mod6pager.xsm
load --module 7 ../spl/spl_progs/mod7boot.xsm
load --library ../expl/library.lib
load --os ../spl/spl_progs/startup.xsm
load --init ../expl/samples/login.xsm
load --shell ../expl/samples/shell.xsm
load --exec ../expl/samples/odd.xsm
load --exec ../expl/samples/even.xsm
load --exec ../expl/samples/ls.xsm
load --exec ../expl/samples/cat.xsm
load --exec ../expl/samples/cp.xsm
load --exec ../expl/samples/rm.xsm
load --exec ../expl/samples/lu.xsm
load --exec ../expl/samples/ru.xsm
load --exec ../expl/samples/new.xsm
load --data numbers.dat
exit
EOF

