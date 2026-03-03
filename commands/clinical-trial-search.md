---
description: Search and analyse clinical trials for a condition or drug
argument-hint: [condition, drug, or NCT ID]
allowed-tools: Read, Write, Edit, Bash
---

Search and analyse clinical trials for: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **Trial search** — Use the clinicaltrials-database skill to search ClinicalTrials.gov. Filter by status (recruiting, completed), phase, intervention type, and location.

2. **Trial details** — For specific trials of interest, retrieve full eligibility criteria, endpoints, study design, and site locations.

3. **Drug context** — Use the chembl-database skill to retrieve mechanism of action data. Use the drugbank-database skill for drug interaction and pharmacology information. Use the fda-database skill for regulatory status and adverse event reports.

4. **Biomarker context** — Use the clinvar-database and clinpgx-database skills to identify relevant biomarkers and pharmacogenomic considerations.

5. **Literature** — Use the pubmed-database skill to find published results from completed trials and relevant review articles.

6. **Competitive landscape** — Summarise the trial landscape: how many trials by phase, which sponsors are most active, what endpoints are being used, and what patient populations are being studied.

7. **Report** — Generate a structured clinical trial landscape report with: search methodology, trial summary table, competitive analysis, endpoint analysis, and key findings.

Save the report to the working directory.
