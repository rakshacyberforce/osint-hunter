import sys
import cv2
import numpy as np

image_path = sys.argv[1]

img = cv2.imread(image_path)

if img is None:
print("Error loading image")
exit()

gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

noise = np.var(gray)

if noise < 20:
print("⚠ Possible AI Generated Image")
else:
print("✓ Likely Real Photo")
