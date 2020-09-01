function fakes -d "Create a video of the fakes in the current directory"
    mkdir -p tmp ;\
    and cp fakes(seq 0 9)*.jpg tmp ;\
    and cd tmp ;\
    and renamer '^fakes\d{6}=fakesX' fakes(seq 0 9)*.jpg --suffix-increment 000000 ;\
    and ffmpeg -r 10 -i fakesX%06d.jpg -c:v libx264 -vf fps=24,scale=1280:720 -pix_fmt yuv420p ../_video.mp4 ;\
    and cd .. ;\
    and rm -rf tmp ;\
end
