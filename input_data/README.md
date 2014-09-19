# peak-grouping-alignment

## input_data

This directory contains the evaluation datasets used for experiments in the paper. Input files are provided either in SIMA format or in featureXML format. Within each dataset, the directory *ground_truth* contains the alignment ground truth as defined in the original paper that provides the datasets.

* **P1** and **P2** contains the proteomic datasets used in single-fraction and multiple-fractions experiments in the paper.
* **M1** contains the metabolomic dataset used for the metabolomic experiment in the paper.
* **glycomic** contains the glyomic dataset used for the glycomic experiment in the paper.

**P1**, **P2** and **M1** were first introduced by Lange, et al. (2008), while **glycomic** comes from Tsai et al. (2013). We focus on pairwise alignment performance, so only the first two runs within each fraction of P2 were included for evaluation. For **M1** and **glycomic**, we extracted 30 random pairs of runs to be the training set and further 30 random pairs of runs to be the testing set. Parameters are optimised on the training set and performance evaluated on the testing set. 

## Files selection for the M1 and glycomic datasets

Files in these directories are sorted alphabetically (in natural order) and indexed from 0 to n. The following lists the indices of files randomly selected in **M1** for training (parameter optimisation) and testing (performance evaluation) purposes.

		int[][] trainingIndices = { 
				{36, 40}, 	{5, 28}, 	{7, 43}, 	{22, 36}, 	{35, 41},
				{2, 38}, 	{33, 34}, 	{8, 32}, 	{3, 5}, 	{14, 42},
				{17, 34},	{20, 22}, 	{13, 34}, 	{6, 8}, 	{15, 26},
				{12, 23},	{36, 40}, 	{12, 37}, 	{11, 41},	{5, 28},
				{26, 37},	{13, 34},	{4, 25},	{35, 42},	{1, 21},
				{11, 18}, 	{6, 42},	{3, 11},	{1, 2}, 	{29, 33}
		};
		int[][] testingIndices= {
				{14, 35},	{12, 27}, 	{20, 33},	{7, 41},	{4, 44},
				{1, 43},	{4, 39}, 	{19, 36}, 	{7, 12}, 	{25, 26},
				{16, 28}, 	{4, 11},	{11, 19}, 	{22, 42},	{17, 40},
				{14, 33},	{43, 7},	{4, 41},	{14, 20}, 	{22, 36},
				{24, 36},	{25, 39},	{10, 14},	{9, 38},	{11, 20},
				{9, 19},	{5, 20},	{12, 27},	{6, 10}, 	{19, 23}						
		};

The following lists the indices of files randomly selected in **glycomic** for training (parameter optimisation) and testing (performance evaluation) purposes.

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

