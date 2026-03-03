# Claude Scientific Skills

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.md)
[![Version](https://img.shields.io/badge/version-2.26.0-blue)](#)
[![Skills](https://img.shields.io/badge/Skills-148+-brightgreen.svg)](#skills-reference)
[![Commands](https://img.shields.io/badge/Commands-24-orange.svg)](#commands)
[![Databases](https://img.shields.io/badge/Databases-250%2B-orange.svg)](#database-skills)
[![Agent Skills](https://img.shields.io/badge/Standard-Agent_Skills-blueviolet.svg)](https://agentskills.io/)
[![Works with](https://img.shields.io/badge/Works_with-Cursor_|_Claude_Code_|_Codex-blue.svg)](#installation)

A comprehensive collection of **148+ ready-to-use scientific and research skills** and **24 workflow commands** for any AI agent that supports the open [Agent Skills](https://agentskills.io/) standard, created by [K-Dense](https://k-dense.ai). Works with **Cursor, Claude Code, Codex, and more**. Transform your AI agent into a research assistant capable of executing complex multi-step scientific workflows across biology, chemistry, medicine, data science, financial analysis, and beyond.

<p align="center">
  <a href="https://k-dense.ai">
    <img src="docs/k-dense-web.gif" alt="K-Dense Web Demo" width="800"/>
  </a>
  <br/>
  <em>The demo above shows <a href="https://k-dense.ai">K-Dense Web</a> — the hosted platform built on top of these skills. Claude Scientific Skills is the open-source skill collection; K-Dense Web is the full AI co-scientist platform with more power and zero setup.</em>
</p>

---

**Author:** [K-Dense Inc.](https://k-dense.ai) — contact@k-dense.ai

---

## Table of Contents

- [Installation](#installation)
- [Quick Start](#quick-start)
- [Commands](#commands)
  - [Research & Analysis](#research--analysis-commands)
  - [Writing & Communication](#writing--communication-commands)
  - [Domain-Specific](#domain-specific-commands)
- [Skills Reference](#skills-reference)
  - [Bioinformatics & Genomics](#bioinformatics--genomics)
  - [Chemistry & Drug Discovery](#chemistry--drug-discovery)
  - [Data Analysis & Visualisation](#data-analysis--visualisation)
  - [Machine Learning & Deep Learning](#machine-learning--deep-learning)
  - [Biophysics & Simulation](#biophysics--simulation)
  - [Literature, Writing & Communication](#literature-writing--communication)
  - [Database Skills](#database-skills)
  - [Financial Analysis](#financial-analysis)
  - [Lab Automation & Integrations](#lab-automation--integrations)
  - [Document Processing](#document-processing)
  - [Quantum Computing](#quantum-computing)
- [Plugin Architecture](#plugin-architecture)
- [Contributing](#contributing)
- [License](#license)

---

## Installation

### Claude Code

```bash
# Add the marketplace
/plugin marketplace add anthropics/life-sciences

# Install the plugin
/plugin install scientific-skills@claude-scientific-skills

# Restart Claude Code, then verify
/mcp
```

### Cursor / Other Agent Skills-Compatible Agents

Clone the repository into your project:

```bash
git clone https://github.com/K-Dense-AI/claude-scientific-skills.git
```

The skills will be automatically detected by any agent that supports the [Agent Skills](https://agentskills.io/) standard.

### Claude Desktop (Cowork)

Select the `claude-scientific-skills` folder as your workspace. The plugin loads automatically from the `.claude-plugin/` directory.

---

## Quick Start

Once installed, you can invoke **commands** (multi-step workflows) or **skills** (focused capabilities) directly in conversation:

```
# Run a full drug discovery pipeline
/drug-discovery EGFR

# Analyse single-cell RNA-seq data
/single-cell-analysis pbmc_3k.h5ad

# Conduct a literature review
/literature-review "CRISPR base editing in sickle cell disease"
```

Skills are triggered automatically when the agent detects a relevant request, or you can reference them explicitly:

```
"Use the scanpy skill to cluster my single-cell data"
"Search PubMed for recent papers on CAR-T therapy"
"Calculate molecular descriptors for this SMILES string using RDKit"
```

---

## Commands

Commands are multi-step workflows that orchestrate several skills together. Each command guides you through a structured pipeline with clearly defined stages.

### Research & Analysis Commands

#### `/drug-discovery`

Run a comprehensive drug discovery pipeline for a target protein.

**Pipeline:** Target identification → Structure retrieval → Hit finding → SAR analysis → Virtual screening

**Skills used:** chembl-database, opentargets-database, alphafold-database, pdb-database, rdkit, pubchem-database, zinc-database, datamol, medchem, diffdock

```
/drug-discovery BRAF

# Example output stages:
# 1. Target validation — retrieves BRAF from Open Targets, checks tractability
# 2. Structure — fetches AlphaFold prediction and PDB crystal structures
# 3. Known ligands — searches ChEMBL for compounds with IC50 < 1µM
# 4. SAR analysis — identifies key pharmacophore features
# 5. Virtual screening — docks top candidates with DiffDock
```

---

#### `/single-cell-analysis`

Analyse single-cell RNA-seq data end-to-end.

**Pipeline:** Data loading → QC → Normalisation → Dimensionality reduction → Clustering → Marker genes

**Skills used:** scanpy, anndata

```
/single-cell-analysis my_dataset.h5ad

# Walks you through:
# 1. Loading .h5ad / .h5 / .csv files
# 2. Quality control (mitochondrial %, gene counts, doublet detection)
# 3. Normalisation and log-transformation
# 4. HVG selection, PCA, neighbour graph
# 5. UMAP embedding and Leiden clustering
# 6. Differential expression and marker gene identification
```

---

#### `/literature-review`

Conduct a systematic literature review on any scientific topic.

**Pipeline:** Search strategy → Database searches → Paper screening → Full-text analysis → Evidence synthesis

**Skills used:** pubmed-database, biorxiv-database, openalex-database

```
/literature-review "mRNA vaccines for influenza"

# Performs:
# 1. Develops Boolean search strategy with MeSH terms
# 2. Queries PubMed, bioRxiv, and OpenAlex
# 3. Screens titles/abstracts against inclusion criteria
# 4. Synthesises findings into a structured review
# 5. Generates citation list in your preferred format
```

---

#### `/variant-analysis`

Analyse genetic variants for clinical interpretation.

**Pipeline:** Variant parsing → Annotation → Pathogenicity assessment → Protein impact → Pharmacogenomics

**Skills used:** pysam, ensembl-database, gene-database, clinvar-database, cosmic-database, uniprot-database, alphafold-database, clinpgx-database

```
/variant-analysis "BRCA1 c.5266dupC"

# Delivers:
# 1. Variant normalisation and coordinate mapping
# 2. ClinVar pathogenicity classification
# 3. COSMIC somatic mutation frequency
# 4. Protein domain and structural impact (AlphaFold)
# 5. Pharmacogenomic implications (ClinPGx)
```

---

#### `/multi-omics`

Integrate and analyse multi-omics data.

**Pipeline:** Transcriptomics → Proteomics → Metabolomics → Pathway mapping → Network analysis

**Skills used:** pydeseq2, pyopenms, hmdb-database, metabolomics-workbench-database, kegg-database, reactome-database, string-database, networkx

```
/multi-omics --transcriptomics counts.csv --metabolomics metabolites.csv

# Integrates:
# 1. Differential expression analysis (PyDESeq2)
# 2. Metabolite identification (HMDB)
# 3. Pathway enrichment (KEGG, Reactome)
# 4. Protein-protein interaction network (STRING)
# 5. Multi-layer network visualisation
```

---

#### `/virtual-screening`

Run a virtual screening campaign against a protein target.

**Pipeline:** Target structure → Compound library → Property filtering → Molecular docking → Scoring

**Skills used:** alphafold-database, pdb-database, biopython, zinc-database, pubchem-database, rdkit, diffdock, deepchem, molfeat

```
/virtual-screening "ACE2 binding site"

# Executes:
# 1. Retrieves target structure from PDB/AlphaFold
# 2. Curates compound library from ZINC/PubChem
# 3. Filters by drug-likeness (Lipinski, Veber)
# 4. Docks with DiffDock
# 5. Ranks by predicted binding affinity
```

---

#### `/network-biology`

Analyse biological networks and gene regulatory networks.

**Pipeline:** Gene annotation → Protein interactions → Pathway mapping → Network construction → GRN inference

**Skills used:** gene-database, ensembl-database, string-database, uniprot-database, kegg-database, reactome-database, networkx, arboreto

```
/network-biology "TP53 signalling network"

# Builds:
# 1. Gene annotation and functional context
# 2. Protein-protein interaction network (STRING)
# 3. Pathway overlay (KEGG, Reactome)
# 4. Network topology analysis (centrality, communities)
# 5. Gene regulatory network inference (GRNBoost2/GENIE3)
```

---

#### `/clinical-trial-search`

Search and analyse clinical trials for a condition or drug.

**Pipeline:** Trial search → Trial details → Drug context → Biomarker context → Literature

**Skills used:** clinicaltrials-database, chembl-database, drugbank-database, fda-database, clinvar-database, clinpgx-database, pubmed-database

```
/clinical-trial-search "pembrolizumab non-small cell lung cancer"

# Returns:
# 1. Active and completed trials from ClinicalTrials.gov
# 2. Drug mechanism and bioactivity data (ChEMBL)
# 3. Safety profile and FDA labelling
# 4. Relevant biomarkers (PD-L1, TMB)
# 5. Supporting literature from PubMed
```

---

#### `/protein-engineering`

Design and analyse protein variants.

**Pipeline:** Protein retrieval → Structure prediction → Sequence analysis → Variant design → Structural impact

**Skills used:** uniprot-database, pdb-database, alphafold-database, biopython, esm

```
/protein-engineering "GFP thermostability improvement"

# Guides you through:
# 1. Retrieving wild-type sequence and structure
# 2. AlphaFold confidence analysis
# 3. Sequence conservation and domain analysis
# 4. ESM-based variant effect prediction
# 5. Structural impact assessment of proposed mutations
```

---

#### `/statistical-analysis`

Run statistical analysis on a dataset.

**Pipeline:** Data loading & EDA → Descriptive statistics → Hypothesis testing → Regression & modelling → Machine learning

**Skills used:** exploratory-data-analysis, statistical-analysis, statsmodels, scikit-learn, shap

```
/statistical-analysis clinical_data.csv

# Performs:
# 1. Automated EDA with distribution plots
# 2. Descriptive statistics and normality tests
# 3. Hypothesis testing (t-test, ANOVA, chi-square)
# 4. Regression modelling with diagnostics
# 5. ML classification/regression with SHAP explanations
```

---

#### `/hypothesis-generation`

Generate and evaluate research hypotheses.

**Pipeline:** Brainstorming → Literature grounding → Data support → Database evidence → Critical evaluation

**Skills used:** hypothesis-generation, hypogenic, pubmed-database, openalex-database, exploratory-data-analysis, statistical-analysis

```
/hypothesis-generation "Why do some COVID-19 patients develop long COVID?"

# Produces:
# 1. Structured brainstorming of candidate hypotheses
# 2. Literature evidence for/against each hypothesis
# 3. Data-driven pattern discovery (HypoGenic)
# 4. Database cross-referencing
# 5. Critical evaluation and testability ranking
```

---

### Writing & Communication Commands

#### `/scientific-writing`

Draft a scientific manuscript section or full paper.

**Skills used:** scientific-writing, pubmed-database, openalex-database, citation-management

```
/scientific-writing "Methods section for our CRISPR screen"

# Supports: Abstract, Introduction, Methods, Results, Discussion
# Includes literature context and proper citation formatting
```

---

#### `/grant-writing`

Draft a research grant proposal.

**Skills used:** literature-review, pubmed-database, openalex-database, hypothesis-generation, scientific-brainstorming, research-grants

```
/grant-writing "NIH R01 proposal for gut microbiome in Parkinson's disease"

# Generates:
# 1. Specific Aims page
# 2. Significance and Innovation sections
# 3. Research Strategy with preliminary data context
# 4. Timeline and milestones
```

---

#### `/peer-review`

Perform a peer review of a manuscript or analysis.

**Skills used:** peer-review, scientific-critical-thinking, pubmed-database, openalex-database, statistical-analysis

```
/peer-review manuscript.pdf

# Evaluates:
# 1. Methodology and study design
# 2. Statistical validity
# 3. Literature completeness
# 4. Logical consistency
# 5. Produces structured reviewer report
```

---

#### `/scientific-poster`

Create a scientific poster for a conference.

**Skills used:** pptx-posters, latex-posters, matplotlib, seaborn, plotly, scientific-schematics

```
/scientific-poster "Our GWAS findings on type 2 diabetes"

# Creates poster in PowerPoint or LaTeX format
# with figures, schematics, and proper layout
```

---

#### `/scientific-slides`

Create a scientific presentation.

**Skills used:** scientific-slides, matplotlib, seaborn, plotly, scientific-schematics, citation-management

```
/scientific-slides "Lab meeting presentation on single-cell results"

# Builds slide deck with:
# 1. Title and outline slides
# 2. Data visualisations
# 3. Scientific schematics
# 4. Speaker notes
# 5. Reference slide
```

---

### Domain-Specific Commands

#### `/market-research`

Conduct market research for a therapeutic area or technology.

**Skills used:** clinicaltrials-database, chembl-database, drugbank-database, fda-database, uspto-database, pubmed-database, openalex-database, edgartools, alpha-vantage

```
/market-research "GLP-1 receptor agonists market landscape"

# Covers: clinical landscape, drug pipeline, patent analysis,
# scientific literature trends, and financial data
```

---

#### `/eda`

Perform exploratory data analysis on a dataset.

**Skills used:** exploratory-data-analysis, matplotlib, seaborn, plotly, statistical-analysis

```
/eda experiment_results.csv

# Delivers comprehensive EDA with distribution plots,
# correlation analysis, missing data assessment, and outlier detection
```

---

#### `/lab-protocol`

Design a laboratory protocol or automation workflow.

**Skills used:** protocolsio-integration, pylabrobot, opentrons-integration, ginkgo-cloud-lab, adaptyv, benchling-integration, labarchive-integration, open-notebook

```
/lab-protocol "96-well ELISA assay with Opentrons OT-2"

# Generates:
# 1. Step-by-step protocol
# 2. Liquid handling robot code
# 3. LIMS integration setup
# 4. Electronic notebook entry
```

---

#### `/quantum-computing`

Design and simulate quantum circuits or algorithms.

**Skills used:** qiskit, cirq, pennylane, qutip

```
/quantum-computing "VQE for H2 molecule ground state energy"

# Supports Qiskit, Cirq, PennyLane, and QuTiP frameworks
# with circuit visualisation and simulation
```

---

#### `/financial-analysis`

Analyse financial data, SEC filings, or market trends.

**Skills used:** edgartools, alpha-vantage, fred-economic-data, usfiscaldata, hedgefundmonitor, statsmodels, scikit-learn

```
/financial-analysis "Moderna 10-K filing 2024"

# Analyses SEC filings, market data, economic context,
# and hedge fund activity with statistical modelling
```

---

#### `/geospatial-analysis`

Perform geospatial data analysis and mapping.

**Skills used:** geopandas, datacommons-client, matplotlib, plotly, statsmodels, scikit-learn

```
/geospatial-analysis "Disease prevalence by county in California"

# Creates choropleth maps, spatial clustering analysis,
# and statistical overlays
```

---

#### `/medical-imaging`

Process and analyse medical imaging data.

**Skills used:** pydicom, histolab, pathml, imaging-data-commons, pytorch-lightning, transformers

```
/medical-imaging chest_ct_scan.dcm

# Handles DICOM processing, histopathology WSI analysis,
# and deep learning-based classification
```

---

#### `/treatment-plan`

Generate a clinical treatment plan based on patient data.

**Skills used:** clinical-decision-support, drugbank-database, chembl-database, fda-database, clinpgx-database, pubmed-database, clinicaltrials-database

```
/treatment-plan "55yo male, stage IIIA NSCLC, EGFR L858R mutation"

# Produces evidence-based treatment recommendations
# with pharmacogenomic considerations and clinical trial options
```

---

## Skills Reference

Skills are focused capabilities that commands orchestrate. They can also be used individually by referencing them in conversation.

### Bioinformatics & Genomics

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **scanpy** | Single-cell RNA-seq analysis (clustering, DE, visualisation) | `"Cluster my scRNA-seq data and find marker genes"` |
| **anndata** | Annotated data matrices for single-cell (.h5ad) | `"Load and inspect this .h5ad file"` |
| **biopython** | Molecular biology toolkit (sequences, BLAST, phylogenetics) | `"Parse this FASTA file and run a BLAST search"` |
| **pysam** | BAM/VCF/BCF file manipulation | `"Extract reads from chromosome 17 in my BAM file"` |
| **deeptools** | NGS data analysis (ChIP-seq, ATAC-seq QC) | `"Generate a coverage heatmap from my bigWig files"` |
| **esm** | Protein language models (ESM3 generative design) | `"Generate protein variants with improved stability"` |
| **gget** | Fast queries to 20+ bioinformatics databases | `"Look up the BRCA1 gene and fetch its AlphaFold structure"` |
| **arboreto** | Gene regulatory network inference (GRNBoost2, GENIE3) | `"Infer a GRN from my expression matrix"` |
| **cellxgene-census** | Query CELLxGENE Census (61M+ cells) | `"Get all T cells from human lung tissue"` |
| **etetoolkit** | Phylogenetic tree analysis and visualisation | `"Build a phylogenetic tree from these sequences"` |
| **flowio** | Flow cytometry FCS file parsing | `"Read and preprocess my flow cytometry FCS files"` |
| **geniml** | ML on genomic intervals (BED files, scATAC-seq) | `"Embed my BED regions and find consensus peaks"` |
| **gtars** | High-performance genomic interval toolkit (Rust) | `"Compute overlaps between these two BED files"` |
| **bioservices** | Unified interface to 40+ bioinformatics APIs | `"Query UniProt and KEGG for this protein"` |
| **pydeseq2** | Differential expression analysis (DESeq2 in Python) | `"Run DE analysis on my RNA-seq count matrix"` |
| **pyopenms** | Mass spectrometry data processing | `"Process my mzML file and identify peptides"` |
| **matchms** | Mass spectral similarity and compound identification | `"Compare these mass spectra and find matches"` |
| **lamindb** | Biological data management and lineage tracking | `"Register this dataset with ontology annotations"` |
| **cobrapy** | Constraint-based metabolic modelling (FBA, FVA) | `"Run flux balance analysis on this metabolic model"` |

### Chemistry & Drug Discovery

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **rdkit** | Cheminformatics toolkit (SMILES, fingerprints, descriptors) | `"Calculate Lipinski properties for this SMILES"` |
| **datamol** | Pythonic RDKit wrapper for drug discovery | `"Standardise and cluster these molecules"` |
| **deepchem** | Molecular ML (property prediction, GNNs) | `"Predict ADMET properties for these compounds"` |
| **diffdock** | Diffusion-based molecular docking | `"Dock this ligand into the EGFR binding site"` |
| **medchem** | Medicinal chemistry filters (Lipinski, PAINS, complexity) | `"Filter my library for drug-like compounds"` |
| **molfeat** | Molecular featurisation (100+ featurisers) | `"Generate ECFP fingerprints for ML training"` |
| **torchdrug** | Drug discovery with PyTorch (GNNs, RL) | `"Train a graph neural network for molecular property prediction"` |

### Data Analysis & Visualisation

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **exploratory-data-analysis** | Automated EDA on scientific data (200+ formats) | `"Profile this CSV and show data quality issues"` |
| **matplotlib** | Publication-quality static plots | `"Create a volcano plot from my DE results"` |
| **seaborn** | Statistical data visualisation | `"Plot a correlation heatmap of my features"` |
| **plotly** | Interactive visualisations and dashboards | `"Build an interactive scatter plot with hover labels"` |
| **polars** | Fast DataFrame library (lazy evaluation) | `"Process this 10GB CSV efficiently"` |
| **dask** | Distributed computing for larger-than-RAM data | `"Run parallel analysis across these 50 files"` |
| **networkx** | Graph and network analysis | `"Find community structure in this interaction network"` |
| **aeon** | Time series ML (classification, forecasting) | `"Classify these time series and detect anomalies"` |
| **statistical-analysis** | Hypothesis testing and statistical methods | `"Run a two-sample t-test on treatment vs control"` |
| **geopandas** | Geospatial vector data analysis | `"Create a choropleth map of disease prevalence by region"` |
| **vaex** | Out-of-core DataFrames for billion-row datasets | `"Explore this massive dataset without loading it all into RAM"` |

### Machine Learning & Deep Learning

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **scikit-learn** | Classical ML (classification, regression, clustering) | `"Train a random forest on my clinical features"` |
| **statsmodels** | Statistical models and time series | `"Fit a Cox proportional hazards model"` |
| **pytorch-lightning** | Structured deep learning training | `"Train an image classifier with early stopping"` |
| **transformers** | Hugging Face models (NLP, vision, audio) | `"Fine-tune a BioBERT model on my abstracts"` |
| **shap** | Explainable AI (feature importance) | `"Explain my model's predictions with SHAP values"` |
| **scikit-survival** | Survival analysis with ML | `"Fit a survival random forest on my patient data"` |
| **umap-learn** | Dimensionality reduction (UMAP) | `"Embed my high-dimensional data in 2D with UMAP"` |
| **stable-baselines3** | Reinforcement learning algorithms | `"Train an RL agent for molecular optimisation"` |
| **sympy** | Symbolic mathematics | `"Derive the analytical solution to this ODE"` |
| **pymoo** | Multi-objective optimisation | `"Optimise potency and selectivity simultaneously"` |
| **torch_geometric** | Graph neural networks (PyG) | `"Build a GNN for molecular graph classification"` |

### Biophysics & Simulation

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **astropy** | Astronomy and astrophysics computations | `"Convert these coordinates and query the SDSS catalogue"` |
| **fluidsim** | Computational fluid dynamics | `"Simulate 2D turbulence with the Navier-Stokes solver"` |
| **neurokit2** | Biosignal processing (ECG, EEG, EDA) | `"Analyse heart rate variability from this ECG recording"` |
| **histolab** | Whole slide image tile extraction | `"Extract tissue tiles from this WSI for deep learning"` |
| **pathml** | Computational pathology toolkit | `"Segment nuclei in this H&E stained image"` |
| **pydicom** | DICOM medical image processing | `"Read metadata and pixel data from these CT scans"` |
| **simpy** | Discrete-event simulation | `"Simulate patient flow through an emergency department"` |
| **pymatgen** | Materials science (crystal structures, phase diagrams) | `"Analyse the electronic structure of this crystal"` |
| **pymc** | Bayesian statistical modelling | `"Fit a hierarchical Bayesian model to my clinical data"` |

### Literature, Writing & Communication

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **literature-review** | Systematic literature review methodology | `"Conduct a systematic review of CRISPR therapeutics"` |
| **scientific-writing** | Scientific manuscript drafting | `"Write the Methods section for my paper"` |
| **citation-management** | BibTeX and citation handling | `"Generate a bibliography from these DOIs"` |
| **peer-review** | Structured manuscript review | `"Review this manuscript for methodological issues"` |
| **hypothesis-generation** | Structured hypothesis formulation | `"Generate testable hypotheses for this observation"` |
| **scientific-brainstorming** | Structured research ideation | `"Brainstorm experimental approaches for this question"` |
| **scientific-critical-thinking** | Critical evaluation of scientific claims | `"Evaluate the evidence for this conclusion"` |
| **research-grants** | Grant proposal development (NIH, NSF, DOE) | `"Help me write Specific Aims for my R01"` |
| **clinical-reports** | Clinical report writing (CARE guidelines) | `"Draft a clinical case report"` |
| **clinical-decision-support** | Biomarker-stratified treatment documentation | `"Create a clinical decision support document"` |
| **market-research-reports** | 50+ page market research reports | `"Generate a market report for cell therapy"` |
| **paper-2-web** | Convert papers to websites/videos/posters | `"Turn my paper into an interactive website"` |
| **perplexity-search** | AI-powered web search with real-time data | `"Search for the latest developments in AlphaFold"` |
| **markitdown** | Convert files to Markdown | `"Convert this PDF to Markdown"` |
| **scientific-visualization** | Scientific figure creation | `"Create a publication-quality figure for my data"` |
| **scientific-schematics** | Scientific diagrams and schematics | `"Draw a schematic of my experimental workflow"` |
| **venue-templates** | Conference-specific formatting templates | `"Format my paper for Nature submission"` |
| **latex-posters** | LaTeX research poster creation | `"Create a beamerposter for my conference"` |
| **pptx-posters** | PowerPoint research poster creation | `"Design a poster in PowerPoint format"` |
| **scholar-evaluation** | Evaluate research impact and metrics | `"Assess the scholarly impact of this researcher"` |

### Database Skills

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **pubmed-database** | PubMed biomedical literature (36M+ citations) | `"Search PubMed for CAR-T therapy clinical trials"` |
| **biorxiv-database** | bioRxiv preprint search | `"Find recent preprints on spatial transcriptomics"` |
| **openalex-database** | OpenAlex scholarly literature (240M+ works) | `"Analyse citation trends for CRISPR papers"` |
| **chembl-database** | ChEMBL bioactive molecules and drug data | `"Find all compounds with IC50 < 100nM against EGFR"` |
| **drugbank-database** | DrugBank comprehensive drug information | `"Look up drug interactions for metformin"` |
| **clinicaltrials-database** | ClinicalTrials.gov API v2 | `"Find recruiting Phase 3 trials for breast cancer"` |
| **fda-database** | openFDA (adverse events, labelling, recalls) | `"Check adverse events reported for this drug"` |
| **ensembl-database** | Ensembl genome annotations (250+ species) | `"Get the exon structure of TP53"` |
| **gene-database** | NCBI Gene (E-utilities/Datasets) | `"Look up gene function and GO annotations"` |
| **geo-database** | NCBI GEO gene expression data | `"Find RNA-seq datasets for Alzheimer's disease"` |
| **clinvar-database** | ClinVar variant pathogenicity | `"Check pathogenicity of BRCA1 c.5266dupC"` |
| **cosmic-database** | COSMIC somatic mutations in cancer | `"Find recurrent mutations in melanoma"` |
| **gwas-database** | GWAS Catalog SNP-trait associations | `"Find GWAS hits associated with BMI"` |
| **uniprot-database** | UniProt protein sequences and annotations | `"Get functional domains for human insulin receptor"` |
| **pdb-database** | RCSB PDB 3D structures | `"Find crystal structures of SARS-CoV-2 spike protein"` |
| **alphafold-database** | AlphaFold predicted structures (200M+) | `"Fetch the AlphaFold model for this UniProt ID"` |
| **kegg-database** | KEGG pathways and metabolic maps | `"Map my gene list to KEGG pathways"` |
| **reactome-database** | Reactome biological pathways | `"Find all pathways involving PI3K signalling"` |
| **string-database** | STRING protein-protein interactions | `"Build an interaction network for my gene list"` |
| **hmdb-database** | Human Metabolome Database (220K+ metabolites) | `"Identify this metabolite from its mass spectrum"` |
| **metabolomics-workbench-database** | NIH Metabolomics Workbench | `"Search for metabolomics studies on diabetes"` |
| **pubchem-database** | PubChem compounds (110M+) | `"Find compounds structurally similar to aspirin"` |
| **zinc-database** | ZINC purchasable compounds for virtual screening | `"Get a library of lead-like compounds"` |
| **brenda-database** | BRENDA enzyme kinetic parameters | `"Get Km and kcat values for this enzyme"` |
| **ena-database** | European Nucleotide Archive (raw sequences) | `"Download FASTQ files for this SRA accession"` |
| **opentargets-database** | Open Targets drug target discovery | `"Assess BRAF as a therapeutic target"` |
| **clinpgx-database** | ClinPGx pharmacogenomics | `"Check pharmacogenomic guidelines for warfarin"` |
| **uspto-database** | USPTO patent search | `"Search for patents related to CRISPR delivery"` |
| **datacommons-client** | Data Commons public statistics | `"Get population health statistics for California"` |

### Financial Analysis

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **edgartools** | SEC EDGAR filings analysis | `"Analyse Moderna's latest 10-K filing"` |
| **alpha-vantage** | Real-time and historical market data | `"Get MRNA stock price history and technicals"` |
| **fred-economic-data** | Federal Reserve economic time series | `"Plot GDP growth and inflation over the last decade"` |
| **usfiscaldata** | US fiscal and treasury data | `"Get federal debt and spending trends"` |
| **hedgefundmonitor** | OFR Hedge Fund Monitor (systemic risk) | `"Check hedge fund leverage and risk metrics"` |
| **denario** | Multiagent AI for scientific research automation | `"Automate a research pipeline from hypothesis to paper"` |

### Lab Automation & Integrations

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **opentrons-integration** | Opentrons OT-2/Flex robot protocols | `"Write a protocol for serial dilution on OT-2"` |
| **pylabrobot** | Python lab robot control (Hamilton, Tecan) | `"Automate my liquid handling workflow"` |
| **ginkgo-cloud-lab** | Ginkgo Cloud Lab autonomous experiments | `"Run cell-free protein expression remotely"` |
| **adaptyv** | Cloud lab for protein testing and validation | `"Validate protein expression and run binding assays"` |
| **benchling-integration** | Benchling R&D platform (DNA/protein registry) | `"Register sequences and manage inventory in Benchling"` |
| **labarchive-integration** | LabArchives ELN | `"Create an electronic notebook entry for today's experiment"` |
| **latchbio-integration** | Latch bioinformatics workflow platform | `"Deploy a Nextflow pipeline on Latch"` |
| **dnanexus-integration** | DNAnexus cloud genomics | `"Upload data and run an analysis on DNAnexus"` |
| **omero-integration** | OMERO microscopy data management | `"Retrieve microscopy images and ROI annotations"` |
| **protocolsio-integration** | Protocols.io protocol sharing | `"Publish my protocol on Protocols.io"` |
| **open-notebook** | Open-source research notebook (NotebookLM alternative) | `"Organise my research documents and generate insights"` |
| **iso-13485-certification** | ISO 13485 QMS documentation for medical devices | `"Generate a quality manual and gap analysis"` |

### Document Processing

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **document-skills/docx** | Word document creation and editing | `"Create a formatted Word report from my data"` |
| **document-skills/pdf** | PDF manipulation (extract, create, merge, split) | `"Extract tables from this PDF and merge two PDFs"` |
| **document-skills/pptx** | PowerPoint creation and editing | `"Build a 15-slide presentation from my outline"` |
| **document-skills/xlsx** | Excel spreadsheet creation and analysis | `"Create a spreadsheet with formulas and charts"` |
| **generate-image** | AI image generation (FLUX, Gemini) | `"Generate an illustration for my paper's graphical abstract"` |

### Quantum Computing

| Skill | Description | Sample Usage |
|-------|-------------|--------------|
| **qiskit** | IBM quantum circuits and hardware | `"Build a Grover's search circuit for 3 qubits"` |
| **cirq** | Google quantum computing framework | `"Design a noise-aware circuit for Google hardware"` |
| **pennylane** | Hardware-agnostic quantum ML | `"Train a variational quantum classifier"` |
| **qutip** | Quantum physics simulation | `"Simulate decoherence of a two-qubit system"` |

---

## Plugin Architecture

```
claude-scientific-skills/
├── .claude-plugin/
│   ├── plugin.json          # Plugin metadata
│   └── marketplace.json     # Marketplace entry with skill registry
├── commands/                # 24 multi-step workflow commands
│   ├── drug-discovery.md
│   ├── single-cell-analysis.md
│   ├── literature-review.md
│   ├── variant-analysis.md
│   ├── multi-omics.md
│   ├── virtual-screening.md
│   ├── network-biology.md
│   ├── clinical-trial-search.md
│   ├── protein-engineering.md
│   ├── statistical-analysis.md
│   ├── hypothesis-generation.md
│   ├── scientific-writing.md
│   ├── grant-writing.md
│   ├── peer-review.md
│   ├── scientific-poster.md
│   ├── scientific-slides.md
│   ├── market-research.md
│   ├── eda.md
│   ├── lab-protocol.md
│   ├── quantum-computing.md
│   ├── financial-analysis.md
│   ├── geospatial-analysis.md
│   ├── medical-imaging.md
│   └── treatment-plan.md
├── skills/                  # 148+ individual skills
│   ├── scanpy/
│   │   └── SKILL.md
│   ├── rdkit/
│   │   └── SKILL.md
│   ├── pubmed-database/
│   │   └── SKILL.md
│   └── ...
└── README.md
```

Each **command** is a Markdown file defining a multi-step workflow that orchestrates multiple skills. Commands follow a structured pipeline pattern with clearly defined stages.

Each **skill** is a directory containing a `SKILL.md` file with:

- Description and trigger phrases
- Installation instructions (pip/conda packages)
- Best practices and code patterns
- Common pitfalls and troubleshooting

---

## Contributing

Contributions are welcome! To add a new skill:

1. Create a directory under `skills/` with your skill name
2. Add a `SKILL.md` following the existing format
3. Register the skill path in `.claude-plugin/marketplace.json`
4. Submit a pull request

---

## License

MIT — see [LICENSE](LICENSE) for details.

---

**Built by [K-Dense Inc.](https://k-dense.ai)** — Transforming AI agents into research assistants.
