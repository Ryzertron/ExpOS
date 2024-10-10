cd $HOME/myexpos/expl
./expl samples/idle.expl
./expl samples/shell.expl
./expl samples/even.expl
./expl samples/odd.expl
cd $HOME/myexpos/spl
./spl spl_progs/startup.spl
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
echo "Device Manager"
./spl spl_progs/mod4devicemanager.spl
echo "Scheduler"
./spl spl_progs/mod5scheduler.spl
echo "Boot Module"
./spl spl_progs/mod7boot.spl
echo "------------Compiling Software Interrupts"
echo "INT 6"
./spl spl_progs/int6.spl
echo "INT 7"
./spl spl_progs/int7.spl
echo "INT 9"
./spl spl_progs/int9.spl
echo "INT 10"
./spl spl_progs/int10.spl
cd $HOME/myexpos/xfs-interface
./xfs-interface << EOF
fdisk
load --idle ../expl/samples/idle.xsm
load --int=timer ../spl/spl_progs/timer.xsm
load --int=disk ../spl/spl_progs/disk.xsm
load --int=console ../spl/spl_progs/console.xsm
load --int=6 ../spl/spl_progs/int6.xsm
load --int=7 ../spl/spl_progs/int7.xsm
load --int=9 ../spl/spl_progs/int9.xsm
load --int=10 ../spl/spl_progs/int10.xsm
load --module 0 ../spl/spl_progs/mod0resourcemanager.xsm
load --module 1 ../spl/spl_progs/mod1processmanager.xsm
load --module 2 ../spl/spl_progs/mod2memorymanager.xsm
load --module 4 ../spl/spl_progs/mod4devicemanager.xsm
load --module 5 ../spl/spl_progs/mod5scheduler.xsm
load --module 7 ../spl/spl_progs/mod7boot.xsm
load --library ../expl/library.lib
load --os ../spl/spl_progs/startup.xsm
load --init ../expl/samples/shell.xsm
load --exec ../expl/samples/odd.xsm
load --exec ../expl/samples/even.xsm
exit
EOF

