import os
import cv2

dir_path = "plastic/"

for img in os.listdir(dir_path):
    image = cv2.imread(dir_path+img)
    gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    cv2.imwrite(dir_path+"gray"+img,gray_image)
    print(dir_path+img)
cv2.destroyAllWindows()
