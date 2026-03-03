---
description: Run a virtual screening campaign against a protein target
argument-hint: [target-protein or PDB-ID]
allowed-tools: Read, Write, Edit, Bash
---

Run a virtual screening campaign for $ARGUMENTS.

Use the following skills in sequence (read each SKILL.md before using):

1. **Target structure** — Use the alphafold-database or pdb-database skill to retrieve the target protein structure. Use the biopython skill to analyse the binding site and interaction interface.

2. **Compound library** — Use the zinc-database skill to search for drug-like candidates with specific property filters (MW, LogP, etc.). Alternatively use the pubchem-database skill for known bioactive compounds.

3. **Property filtering** — Use the rdkit skill to filter compounds by Lipinski Rule of Five, PAINS filters, and custom property ranges. Compute molecular descriptors and fingerprints.

4. **Molecular docking** — Use the diffdock skill (if available) for molecular docking. Rank compounds by predicted binding affinity.

5. **Scoring & ranking** — Use the deepchem skill for rescoring with neural network potentials. Use the molfeat skill for feature extraction and similarity-based ranking.

6. **ADMET assessment** — Use the medchem skill for lead-likeness evaluation. Use the deepchem skill for ADMET property prediction on top hits.

7. **Patent search** — Use the uspto-database skill to check for existing patents on top candidate scaffolds.

8. **Lead optimisation** — Use the datamol skill to generate structural analogues of top hits. Repeat property filtering and scoring on analogues.

9. **Report** — Generate a ranked hit list with predicted binding poses, property profiles, ADMET flags, and patent status. Include 2D structure grids and binding pose visualisations.

Save all results to the working directory.
