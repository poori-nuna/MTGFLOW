for file in /home/zhouqihang/zqh/project/input/processed/machine*train*
do 
    var=${file##*/}
    # echo $var
    echo ${var%_*}
    CUDA_VISIBLE_DEVICES=2 python3 visual.py --name=${var%_*} --n_blocks 2 
    wait
done
