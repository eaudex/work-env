#/bin/bash
set -e
source envrc

epoch_start=`get_epoch`
echo "Start @$epoch_start"
#########################

echo "$TODAY"
echo "$NOW"
echo "$RUN_MODE"
sleep 1s
echo 'Done'

#########################
epoch_end=`get_epoch`
echo "End @$epoch_end"
