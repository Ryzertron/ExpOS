cd $HOME/myexpos/xfs-interface
./xfs-interface << EOF
load --os ../spl/spl_progs/startup.xsm
load --init ../expl/samples/init.xsm
load --idle ../expl/samples/idle.xsm
load --int=timer ../spl/spl_progs/timer.xsm
load --library ../expl/library.lib
exit
EOF

