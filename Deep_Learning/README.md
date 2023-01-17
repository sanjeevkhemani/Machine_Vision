1. ABSTRACT

In this project we worked with deep structured learning, which is a part of a broader family of machine learning methods based on artificial neural networks with representation learning. Deep-learning architectures such as deep neural networks, and convolutional neural networks have been applied to several applications. Transfer learning is a research problem in machine learning that focuses on storing knowledge gained while solving one problem and applying it to a different but related problem.

2. METHODOLOGY

We utilized fundus images in IDRiD were captured by a retinal specialist at an Eye Clinic located in Nanded, Maharashtra, India. From the thousands of examinations available, we have extracted 516 images to form our dataset. Experts verified that all images are of adequate quality, clinically relevant, that no image is duplicated and that a reasonable mixture of disease stratification representative of diabetic retinopathy (DR) is present. We made use of a very renowned pretrained CNN called AlexNet. The implementation of the aforementioned was done in the programming language MATLAB.


3. DATA PREPARATİON AND LABELING

We first prepared our data by reading the images with different labels into different imageDatastores. We read images with label 0 and assigned a ‘Non-DR’ categorical label value, and ones with label 3, 4 with ‘DR’ categorical label value. We made sure to keep images in the Train and Test folders separated. After assigning proper labels, we compiled out list of images for training and validation.

![image](https://user-images.githubusercontent.com/54830217/212807297-894d4da8-6844-4f33-a459-e9ce8afe5343.png)

Figure 3.1: Data preparation

![image](https://user-images.githubusercontent.com/54830217/212807311-ef2ebf75-013d-489f-b2f7-21e21ba1e8a9.png)

Figure 3.2: DR/Non-DR label assignment


4. TEST RESULTS AND ANALYSIS


4.1 Deep learning with MaxEpochs = 7, MiniBatchSize = 10, ValidationFrequency = 3
We set our algorithm values to MaxEpochs = 7, MiniBatchSize = 10, ValidationFrequency = 3 and tested our deep learning prediction model.

![image](https://user-images.githubusercontent.com/54830217/212807334-ee2c5f80-849a-4c04-a07e-0687c3032b2c.png)

Figure 4.1: ROC Curve
 
![image](https://user-images.githubusercontent.com/54830217/212807353-56da7b4c-6eaa-4773-9afc-be7ec193f9d7.png)

Figure 4.2: Confusion Matrix

4.2 Deep learning with MaxEpochs = 10, MiniBatchSize = 10, ValidationFrequency = 3
We set our algorithm values to MaxEpochs = 10, MiniBatchSize = 10, ValidationFrequency = 3 and tested our deep learning prediction model.

![image](https://user-images.githubusercontent.com/54830217/212807408-9b2bfc02-94fe-4ba7-86ab-c12df1fe95d9.png)
 
Figure 4.3: ROC Curve

![image](https://user-images.githubusercontent.com/54830217/212807437-31df345c-400c-48aa-9530-4c12e572fcce.png)

Figure 4.4: Confusion Matrix
