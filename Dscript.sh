cd $HOME/myexpos/xfs-interface
./xfs-interface << EOF
load --os ../spl/spl_progs/startup.xsm
load --init ../expl/samples/init.xsm
load --module 7 ../spl/spl_progs/mod7boot.xsm
exit
EOF

