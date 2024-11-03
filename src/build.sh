for folder in $(ls -d */ | sed 's:/$::'); do
    cd $folder
    # echo "$folder"
    sudo docker build -t yizhengx/online-boutique-v0.3.9:$folder . --push
    # echo "sudo docker build -t yizhengx/online-boutique-v0.3.9:$folder . -- push"
    cd ..
done