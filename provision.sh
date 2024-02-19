#!/bin/bash
pip install b2
B2_BUCKET_NAME=runpod-storage-xyz

b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/ComfyUI/custom_nodes" "/workspace/ComfyUI/custom_nodes"
b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/ComfyUI/models" "/workspace/ComfyUI/models"
b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/storage/stable_diffusion/models/ckpt" "/workspace/ComfyUI/models/checkpoints"
b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/storage/stable_diffusion/models/controlnet" "/workspace/ComfyUI/models/controlnet"
b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/storage/stable_diffusion/models/esrgan" "/workspace/ComfyUI/models/upscale_models"
b2 sync --skipNewer "b2://${B2_BUCKET_NAME}/final2/workspace/ComfyUI/input" "/workspace/ComfyUI/input"
