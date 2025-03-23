FROM nvcr.io/nvidia/pytorch:25.02-py3
WORKDIR /comfy
RUN git clone https://github.com/comfyanonymous/ComfyUI
WORKDIR /comfy/ComfyUI
COPY ./extra_model_paths.yaml .
RUN grep -v 'torchaudio\|torchvision' requirements.txt > temp_requirements.txt
RUN pip install -r temp_requirements.txt