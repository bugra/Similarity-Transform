Similarity Transform - 2011 Fall
---

Original code is taken from [Dirk Jan Kroon] [1].  
However, the code he provided does not handle Similarity Transform(translation, rotation and scale). Although he provided affine registration which is more general than similarity transform, for my case it is very slow and unnecessary computation for ultrasound volumes. I adopted the code for similarity transform and changed minimization function in registration for volumes. For ultrasound 3d volumes, this version has better convergence properties and converges faster than the original code Kroon provided.  
`registration_example.m` has a very simple example for volume registration apart from the examples in `register_images.m` and `register_volumes.m`.  
Kroon has a license statement accompanying the code, which is also in `LICENSE`.

[1]:http://www.mathworks.com/matlabcentral/fileexchange/21451-multimodality-non-rigid-demon-algorithm-image-registration
