#!/bin/sh


source /home/layer/.profile

cd /home/layer

/bin/boinc --dir /home/layer &
PID=$!
sleep 3
/bin/boinccmd --join_acct_mgr ${BAM} ${BAM_USER} ${BAM_KEY}
/bin/boinccmd --set_run_mode always
/bin/boinccmd --set_network_mode always
/bin/boinccmd --set_gpu_mode always


wait $PID
