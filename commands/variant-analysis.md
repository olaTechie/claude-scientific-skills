---
description: Analyse genetic variants for clinical interpretation
argument-hint: [VCF-file-path or gene/variant-ID]
allowed-tools: Read, Write, Edit, Bash
---

Perform clinical variant interpretation for $ARGUMENTS.

Use the following skills in sequence (read each SKILL.md before using):

1. **Variant parsing** — Use the pysam skill to parse VCF files. Extract variant positions, genotypes, quality scores, and annotations.

2. **Variant annotation** — Use the ensembl-database skill for functional annotation (VEP). Use the gene-database skill for gene-level context.

3. **Pathogenicity assessment** — Use the clinvar-database skill to check known pathogenicity classifications. Use the cosmic-database skill for somatic cancer mutation data.

4. **Protein impact** — Use the uniprot-database skill to assess protein domain impacts. Use the alphafold-database skill to visualise structural consequences.

5. **Pharmacogenomics** — Use the clinpgx-database skill to check for pharmacogenomic implications affecting drug response.

6. **Population frequency** — Use the gwas-database skill for GWAS associations. Check allele frequencies across populations.

7. **Literature evidence** — Use the pubmed-database skill to search for case reports and functional studies on the variants of interest.

8. **Clinical trial matching** — Use the clinicaltrials-database skill to find relevant clinical trials for actionable variants.

9. **Report** — Generate a structured clinical variant report with: variant summary table, pathogenicity classifications, therapeutic implications, pharmacogenomic considerations, and supporting evidence.

Use the clinical-reports skill for report formatting guidance. Save the report to the working directory.
