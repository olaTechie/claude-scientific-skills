---
description: Analyse single-cell RNA-seq data end-to-end
argument-hint: [path-to-data or dataset-name]
allowed-tools: Read, Write, Edit, Bash
---

Perform a comprehensive single-cell RNA-seq analysis on $ARGUMENTS.

Use the following skills in sequence (read each SKILL.md before using):

1. **Data loading** — Use the scanpy skill (or anndata skill) to load the dataset. Support 10X .h5, .h5ad, or CSV formats.

2. **Quality control** — Filter cells by mitochondrial gene percentage, total counts, and gene counts. Remove doublets. Use scanpy's QC functions.

3. **Normalisation & feature selection** — Normalise, log-transform, and identify highly variable genes using scanpy best practices.

4. **Dimensionality reduction** — Run PCA, then compute UMAP and/or t-SNE embeddings.

5. **Clustering** — Use Leiden or Louvain clustering. Test multiple resolutions and select the most biologically meaningful one.

6. **Marker gene identification** — Run differential expression with scanpy's rank_genes_groups. Use the gene-database or ensembl-database skills to annotate top markers.

7. **Cell type annotation** — Annotate clusters using known marker genes. If available, use the cellxgene-census skill for reference-based annotation.

8. **Gene regulatory networks** (optional) — Use the arboreto skill to infer GRNs from expression data.

9. **Pathway enrichment** — Use the kegg-database and reactome-database skills to run pathway enrichment on differentially expressed genes.

10. **Visualisation** — Generate UMAP plots, dotplots, heatmaps, and violin plots. Use the matplotlib or plotly skills for publication-quality figures.

Save the processed .h5ad file and all figures to the working directory.
