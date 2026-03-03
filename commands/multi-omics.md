---
description: Integrate and analyse multi-omics data
argument-hint: [data-description or file-paths]
allowed-tools: Read, Write, Edit, Bash
---

Perform multi-omics integration and analysis for $ARGUMENTS.

Use the following skills in sequence (read each SKILL.md before using):

1. **Transcriptomics** — Use the pydeseq2 skill for differential expression analysis from RNA-seq count data. Identify significantly up/down-regulated genes.

2. **Proteomics** — Use the pyopenms skill to process mass spectrometry data. Quantify proteins and identify differentially abundant proteins.

3. **Metabolomics** — Use the hmdb-database skill for metabolite identification. Use the metabolomics-workbench-database skill for reference datasets and metabolite annotations.

4. **Pathway mapping** — Use the kegg-database and reactome-database skills to map differentially expressed genes, proteins, and metabolites to biological pathways.

5. **Network analysis** — Use the string-database skill to retrieve protein-protein interaction networks. Use the networkx skill to analyse network topology, identify hub genes, and detect community structure.

6. **Cross-omics integration** — Use the statsmodels skill for correlation analysis between omics layers. Identify concordant changes across transcriptome, proteome, and metabolome.

7. **Target identification** — Use the opentargets-database skill to assess druggability of top candidates. Use the chembl-database skill to find existing compounds for key targets.

8. **Machine learning** — Use the scikit-learn skill to build predictive models from integrated features. Use the shap skill for model interpretability.

9. **Visualisation & report** — Use the matplotlib, seaborn, and plotly skills for multi-panel figures. Generate a comprehensive multi-omics report with integrated findings, pathway enrichments, network visualisations, and therapeutic implications.

Save all outputs to the working directory.
