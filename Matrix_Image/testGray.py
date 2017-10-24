import cv2


path = "gray26opb"
ori_img = cv2.imread(path+'.png')
cv2.imshow("Original_Gray", ori_img)
#cv2.waitKey(0)
#cv2.destroyAllWindows()
#print(ori_img)
cpy_img = ori_img


#print(ori_img.shape)
for i in range(0,360):
    for j in range(0,480):
        if(cpy_img[i,j,0] == 130):
            cpy_img[i,j,0] = 8
            cpy_img[i,j,1] = 8
            cpy_img[i,j,2] = 8
        else:
            cpy_img[i,j,0] = 1
            cpy_img[i,j,1] = 1
            cpy_img[i,j,2] = 1

cv2.imshow("Original_Gray", ori_img)
cv2.imshow("Changed_Gray", cpy_img)
cv2.imwrite("gray.png", ori_img)
cv2.waitKey(0)
cv2.destroyAllWindows()
