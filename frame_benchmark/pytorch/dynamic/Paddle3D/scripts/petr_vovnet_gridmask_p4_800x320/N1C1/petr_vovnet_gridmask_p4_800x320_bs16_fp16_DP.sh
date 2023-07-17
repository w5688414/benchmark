model_item=petr_vovnet_gridmask_p4_800x320
bs_item=16
fp_item=fp16
run_process_type=SingleP
run_mode=DP
device_num=N1C1
num_workers=24

sed -i '/set\ -xe/d' run_benchmark.sh
bash PrepareEnv.sh ${model_item};
bash run_benchmark.sh ${model_item} ${bs_item} ${fp_item} ${run_mode} ${device_num} ${num_workers} 2>&1;