# SegNet using Tensorflow
This is to implement the conncept of SegNet(https://arxiv.org/pdf/1511.00561.pdf) in TensorFlow and to train the SegNet-Basic architecture's model on a plastic dataset(used to detect plastic on a conveyor belt) and on a T-shirt dataset(for segmenting the shirt a person is wearing).  

For SegNet model details, please go to https://github.com/alexgkendall/caffe-segnet

## Requirements
tensorflow 1.3  
Open-CV  
scikit-image

## Usage
For Training:

```
Syntax:
python main.py --log_dir=<path_to_your_log> --image_dir=<path_to_Plastic_train.txt> --val_dir=<path_to_Plastic_val.txt> --batch_size=<batch_size_num>
Example:
python main.py --log_dir=./plastic_log_ckpt --image_dir=./train.txt --val_dir=./val.txt --batch_size=5
```

For Finetune:  
If due to any reason the training stopped, the training can be continued using the latest checkpoint file.
```
Syntax:
python main.py --finetune=<path_to_saved_ckpt> --log_dir=<path_to_your_log> --image_dir=<path_to_Plastic_train.txt> --val_dir=<path_to_Plastic_val.txt> --batch_size=<batch_size_num>
Example:
python main.py --finetune=./plastic_log_ckpt/model.ckpt-14999 --log_dir=./plastic_log_ckpt --image_dir=./train.txt --val_dir=./val.txt --batch_size=5
```

For Testing:

```
Syntax:
python main.py --log_dir=<path_to_your_log> --testing=<path_to_saved_ckpt> --test_dir=<path_to_Plastic_test.txt> --batch_size=<batch_size_num> --save_image=True --test_img_dir=<path_to_folder_to_store_predicted_results>
Example:
python main.py --log_dir=./plastic_log_ckpt --testing=./plastic_log_ckpt/model.ckpt-14999 --test_dir=./test.txt --batch_size=5 --save_image=True --test_img_dir=./PlasticPredict
```
### Parameter Definitions
- log-dir - The folder name in which the checkpoints and TensorBoard logs must be saved.During training, this folder will be created and all the checkpoints,Tensorboard Logs and csv's will be saved while training. 
- image_dir - This will be the text file containing path to the training images and their corresponding labeled images.
- val_dir - This will be the text file containing path to the validation images and their corresponding lebeled images.
- finetune - This will contain the path of the checkpoint file from where you need the training to continue.
- batch_size - This will specify the number of images to be passed on to the network at every step.
- testing - This will specify the checkpoint file to be used to test the testing set.
- test_dir - This will be the text file containing path to the test images and their corresponding labeled images.
- test_img_dir - Here we mention the folder in which the predicted results will be stored. The folder name is required in this parameter and this would be created while testing.

The default path and parameters can be set in main.py.

## Dataset
The text file used must be in the following format: 


"path_to_image1" "path_to_corresponding_label_image1",

"path_to_image2" "path_to_corresponding_label_image2",

"path_to_image3" "path_to_corresponding_label_image3",

.......

## Acknowledgements
The main code was taken from Tseng Kuan Lun Tensorflow-SegNet.
For more details have a look at the following link:  
(https://github.com/tkuanlun350/Tensorflow-SegNet)
