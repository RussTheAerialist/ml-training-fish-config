# StyleGAN2 functions are to be used inside of a docker container
# with the image stainlessio/stylegan2

function sg2start -d "Starts the docker container for training stylegan2"
    if set -q $argv[1]
      set TAG latest
    else
      set TAG $argv[1]
    end

    docker run --privileged --gpus all -it --mount type=bind,source=$HOME/stylegan2,target=/stylegan2 stainlessio/stylegan2:$TAG /usr/bin/fish
end
