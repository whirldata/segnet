echo -------------------------------Process1------------------------------------------
read mon day year < <(date -d "0 days" "+%b %_d %Y")
log_dir="Train_1750_val_250"
python main.py --log_dir=/media/whirldata/b525189f-d596-4099-8285-ed8f7a422bc1/whirldata/Segnet-Training-ckpt/"$log_dir" --image_dir=./train-1500.txt --val_dir=./new-val.txt --batch_size=5 --max_steps=15000
