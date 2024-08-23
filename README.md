# Human-Brain-Parcellation-using-DB-Scan

![Figure5](https://github.com/user-attachments/assets/0b2ec14f-41e8-4a23-90e6-e9024b09d37a)


Brodmann's parcellation of the human cerebral cortex, based on cellular architecture, remains the most popular cortical map today, defining 52 regions with similar cellular structures. Although MRI data has been used for cortical mapping, histological images provide higher spatial resolution with actual brain tissue. This study aimed to create an automated, data-driven cortical map using Brodmann’s principles. We extracted five anatomical features (cortical thickness, volume, surface area, curvature, and cooridinates) from a high-resolution 3D histological brain image (BigBrain) and applied the DB-Scan algorithm, identifying 70 and 67 clusters in the left and right hemispheres, respectively. Notably, we identified the SMA and pre-SMA regions, which were not present in Brodmann's areas, and further divided regions like the pre-central gyrus and superior frontal gyrus into smaller sub-regions, consistent with the Julich-Brain atlas. This is the first application of DB-Scan in neuroimaging, and our approach may be valuable for studying individual variability in the cerebral cortex in future research.

---

*The Recon-all-Output folder* contains the resulting images and measurements of recon-all from FreeSurfer.

*Withing the codes-and-files folder:*

RH_classification_whole_brain.m and LH_classification_whole_brain.m : The Matlab codes for applying the DB_Scan alorithm on the data.
RH_classification_whole_brain.annot and LH_classification_whole_brain.annot : Annotation files to visualize the resulting brain clusters in FreeSurfer

