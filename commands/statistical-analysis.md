---
description: Run statistical analysis on a dataset
argument-hint: [data-file-path or description]
allowed-tools: Read, Write, Edit, Bash
---

Perform statistical analysis on $ARGUMENTS.

Use the following skills (read each SKILL.md before using):

1. **Data loading & EDA** — Use the exploratory-data-analysis skill for initial data profiling. Load data with pandas, polars, or the appropriate format reader.

2. **Descriptive statistics** — Use the statistical-analysis skill to compute summary statistics, distributions, and normality tests.

3. **Hypothesis testing** — Apply appropriate statistical tests based on data type and research question: t-tests, ANOVA, chi-squared, Mann-Whitney U, Kruskal-Wallis, or others as indicated by the data.

4. **Regression & modelling** — Use the statsmodels skill for linear/logistic regression, mixed-effects models, survival analysis, or time-series modelling as appropriate.

5. **Machine learning** (optional) — Use the scikit-learn skill for predictive modelling, cross-validation, and feature importance. Use the shap skill for model interpretability.

6. **Bayesian analysis** (optional) — Use the pymc skill for Bayesian inference when prior information is available or when uncertainty quantification is needed.

7. **Visualisation** — Use the matplotlib, seaborn, or plotly skills to create publication-quality statistical figures: boxplots, scatter plots, forest plots, ROC curves, calibration plots, and more.

8. **Report** — Summarise findings with effect sizes, confidence intervals, p-values, and appropriate caveats about multiple testing, assumptions, and limitations.

Save analysis code, figures, and report to the working directory.
