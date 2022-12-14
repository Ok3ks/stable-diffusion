
FROM gitpod/workspace-full:latest

USER gitpod

# Install Redis.
RUN sudo apt-get update \
    && sudo apt-get install -libglib.2.0.0 \
    && sudo rm -rf /var/lib/apt/lists/*

RUN pip3 install \
    albumentations==0.4.3\
    diffusers\
    opencv-python==4.1.2.30\
    pudb==2019.2\
    invisible-watermark\
    imageio==2.9.0\
    imageio-ffmpeg==0.4.2\
    pytorch-lightning==1.4.2\
    omegaconf==2.1.1\
    test-tube>=0.7.5\
    streamlit>=0.73.1\
    einops==0.3.0\
    torch-fidelity==0.3.0\
    transformers==4.19.2\
    torchmetrics==0.6.0\
    kornia==0.6\
    -e git+https://github.com/CompVis/taming-transformers.git@master#egg=taming-transformers\
    -e git+https://github.com/openai/CLIP.git@main#egg=clip\
    -e .
