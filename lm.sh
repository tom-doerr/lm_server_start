#!/bin/bash

export CUDA_VISIBLE_DEVICES=0,1

#python3 -m sglang.launch_server --model-path MaziyarPanahi/Meta-Llama-3-70B-Instruct-GPTQ --port 38242 --tp 2
#python3 -m sglang.launch_server --model-path TechxGenus/Meta-Llama-3-70B-GPTQ --port 38242 --tp 2
#python3 -m sglang.launch_server --model-path TechxGenus/Meta-Llama-3-8B-GPTQ --port 38242 --tp 2
#python3 -m sglang.launch_server --model-path TechxGenus/Meta-Llama-3-8B-GPTQ --port 38242 --tp 1 --mem-fraction-static 0.4
#python3 -m sglang.launch_server --model-path TechxGenus/Meta-Llama-3-70B-GPTQ --port 38242 --tp 2


#python3 -m vllm.entrypoints.openai.api_server --model TechxGenus/Meta-Llama-3-8B-GPTQ --quantization gptq --tensor-parallel-size 1 --port 38242 --gpu-memory-utilization 0.8
#python3 -m vllm.entrypoints.openai.api_server --model astronomer/Llama-3-8B-Instruct-GPTQ-8-Bit --quantization gptq --tensor-parallel-size 1 --port 38242 --gpu-memory-utilization 0.8 --dtype float16
#python3 -m vllm.entrypoints.openai.api_server --model astronomer/Llama-3-8B-Instruct-GPTQ-8-Bit --quantization gptq --tensor-parallel-size 2 --port 38242 --gpu-memory-utilization 0.8 --dtype float16
#python3 -m vllm.entrypoints.openai.api_server --model TechxGenus/Meta-Llama-3-70B-Instruct-GPTQ --quantization gptq --tensor-parallel-size 2 --port 38242 --gpu-memory-utilization 0.8 # --dtype float16
#python3 -m vllm.entrypoints.openai.api_server --model TechxGenus/Meta-Llama-3-70B-Instruct-GPTQ --tensor-parallel-size 2 --port 38242 --gpu-memory-utilization 0.8 # --dtype float16 --quantization gptq
#python3 -m vllm.entrypoints.openai.api_server --model microsoft/Phi-3-medium-128k-instruct --tensor-parallel-size 2 --port 38242 --gpu-memory-utilization 0.9 --trust-remote-code --max-model-len 80000 # --dtype float16 --quantization gptq

python3 -m vllm.entrypoints.openai.api_server --model microsoft/Phi-3-medium-128k-instruct --tensor-parallel-size 2 --port 38242 --gpu-memory-utilization 0.4 --trust-remote-code --max-model-len 10000 # --dtype float16 --quantization gptq


 
#python3 -m vllm.entrypoints.openai.api_server --model PrunaAI/gradientai-Llama-3-8B-Instruct-Gradient-1048k-AWQ-4bit-smashed --quantization awq --tensor-parallel-size 2 --port 38242 --gpu-memory-utilization 0.9 #--dtype float16

 

#python3 -m vllm.entrypoints.openai.api_server --model gradientai/Llama-3-8B-Instruct-Gradient-1048k  --tensor-parallel-size 2 --port 38242 --gpu-memory-utilization 0.9 --dtype float16
#python3 -m vllm.entrypoints.openai.api_server --model gradientai/Llama-3-8B-Instruct-Gradient-1048k  --tensor-parallel-size 2 --port 38242 --gpu-memory-utilization 0.7 #--dtype float16
#python3 -m vllm.entrypoints.openai.api_server --model NurtureAI/Meta-Llama-3-8B-Instruct-32k --tensor-parallel-size 1 --port 38242 --gpu-memory-utilization 0.8
#python3 -m vllm.entrypoints.api_server --model NurtureAI/Meta-Llama-3-8B-Instruct-32k --tensor-parallel-size 1 --port 38242 --gpu-memory-utilization 0.9 #--dtype float16


#python3 -m vllm.entrypoints.openai.api_server --model TheBloke/Mistral-7B-v0.1-GPTQ --quantization gptq --tensor-parallel-size 1 --port 38242 --gpu-memory-utilization 0.4
