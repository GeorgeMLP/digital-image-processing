clear, clc;

% read image
image = im2double(imread('Lenna.png'));

% convert to grayscale
grey_image = rgb2gray(image);

% filter image
LEN = 21;    % the length of the motion
THETA = 11;  % the angle of motion
PSF = fspecial('motion', LEN, THETA);
blurred_image = imfilter(grey_image, PSF, 'conv', 'circular');

% add noise
noise_mean = 0;      % mean of noise
noise_var = 0.0002;  % variance of noise
blurred_noisy_image = imnoise(blurred_image, 'gaussian',...
    noise_mean, noise_var);

% deblur image using Wiener filter
noise_to_signal_ratio = noise_var / var(grey_image(:));
restored_image = deconvwnr(blurred_noisy_image, PSF,...
    noise_to_signal_ratio);
