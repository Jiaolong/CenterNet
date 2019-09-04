cd src
# train
python3 main.py ctdet --exp_id pascal_dla_384 --dataset pascal --num_epochs 70 --lr_step 45,60
# test
python3 test.py ctdet --exp_id pascal_dla_384 --dataset pascal --resume
# flip test
python3 test.py ctdet --exp_id pascal_dla_384 --dataset pascal --resume --flip_test
cd ..
