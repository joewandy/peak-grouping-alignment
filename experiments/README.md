## Performance evaluation

To make evaluation easy, calls to MW.py can be invoked by a Java pipeline that reads input files in either in featureXML or following SIMA format. The pipeline also computes performance measures (Precision, Recall, F1) produced on the output produced by the script against user-defined alignment ground truth ([computed here](https://github.com/joewandy/phd-research/blob/master/AlignmentResearch/src/main/java/com/joewandy/alignmentResearch/objectModel/GroundTruth.java)). This pipeline can be found at https://github.com/joewandy/phd-research and bundled as alignment.jar (and its accompanying alignment_lib). All these can be obtained by checking out the whole repository, as explained in the main README file.

To reproduce key results from the paper, follow the steps:

1. Download all the necessary files (executables, input_data) in this repository. **alignment.jar** is the main executable for the evaluation pipeline that loads the input files in either featureXML or SIMA format. Be sure not to change the relative paths of the input files and executables. We also include SIMA executable for evaluation purposes, while mzMine is already bundled inside alignment.jar.
2. Go into this **experiments** folder
3. For Proteomic results, execute the script **run_P1.sh** and **run_P2.sh**.
4. For Glycomic results, execute the script **parameter_scan_glyco.sh** to do parameter scans (for Fig 3 & 4). This will take a while, especially for all 30 training-testing sets.
5. For Metabolomic results, execute the script **parameter_scan_meta.sh** to do parameter scans (for Fig 3 & 4). This will take a long while for all 30 training-testing sets.
6. Results can be found in the **Results** folder created by each shell script in step (3) - (5).

### Notes

MzMine throws some null pointer exception as MzMine core is loaded and it can't find the properties file. That can be safely ignored for now as it doesn't affect the alignment results. Will fix this later on.

In all the results here, the mixture model clustering results will reuse the clustering output that we did for the paper.
To use a new clustering, edit the appropriate shell scripts (process_P1_mixture.sh, process_P2_mixture.sh, process_glyco_mixture and process_meta_mixture.sh) and comment/uncomment the line accordingly.

## Extending the pipeline

The pipeline here can be easily extended to load other data types (currently supporting featureXML and SIMA format files), run other aligment methods and compute various performance measures. The following are some examples of other alignment methods that we've incorporated (but not evaluated):

* [OpenMS](https://github.com/joewandy/phd-research/blob/master/AlignmentResearch/src/main/java/com/joewandy/alignmentResearch/alignmentMethod/external/OpenMSAlignment.java)
* [MzMine2 RANSAC](https://github.com/joewandy/phd-research/blob/master/AlignmentResearch/src/main/java/com/joewandy/alignmentResearch/alignmentMethod/external/MzMineRansacAlignment.java)

However, the codes for OpenMS and RANSAC above are fairly old and not that polished -- for now. For more current examples, see [MzMine2 Join](https://github.com/joewandy/phd-research/blob/master/AlignmentResearch/src/main/java/com/joewandy/alignmentResearch/alignmentMethod/external/MzMineJoinAlignment.java), [SIMA](https://github.com/joewandy/phd-research/blob/master/AlignmentResearch/src/main/java/com/joewandy/alignmentResearch/alignmentMethod/external/SimaAlignment.java) and the [MW scripts](https://github.com/joewandy/phd-research/blob/master/AlignmentResearch/src/main/java/com/joewandy/alignmentResearch/alignmentMethod/external/PythonMW.java) described in the paper.
