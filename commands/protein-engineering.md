---
description: Design and analyse protein variants
argument-hint: [protein-name, UniProt-ID, or sequence]
allowed-tools: Read, Write, Edit, Bash
---

Perform protein engineering analysis for $ARGUMENTS.

Use the following skills in sequence (read each SKILL.md before using):

1. **Protein retrieval** — Use the uniprot-database skill to retrieve the protein sequence, domain annotations, and functional information. Use the pdb-database skill for experimental structures.

2. **Structure prediction** — Use the alphafold-database skill to retrieve or predict the protein structure. Identify active sites, binding pockets, and key residues.

3. **Sequence analysis** — Use the biopython skill for sequence alignment, conservation analysis, and phylogenetic context. Use the esm skill for protein language model embeddings and variant effect prediction.

4. **Variant design** — Based on structural and conservation analysis, propose mutations for desired properties (stability, binding, activity). Use ESM log-likelihood ratios to score variant fitness.

5. **Structural impact** — Use the biopython skill to model mutations in the 3D structure. Assess steric clashes, hydrogen bond changes, and electrostatic effects.

6. **Literature search** — Use the pubmed-database skill to find prior mutagenesis studies, directed evolution results, and structure-function relationships for the protein family.

7. **Lab validation** (optional) — Use the adaptyv skill if cloud-based protein testing is available. Use the ginkgo-cloud-lab skill for cell-free protein expression experiments.

8. **Report** — Generate a protein engineering report with: target protein overview, proposed variants with rationale, predicted effects, structural visualisations, and recommended experimental validation plan.

Save all outputs to the working directory.
