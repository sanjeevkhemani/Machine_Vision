1. ABSTRACT

In this project we created a image resolution and gray level changing script. We did this from scratch without utilizing any in-built methods. The demo and results are obtained by processing provided 1024*1024 8-bit grayscale image ‘rose.jpg’. The implementation of the aforementioned was done in the programming language MATLAB.

2. IMPLEMENTATION

We implemented by using for loops to iterate across each row, column and channel. We used quantization to downsample/upsample/grayscale images. For example when 1024 pixels are shaved down to 512, the quantization factor is 1/2. A similar process is undertaken to upscale or change gray levels between 8-bit (256 gray levels), 7-bit(128 gray levels),.. and so on.

![image](https://user-images.githubusercontent.com/54830217/212803349-bbe3fc30-ce51-45b1-b994-abd8215d1383.png)

Figure 2.1: Original image


3. TEST RESULTS


![image](https://user-images.githubusercontent.com/54830217/212803380-6531d44e-35e9-4b27-a2c8-378f7d6d4659.png)

Figure 3.1: Example of downsampled image

![image](https://user-images.githubusercontent.com/54830217/212803398-18f75049-5de9-4185-a1de-b335e7d4c17b.png)

Figure 3.2: Example of upsampled image

![image](https://user-images.githubusercontent.com/54830217/212803410-bdb55704-b00f-4301-a0c8-d658a1d26583.png)

Figure 3.3: Example of lower gray level image
