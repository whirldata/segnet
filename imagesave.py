import cv2
import sys
import os


dir_path = "Annotation/"
out_dir = "AnnotationGray/"
for img in os.listdir(dir_path):
  print(dir_path+img)
  image = cv2.imread(dir_path+img)
  for i in range(0,360):
    for j in range(0,480):
      for k in range(0,3):
        if image[i,j,k] == 1:
          image[i,j,0] = 1
          image[i,j,1] = 1
          image[i,j,2] = 1
          break
  cv2.imwrite(out_dir+img,image)
  print(out_dir+img+"completed")


cv2.destroyAllWindows()

