---
description: Perform a peer review of a manuscript or analysis
argument-hint: [manuscript-file-path]
allowed-tools: Read, Write, Edit, Bash
---

Perform a thorough peer review of: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **Read the manuscript** — Read the full document. Identify the research question, methods, results, and conclusions.

2. **Peer review assessment** — Use the peer-review skill for structured evaluation criteria covering: originality, methodology soundness, statistical rigour, clarity of presentation, and significance of findings.

3. **Critical thinking** — Use the scientific-critical-thinking skill to identify: logical fallacies, unsupported claims, missing controls, confounding variables, and alternative explanations.

4. **Literature check** — Use the pubmed-database and openalex-database skills to verify key claims and check whether important prior work has been cited.

5. **Statistical review** — Use the statistical-analysis skill to evaluate whether statistical methods are appropriate, sample sizes are adequate, effect sizes are reported, and multiple testing corrections are applied.

6. **Review report** — Generate a structured peer review with:
   - Summary of the paper
   - Major concerns (methodology, validity, significance)
   - Minor concerns (clarity, presentation, missing references)
   - Specific suggestions for improvement
   - Overall recommendation (accept, minor revision, major revision, reject)

Save the review to the working directory.
