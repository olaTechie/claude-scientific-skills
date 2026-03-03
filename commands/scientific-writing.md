---
description: Draft a scientific manuscript section or full paper
argument-hint: [section-type and topic, e.g. "methods for RNA-seq study"]
allowed-tools: Read, Write, Edit, Bash
---

Draft scientific writing for: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **Writing guidance** — Use the scientific-writing skill for style, structure, and conventions appropriate to the target journal or audience.

2. **Literature context** — Use the pubmed-database and openalex-database skills to find key references that should be cited. Use the citation-management skill to manage the bibliography.

3. **Drafting** — Write the requested section(s) following scientific conventions:
   - **Abstract**: structured summary (background, methods, results, conclusions)
   - **Introduction**: context, gap, aim, significance
   - **Methods**: reproducible detail, statistical approach, ethics
   - **Results**: data-driven narrative with reference to figures/tables
   - **Discussion**: interpretation, comparison to literature, limitations, future directions

4. **Figures & tables** — Use the matplotlib, seaborn, or plotly skills to create any needed figures. Use the scientific-visualization skill for guidance on effective data presentation.

5. **Peer review check** — Use the peer-review skill to self-review the draft for common issues: logical flow, unsupported claims, missing references, statistical reporting standards, and clarity.

6. **Document formatting** — If a formatted document is needed, use the docx document skill (Word) or the latex-posters skill (LaTeX). Use the venue-templates skill if targeting a specific journal.

Save the manuscript draft and any figures to the working directory.
