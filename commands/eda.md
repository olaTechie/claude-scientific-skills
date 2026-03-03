---
description: Perform exploratory data analysis on a dataset
argument-hint: [data-file-path]
allowed-tools: Read, Write, Edit, Bash
---

Perform exploratory data analysis on: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **Data loading** — Load the dataset using the appropriate tool (pandas, polars, scanpy, etc.). Support CSV, TSV, Excel, HDF5, and other formats.

2. **EDA workflow** — Use the exploratory-data-analysis skill for a structured approach: data shape and types, missing values, distributions, correlations, and outliers.

3. **Statistical summary** — Use the statistical-analysis skill for descriptive statistics and normality testing.

4. **Visualisation** — Use the matplotlib and seaborn skills for: histograms, boxplots, scatter matrices, correlation heatmaps, and distribution plots. Use the plotly skill for interactive visualisations.

5. **Data quality assessment** — Flag data quality issues: missing values, duplicates, inconsistent formatting, outliers, and potential errors.

6. **Key findings** — Summarise the most important patterns, relationships, and anomalies found in the data. Recommend next steps for deeper analysis.

Save the EDA report and figures to the working directory.
