## Cortical-Axon-on-Neuropixels-in-Kilosort
This script is to replace the original 'make_fig.m' from Kilosort (2 &amp; 2.5) to visualize the thalamo-crotical axons with Neuropixels. 

To do so, replace the original `make_fig.m` located in the kilosort main folder (`KS-master/mainLoop`) with this Matlab script.

Our modified version of this script will organize the plotting of the waveforms according to the size of the post-synaptic negative peak response (if any):
- In the first subplot of Kilosort -`Temporal Components`-, the different waveforms are now organized from the biggest (left) to the smallest (right) post-synaptic peak value. Consequently, the presence of possible axons in the recording will be indicated by the a blue region in the bottom left part of this subplot (red arrow). 
- In the second plot at the top right (unnamed), only the 10 first waveforms having the largest post-synaptic values (red arrow) are illustrated; they correspond to the first 10 waveforms on the lefter side of the `Temporal Components` subplot.
- in the two bottom plots are illustrated the amplitude and spike counts as usually ploted by Kilosort.
- in the pannel on the right are illustrated the location of the probe (identified by their best channel) versus the size of the rebound measured after the detected peak. Values below 0.05 may well be a dendritic rebound, which should be confirmed by further pharmacological controls.

![alt text](https://github.com/KremkowLab/Cortical-Axon-on-Neuropixels-in-Kilosort/blob/main/Supp.%20Fig%201_20230214.png)

A test recording is available in: https://zenodo.org/record/6850116#.YtQNq4RBzQM
