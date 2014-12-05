## Performance evaluation

To make evaluation easy, calls to MW.py can be invoked by a Java pipeline that reads input files in either in featureXML or following SIMA format. The pipeline also computes performance measures (Precision, Recall, F1) produced on the output produced by the script against user-defined alignment ground truth ([computed here](https://github.com/joewandy/phd-research/blob/master/AlignmentResearch/src/main/java/com/joewandy/alignmentResearch/objectModel/GroundTruth.java)). This pipeline can be found at https://github.com/joewandy/phd-research and bundled as alignment.jar (and its accompanying alignment_lib). All these can be obtained by checking out the whole repository, as explained in the main README file.

To reproduce key results from the paper, follow the steps:

1. Download all the necessary files (executables, input_data) in this repository. **alignment.jar** is the main executable for the evaluation pipeline that loads the input files in either featureXML or SIMA format. Be sure not to change the relative paths of the input files and executables. We also include SIMA executable for evaluation purposes, while mzMine is already bundled inside alignment.jar.
2. Go into this **experiments** folder
3. For Proteomic results, execute the script **run_P1P2.sh**
4. For Glycomic results, execute the script **run_glyco.sh**. To do parameter scans, execute the script **parameter_scan_glyco.sh**
5. For Metabolomic results, execute the script **run_meta.sh**. To do parameter scans, execute the script **parameter_scan_meta.sh**
5. Results can be found in the Results folder created by each script.
