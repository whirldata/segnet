echo -------------------------------Process1------------------------------------------
read mon day year < <(date -d "0 days" "+%b %_d %Y")
log_dir="$mon$day-bs5-tr1"
python main.py --log_dir=/media/whirldata/b525189f-d596-4099-8285-ed8f7a422bc1/whirldata/Segnet-Training-ckpt/"$log_dir" --image_dir=./new-train.txt --val_dir=./val.txt --batch_size=5 --max_steps=15000
echo ---------------------------------Process2-----------------------------------------
read mon day year < <(date -d "0 days" "+%b %_d %Y")
log_dir="$mon$day-bs5-tr2"
python main.py --log_dir=/media/whirldata/b525189f-d596-4099-8285-ed8f7a422bc1/whirldata/Segnet-Training-ckpt/"$log_dir" --image_dir=./new-train.txt --val_dir=./val.txt --batch_size=5 --max_steps=15000
echo ---------------------------------Process3-----------------------------------------
read mon day year < <(date -d "0 days" "+%b %_d %Y")
log_dir="$mon$day-bs5-tr3"
python main.py --log_dir=/media/whirldata/b525189f-d596-4099-8285-ed8f7a422bc1/whirldata/Segnet-Training-ckpt/"$log_dir" --image_dir=./new-train.txt --val_dir=./val.txt --batch_size=5 --max_steps=15000
echo ---------------------------------Process4-----------------------------------------
read mon day year < <(date -d "0 days" "+%b %_d %Y")
log_dir="$mon$day-bs5-tr4"
python main.py --log_dir=/media/whirldata/b525189f-d596-4099-8285-ed8f7a422bc1/whirldata/Segnet-Training-ckpt/"$log_dir" --image_dir=./new-train.txt --val_dir=./val.txt --batch_size=5 --max_steps=15000
echo ---------------------------------Process4-----------------------------------------
read mon day year < <(date -d "0 days" "+%b %_d %Y")
log_dir="$mon$day-bs5-tr5"
python main.py --log_dir=/media/whirldata/b525189f-d596-4099-8285-ed8f7a422bc1/whirldata/Segnet-Training-ckpt/"$log_dir" --image_dir=./new-train.txt --val_dir=./val.txt --batch_size=5 --max_steps=15000
