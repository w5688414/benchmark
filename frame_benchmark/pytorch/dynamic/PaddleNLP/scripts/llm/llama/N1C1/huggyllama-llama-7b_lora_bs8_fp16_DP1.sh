model_item="huggyllama-llama-7b_lora"  
base_batch_size=8    
fp_item="fp16"    
run_mode="DP1"    
device_num="N1C1"
model_name_or_path="huggyllama/llama-7b"
lora="false"
max_length=2048
dataset_name_or_path="llm_benchmark_en"
learning_rate="3e-05"
gradient_checkpointing="true"

cd ./tests
bash prepare.sh
CUDA_VISIBLE_DEVICES=0 bash run_benchmark.sh ${model_item} ${base_batch_size} ${fp_item} ${run_mode} ${device_num} ${model_name_or_path} ${lora} ${max_length} ${dataset_name_or_path} ${learning_rate} ${gradient_checkpointing} 2>&1;