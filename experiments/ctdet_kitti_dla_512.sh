cd src
# train
python3 main.py ctdet --exp_id kitti_dla_512 --dataset kitti --input_res 512 --num_epochs 70 --lr_step 45,60 --gpus 0
# test
python3 test.py ctdet --exp_id kitti_dla_512 --dataset kitti --input_res 512 --resume
# flip test
python3 test.py ctdet --exp_id kitti_dla_512 --dataset kitti --input_res 512 --resume --flip_test
cd ..
