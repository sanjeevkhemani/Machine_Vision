1. ABSTRACT

In this project we accomplished various image enhancement tasks. First we implemented log transformation and power law transformation. Then we histogram equalization to grayscale images with contrast issues. The third tasks is to apply histogram equalization to color images using RGB and HIS color models. Finally, we removed the noise by using the average and median filters in spatial domain. The implementation of the aforementioned was done in the programming language MATLAB.

2. IMPLEMENTATION

First we implemented log transformation and power law transformation on image (fourierspectrum.pgm). Then we histogram equalization to grayscale images with contrast issues. Calculating the mean and standard deviation of the input and output images in the process. The third tasks is to apply histogram equalization to color images using RGB and HIS color models, and compare the results of applying the filter on the I component ONLY using the HSI model and that on each RGB components using the RGB model. Lastly, we removed the noise in the image (wizardofoznoisesquare.pgm) by using the average and median filters in 3x3, 5x5, 7x7 size in spatial domain.

![image](https://user-images.githubusercontent.com/54830217/212805461-8692a2a2-57ea-4ecf-8337-51bc37b01cc6.png)
 
Figure 2.1: banker.jpeg

![image](https://user-images.githubusercontent.com/54830217/212805476-32b347cc-97ab-451d-8e0f-8c4d4be5c3fb.png)

Figure 2.2: strawberry.jpeg

3. TEST RESULTS

![image](https://user-images.githubusercontent.com/54830217/212805511-14972701-eac4-4a4d-9b4e-63a87259c05b.png)

Figure 3.1: log transformation and power law transformation

Log transformation and power law transformation are both used to bring mroe visibility to different kinds of screen panels. The major difference here is that the value of gamma can be altered while using the power-law function to generate a family of possible transformation curves. The gamma we used is g = 0.5.

![image](https://user-images.githubusercontent.com/54830217/212805532-9da5a59a-3326-4588-bbe2-98c3bb98080f.png)

Figure 3.2: isolated rgb only view

![image](https://user-images.githubusercontent.com/54830217/212805552-cb91fb45-be6e-4d82-afb8-5a9db67ed6f4.png)
 
Figure 3.3: mean and std dev of input and output images

![image](https://user-images.githubusercontent.com/54830217/212805566-417d8d93-dd70-42dc-8227-fa56b5eccd66.png)

Figure 3.4: histogram equalization to grayscale images with contrast issues

![image](https://user-images.githubusercontent.com/54830217/212805589-ef1c43af-3d2c-4ff2-9ae6-522abb8d91c0.png)

Figure 3.5: histogram equalization HIS intensity and RGB filter

![image](https://user-images.githubusercontent.com/54830217/212805604-44c94f30-6da4-45df-9642-227c632488d2.png)

Figure 3.6: comparison original and histeq images

The procedure to generate the resultant includes a series of steps. The key markers are when the image is split into its RGB values which are stored as is. Then only the first component, Red, is filtered further with the HIS intensity feature. Once we generate this red equalized value, we not reconstitute the image replacing the red with histeq value.

![image](https://user-images.githubusercontent.com/54830217/212805622-95f20c00-1a34-49ce-9600-ec8e1b707d45.png)

Figure 3.7: original image vs. noise removal average filters in spatial domain 3x3, 5x5, 7x7

![image](https://user-images.githubusercontent.com/54830217/212805640-e2606031-33e3-4f0a-888b-838e638c0499.png)

Figure 3.8: original image vs. noise removal median filters in spatial domain 3x3, 5x5, 7x7

![image](https://user-images.githubusercontent.com/54830217/212805656-b128e29d-9902-4a2e-82a3-f123662f8eb5.png)

Figure 3.9: original image vs. average filters 3x3 vs. median filters 3x3
