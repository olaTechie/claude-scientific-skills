---
description: Generate a clinical treatment plan based on patient data
argument-hint: [condition and patient-details]
allowed-tools: Read, Write, Edit, Bash
---

Generate a clinical treatment plan for: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **Clinical assessment** — Use the clinical-decision-support skill for evidence-based clinical decision frameworks.

2. **Drug information** — Use the drugbank-database skill for drug interactions, contraindications, and dosing. Use the chembl-database skill for mechanism of action data. Use the fda-database skill for adverse event reports and safety alerts.

3. **Pharmacogenomics** — Use the clinpgx-database skill to check for pharmacogenomic considerations affecting drug selection and dosing.

4. **Guideline evidence** — Use the pubmed-database skill to search for clinical practice guidelines, systematic reviews, and meta-analyses.

5. **Clinical trials** — Use the clinicaltrials-database skill to identify relevant recruiting clinical trials the patient might be eligible for.

6. **Treatment plan** — Use the treatment-plans skill for structured treatment plan formatting. Include: diagnosis summary, treatment goals, medication recommendations with dosing, monitoring parameters, follow-up schedule, and patient education points.

7. **Report** — Use the clinical-reports skill to generate a formatted clinical report. Include appropriate disclaimers about AI-generated clinical content.

Save the treatment plan to the working directory.
