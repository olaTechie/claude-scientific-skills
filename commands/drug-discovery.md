---
description: Run a drug discovery pipeline for a target
argument-hint: [target-name or SMILES]
allowed-tools: Read, Write, Edit, Bash
---

Run a comprehensive drug discovery pipeline for $ARGUMENTS.

Use the following skills in sequence (read each SKILL.md before using):

1. **Target identification** — Use the chembl-database skill to query ChEMBL for known bioactivity data. Use the opentargets-database skill to validate druggability and retrieve target-disease associations.

2. **Structure retrieval** — Use the alphafold-database skill to retrieve predicted protein structures. Use the pdb-database skill to check for experimental crystal structures.

3. **Hit finding** — Use the rdkit skill to filter compounds by drug-likeness (Lipinski Ro5). Use the pubchem-database or zinc-database skills to search for candidate molecules.

4. **SAR analysis** — Use the rdkit skill to compute molecular descriptors, fingerprints, and substructure searches. Use the datamol skill for analog generation. Use the medchem skill to assess lead-likeness.

5. **Virtual screening** — If DiffDock is available, use the diffdock skill for molecular docking against the target structure.

6. **ADMET prediction** — Use the deepchem skill for ADMET property prediction.

7. **Literature context** — Use the pubmed-database skill to search for resistance mechanisms, known SAR, and clinical context. Use the biorxiv-database skill for recent preprints.

8. **Visualisation & report** — Use the scientific-visualization and matplotlib skills to create publication-quality figures. Generate a comprehensive report summarising hits, SAR trends, ADMET flags, and recommended next steps.

Save the final report and figures to the working directory.
