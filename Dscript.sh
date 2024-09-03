cd $HOME/myexpos/expl
./expl samples/idle.expl
./expl samples/init.expl
./expl samples/even.expl
cd $HOME/myexpos/spl
./spl spl_progs/int10.spl
./spl spl_progs/mod5scheduler.spl
./spl spl_progs/int7.spl
./spl spl_progs/startup.spl
./spl spl_progs/mod7boot.spl
./spl spl_progs/timer.spl
cd $HOME/myexpos/xfs-interface
./xfs-interface << EOF
load --idle ../expl/samples/idle.xsm
load --int=timer ../spl/spl_progs/timer.xsm
load --int=7 ../spl/spl_progs/int7.xsm
load --int=10 ../spl/spl_progs/int10.xsm
load --module 5 ../spl/spl_progs/mod5scheduler.xsm
load --module 7 ../spl/spl_progs/mod7boot.xsm
load --library ../expl/library.lib
rm even.xsm
load --exec ../expl/samples/even.xsm
load --os ../spl/spl_progs/startup.xsm
load --init ../expl/samples/init.xsm
exit
EOF

