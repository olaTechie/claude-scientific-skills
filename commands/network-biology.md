---
description: Analyse biological networks and gene regulatory networks
argument-hint: [gene-list or dataset-path]
allowed-tools: Read, Write, Edit, Bash
---

Perform biological network analysis for $ARGUMENTS.

Use the following skills in sequence (read each SKILL.md before using):

1. **Gene annotation** — Use the gene-database skill to retrieve gene annotations. Use the ensembl-database skill for genomic coordinates and orthologue information.

2. **Protein interactions** — Use the string-database skill to retrieve protein-protein interaction networks for the genes of interest. Use the uniprot-database skill for protein function annotations.

3. **Pathway mapping** — Use the kegg-database and reactome-database skills to map genes onto known biological pathways.

4. **Network construction** — Use the networkx skill to build and analyse interaction networks. Compute centrality measures, identify hub genes, detect communities, and analyse network topology.

5. **Gene regulatory networks** — Use the arboreto skill (GRNBoost2/GENIE3) to infer gene regulatory networks from expression data.

6. **Graph ML** (optional) — Use the torch_geometric skill for graph neural network-based analysis, node classification, or link prediction on biological networks.

7. **Druggability assessment** — Use the opentargets-database skill to assess which hub genes and network modules are druggable targets.

8. **Statistical modelling** — Use the pymc skill for Bayesian network analysis or the statsmodels skill for association testing.

9. **Visualisation** — Use the networkx and matplotlib skills to create publication-quality network diagrams. Colour nodes by function, community, or expression level.

Save the network data, analysis results, and figures to the working directory.
