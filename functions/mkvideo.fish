function mkvideo -d "Create a video from a pattern of images, scales to 720p"
    if set -q $argv[2]
      set OUTPUT video.mp4
    else
      set OUTPUT $argv[2]
      if string match -r -v ".mp4\$" "$OUTPUT" 
         set -a OUTPUT ".mp4"
      end
    end
    ffmpeg -r 10 -i $argv[1] -c:v libx264 -vf fps=24,scale=1280:720 -pix_fmt yuv420p $OUTPUT
end
