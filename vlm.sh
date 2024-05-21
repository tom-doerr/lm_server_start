#!/bin/bash

#export CUDA_VISIBLE_DEVICES=0,1
export CUDA_VISIBLE_DEVICES=1

python3 -m sglang.launch_server --model-path liuhaotian/llava-v1.6-vicuna-7b --tokenizer-path llava-hf/llava-1.5-7b-hf --chat-template vicuna_v1.1 --port 30813 --tp 1 --mem-fraction-static '0.8'
#python3 -m sglang.launch_server --model-path liuhaotian/llava-v1.6-34b --tokenizer-path liuhaotian/llava-v1.6-34b-tokenizer --port 30813 --tp 2 --mem-fraction-static '0.9' 
