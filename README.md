# Digital Image Processing

Digital image processing written in MATLAB. My workflow is shown in the following figure.

![Our workflow.](https://github.com/GeorgeMLP/digital-image-processing/raw/master/Workflow.svg)

The input ```Lenna.png``` is a colour image. First we transform it into a greyscale image, and degrade it with motion blur operator. Then we add Gaussian noise to the image, and restore it with Wiener deconvolution. The restored image is compared with the original greyscale image.

The results are shown below.

![Results of digital image processing.](https://github.com/GeorgeMLP/digital-image-processing/raw/master/Image%20Processing%20Results.svg)

The content of each file is as follows:

- ```Lenna.png``` is the original input image.
- ```Digital Image Processing.m``` is our main programme.
- ```Image Processing Results.svg``` demonstrates the transformed images in each step of our workflow.
- ```Experiment Report.pdf``` is my experiment report for this assignment, written in Chinese.
- ```Workflow.svg``` shows my workflow.