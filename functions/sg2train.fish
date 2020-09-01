# StyleGAN2 functions are to be used inside of a docker container
# created with https://github.com/dvschultz/stylegan2 and the tensorflow 1.x image from nvidia

function sg2train -d "Command to train a stylegan2 network"
   if set -q $argv[1]
       echo "Usage: sg2train <dataset name>"
       return
   end
   set DATASET $argv[1]

   python run_training.py --data-dir=./datasets --config=config-f --dataset=$DATASET --mirror-augment=true --metrics none
end
