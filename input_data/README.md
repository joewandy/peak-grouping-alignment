# peak-grouping-alignment

## input_data

This directory contains the evaluation datasets used for experiments in the paper. Input files are provided either in SIMA format or in featureXML format. Within each dataset, the directory *ground_truth* contains the alignment ground truth as defined in the original paper that provides the datasets.

* **P1** and **P2** contains the proteomic datasets used in single-fraction and multiple-fractions experiments in the paper.
* **metabolomics** contains the metabolomic dataset used for the metabolomic experiment in the paper.  
* **glycomics** contains the glyomic dataset used for the glycomic experiment in the paper.
* **M1** contains the metabolomic dataset used for additional evaluation in the Supplementary.

**P1**, **P2** and **M1** were first introduced by Lange, et al. (2008), while **glycomics** comes from Tsai et al. (2013). **metabolomics** is our dataset of standard mixtures used for calibration of LC-MS machines. We focus on pairwise alignment performance, so only the first two runs within each fraction of P2 were included for evaluation. For **metabolomics** and **glycomics**, we extracted 30 random pairs of runs to be the training set and further 30 random pairs of runs to be the testing set. Parameters are optimised on the training set and performance evaluated on the testing set. Input files are provided in SIMA format and also featureXML format where applicable (the main script MW.py can only process SIMA format, but both formats can be processed for evaluation by the pipeline). Each folder also contains a **mat** folder, which contains the pre-computed clustering results that can be used as input to the maching methods that incorporates clustering.

## Files selection for the M1 and glycomic datasets

Files in these directories are sorted alphabetically (in natural order) and indexed from 0 to n. The following lists the indices of files randomly selected in **metabolomics** for training (parameter optimisation) and testing (performance evaluation) purposes.

		int[][] trainingIndices = { 
				{ 9, 10 }, 	{ 2, 7 }, 	{ 11, 2 }, 	{ 6, 9 }, 	{ 6, 4 }, 
				{ 10, 1 }, 	{ 9, 5 }, 	{ 8, 1 }, 	{ 10, 2 }, 	{ 11, 1 },
				{ 9, 3 }, 	{ 8, 9 }, 	{ 2, 8 }, 	{ 11, 4 }, 	{ 3, 9 }, 
				{ 11, 10 }, { 3, 2 }, 	{ 7, 3 }, 	{ 7, 10 }, 	{ 9, 4 }, 
				{ 1, 7 }, 	{ 7, 2 }, 	{ 6, 1 }, 	{ 9, 4 }, 	{ 3, 7 }, 
				{ 5, 9 }, 	{ 11, 2 }, 	{ 10, 1 }, 	{ 1, 5 }, 	{ 2, 3 } 
		};
		int[][] testingIndices = { 
				{ 6, 4 }, 	{ 9, 2 }, 	{ 2, 5 }, 	{ 7, 11 }, 	{ 4, 10 }, 
				{ 8, 2 }, 	{ 5, 7 }, 	{ 3, 8 }, 	{ 7, 9 }, 	{ 6, 9 },
				{ 4, 6 }, 	{ 8, 9 }, 	{ 3, 7 }, 	{ 3, 10 }, 	{ 5, 11 }, 
				{ 5, 4 },	{ 3, 9 }, 	{ 9, 6 }, 	{ 11, 6 }, 	{ 4, 8 }, 
				{ 6, 10 }, 	{ 11, 2 },	{ 6, 1 }, 	{ 8, 9 }, 	{ 5, 10 }, 
				{ 7, 8 }, 	{ 11, 1 }, 	{ 5, 3 }, 	{ 7, 5 }, 	{ 11, 4 } 
		};

The following lists the indices of files randomly selected in **glycomics** for training (parameter optimisation) and testing (performance evaluation) purposes.

		int[][] trainingIndices = { 
				{19, 21}, 	{3, 15}, 	{23, 4}, 	{12, 19}, 	{2, 1},
				{20, 1}, 	{18, 10}, 	{17, 1}, 	{19, 3}, 	{22, 1},
				{18, 19},	{2, 8}, 	{6, 10}, 	{12, 3}, 	{14, 6},
				{12, 17},	{10, 11}, 	{20, 6}, 	{9, 22},	{3, 9},
				{14, 13},	{18, 9},	{2, 13},	{14, 3},	{8, 4},
				{13, 4}, 	{18, 16},	{6, 22},	{13, 23}, 	{3, 23}
		};
		int[][] testingIndices= {
				{19, 20},	{6, 19}, 	{7, 5},		{20, 14},	{4, 12},
				{10, 2},	{6, 5}, 	{22, 21}, 	{21, 8}, 	{9, 18},
				{3, 4}, 	{10, 5},	{6, 8}, 	{17, 15},	{13, 7},
				{5, 16},	{9, 4},		{12, 11},	{19, 12}, 	{8, 3},
				{21, 22},	{5, 14},	{6, 20},	{6, 4},		{7, 9},
				{11, 23},	{10, 14},	{6, 17},	{10, 8}, 	{7, 19}						
		};

More details can be found in the Supplementary document.
