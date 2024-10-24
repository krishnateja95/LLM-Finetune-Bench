module use /soft/modulefiles/
module load conda

conda activate LLaMA_Finetune_bench


export HF_HOME='/lus/grand/projects/datascience/krishnat/model_weights/LLaMA/llama_cache/'
export HF_DATASETS_CACHE='/lus/grand/projects/datascience/krishnat/model_weights/LLaMA/llama_cache/'


python3 lora.py --base_model="meta-llama/Llama-3.1-8B" \
--data_path="tatsu-lab/alpaca" \
--num_epochs 10

