#!/bin/bash
B2_BUCKET_NAME=runpod-storage-xyz

/opt/micromamba/envs/comfyui/bin/b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/ComfyUI/custom_nodes" "/workspace/ComfyUI/custom_nodes"
/opt/micromamba/envs/comfyui/bin/b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/ComfyUI/models" "/workspace/ComfyUI/models"
/opt/micromamba/envs/comfyui/bin/b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/storage/stable_diffusion/models/ckpt" "/workspace/ComfyUI/models/checkpoints"
/opt/micromamba/envs/comfyui/bin/b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/storage/stable_diffusion/models/controlnet" "/workspace/ComfyUI/models/controlnet"
/opt/micromamba/envs/comfyui/bin/b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/storage/stable_diffusion/models/esrgan" "/workspace/ComfyUI/models/upscale_models"
/opt/micromamba/envs/comfyui/bin/b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/ComfyUI/input" "/workspace/ComfyUI/input"
