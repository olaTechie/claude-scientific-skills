---
description: Design a laboratory protocol or automation workflow
argument-hint: [experiment-type or protocol-description]
allowed-tools: Read, Write, Edit, Bash
---

Design a laboratory protocol for: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **Protocol design** — Use the protocolsio-integration skill to search for existing protocols on protocols.io as starting points.

2. **Liquid handling** — Use the pylabrobot skill to design automated liquid handling protocols (pipetting, dilutions, plate transfers). Use the opentrons-integration skill for Opentrons-specific protocol generation.

3. **Cloud lab** (optional) — Use the ginkgo-cloud-lab skill for cell-free protein expression workflows. Use the adaptyv skill for automated protein testing and validation.

4. **LIMS integration** — Use the benchling-integration skill for Benchling-based experiment tracking. Use the labarchive-integration skill for LabArchives electronic notebook integration.

5. **Open notebook** — Use the open-notebook skill for structured experiment documentation following open science practices.

6. **Safety & compliance** — If working with medical devices, use the iso-13485-certification skill for regulatory compliance guidance.

7. **Output** — Generate: step-by-step protocol with reagent quantities, automation scripts (if applicable), equipment requirements, safety considerations, and expected outcomes.

Save the protocol and any automation scripts to the working directory.
