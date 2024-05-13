#!/bin/bash

export CUDA_VISIBLE_DEVICES=0,1

#python3 -m sglang.launch_server --model-path MaziyarPanahi/Meta-Llama-3-70B-Instruct-GPTQ --port 38242 --tp 2
#python3 -m sglang.launch_server --model-path TechxGenus/Meta-Llama-3-70B-GPTQ --port 38242 --tp 2
#python3 -m sglang.launch_server --model-path TechxGenus/Meta-Llama-3-8B-GPTQ --port 38242 --tp 2
#python3 -m sglang.launch_server --model-path TechxGenus/Meta-Llama-3-8B-GPTQ --port 38242 --tp 1 --mem-fraction-static 0.4
python3 -m vllm.entrypoints.openai.api_server --model TechxGenus/Meta-Llama-3-8B-GPTQ --quantization gptq --tensor-parallel-size 1 --port 38242 --gpu-memory-utilization 0.4
