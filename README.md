# A Spatial Median Filter for noise removal in digital images
**An implementation of** *J. C. Church, Yixin Chen and S. V. Rice, "A Spatial Median Filter for noise removal in digital images," IEEE SoutheastCon 2008, 2008, pp. 618-623, doi: 10.1109/SECON.2008.4494367.*

<center>
<a href="./preproc-imgs/1.jpg" title="Sample 1"><img src="./preproc-imgs/1.jpg" width="15%"></a>
<a href="./preproc-imgs/2.jpg" title="Sample 2"><img src="./preproc-imgs/2.jpg" width="15%"></a>
<a href="./preproc-imgs/3.jpg" title="Sample 3"><img src="./preproc-imgs/3.jpg" width="15%"></a>
<a href="./preproc-imgs/4.jpg" title="Sample 4"><img src="./preproc-imgs/4.jpg" width="15%"></a>
<a href="./preproc-imgs/5.jpg" title="Sample 5"><img src="./preproc-imgs/5.jpg" width="15%"></a>
<a href="./preproc-imgs/6.jpg" title="Sample 6"><img src="./preproc-imgs/6.jpg" width="15%"></a>
<a href="./preproc-imgs/7.jpg" title="Sample 7"><img src="./preproc-imgs/7.jpg" width="15%"></a>
<a href="./preproc-imgs/8.jpg" title="Sample 8"><img src="./preproc-imgs/8.jpg" width="15%"></a>
<a href="./preproc-imgs/9.jpg" title="Sample 9"><img src="./preproc-imgs/9.jpg" width="15%"></a>
<a href="./preproc-imgs/10.jpg" title="Sample 10"><img src="./preproc-imgs/10.jpg" width="15%"></a>
<a href="./preproc-imgs/11.jpg" title="Sample 11"><img src="./preproc-imgs/11.jpg" width="15%"></a>
<a href="./preproc-imgs/12.jpg" title="Sample 12"><img src="./preproc-imgs/12.jpg" width="15%"></a>
<a href="./preproc-imgs/13.jpg" title="Sample 13"><img src="./preproc-imgs/13.jpg" width="15%"></a>
<a href="./preproc-imgs/14.jpg" title="Sample 14"><img src="./preproc-imgs/14.jpg" width="15%"></a>
<a href="./preproc-imgs/15.jpg" title="Sample 15"><img src="./preproc-imgs/15.jpg" width="15%"></a>
<a href="./preproc-imgs/16.jpg" title="Sample 16"><img src="./preproc-imgs/16.jpg" width="15%"></a>
<a href="./preproc-imgs/17.jpg" title="Sample 17"><img src="./preproc-imgs/17.jpg" width="15%"></a>
<a href="./preproc-imgs/18.jpg" title="Sample 18"><img src="./preproc-imgs/18.jpg" width="15%"></a>
<a href="./preproc-imgs/19.jpg" title="Sample 19"><img src="./preproc-imgs/19.jpg" width="15%"></a>
</center>

<!-- ## Directory
1. [Original Sample Images](./src-imgs)
2. [Preprocessed Images](./preproc-imgs)
3. Utilities
   1. [Script to standardize source images](./preprocessing.mlx)
   2. [Function to add noise to images](./distort.mlx)
   3. [Script to generate noisy sample images](./make_noisy_imgs.mlx)
   4. [Function to ](./make_mask.mlx) -->

## Todo
### General
- [x] Folder for source images
- [x] Folder for loaded./preprocessed images
- [x] Function for distorting images
- [x] Folders for distorted images (matrix), grouped based on distortion level
- [ ] Folders for reconstructed images (matrix), grouped based on distortion level and filter
- [ ] Reconstructed images visualize into image files as examples placed in a folder.
- [ ] Functions for each of the filter
- [x] Function for RMSE calculation
- [ ] Functions for statistical analysis and visualization of RMSE (could be very case by case)
- [ ] Three major graphs in that paper: which mask size is good, which T level is good, and finally which filter is good

### Filters
- [x] mean filter
- [ ] simple median filter
- [x] component median filter
- [x] vector median filter
- [ ] spatial median filter
- [ ] modified spatial median filter

### temp
- [ ] Fix median filter to use magnitude
- [ ] Update mean, median filters + test_make_mask to work with new make_mask
- [ ] Describe Mean, Median filters + make_mask (pictorially?)