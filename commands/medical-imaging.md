---
description: Process and analyse medical imaging data
argument-hint: [DICOM-path or image-description]
allowed-tools: Read, Write, Edit, Bash
---

Process and analyse medical imaging data for: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **DICOM processing** — Use the pydicom skill to load and parse DICOM files. Extract metadata, pixel data, and imaging parameters.

2. **Histopathology** — Use the histolab skill for whole slide image (WSI) preprocessing: tissue detection, tiling, and stain normalisation. Use the pathml skill for advanced computational pathology workflows.

3. **Cloud imaging data** — Use the imaging-data-commons skill to access public medical imaging datasets from the Imaging Data Commons.

4. **Image analysis** — Apply appropriate analysis: segmentation, feature extraction, quantification, or classification depending on the imaging modality.

5. **Deep learning** (optional) — Use the pytorch-lightning or transformers skills for training or applying deep learning models on medical images.

6. **Visualisation** — Use the matplotlib skill for displaying images, overlays, and analysis results.

7. **Report** — Generate a structured report with: imaging parameters, analysis methodology, key findings, and annotated images.

Save all outputs to the working directory.
