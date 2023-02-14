## Cortical-Axon-on-Neuropixels-with-Kilosort
This script is to replace the original `make_fig.m` from Kilosort (2 &amp; 2.5) to visualize the thalamo-cortical axons with Neuropixels probe. 

To do so, replace the original `make_fig.m` located in the Kilosort main folder (`KS-master/mainLoop`) with this version  Matlab script.

Our modified version of this script will organize the plotting of the waveforms according to the size of the post-synaptic negative peak response (if any):
- In the first subplot of Kilosort -`Temporal Components`-, the different waveforms are now organized from the biggest (left) to the smallest (right) rebound peak value. Consequently, the presence of possible axons in the recording will be indicated by the a blue region in the bottom left part of this subplot (red arrow). 
- In the second plot at the top right (10 Highest rebound), only the 10 first waveforms having the largest rebound values (red arrow) are illustrated; they correspond to the first 10 waveforms on the lefter side of the `Temporal Components` subplot.
- in the two bottom plots are illustrated the amplitude and spike counts as usually ploted by Kilosort.
- in the pannel on the right are illustrated the location of the probe (at their best channel, i.e. the channels having the biggest 0-lag peak amplitude) versus the size of the rebound. Values below 0.05 may be a dendritic rebound, which should be confirmed by further pharmacological controls.

![alt text](https://github.com/KremkowLab/Cortical-Axon-on-Neuropixels-in-Kilosort/blob/main/Supp.%20Fig%201_20230214.png)

A test recording is available in: https://zenodo.org/record/6850116#.YtQNq4RBzQM
