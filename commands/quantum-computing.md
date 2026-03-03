---
description: Design and simulate quantum circuits or algorithms
argument-hint: [algorithm or problem description]
allowed-tools: Read, Write, Edit, Bash
---

Design and simulate quantum computing workflows for: $ARGUMENTS

Use the following skills (read each SKILL.md before using):

1. **Framework selection** — Choose the appropriate quantum framework:
   - Use the qiskit skill for IBM Quantum / general-purpose quantum computing
   - Use the cirq skill for Google Quantum / NISQ algorithms
   - Use the pennylane skill for quantum machine learning and variational algorithms
   - Use the qutip skill for open quantum systems simulation

2. **Circuit design** — Design quantum circuits for the specified algorithm or problem. Include parameterised circuits for variational methods.

3. **Simulation** — Run simulations using the selected framework's simulator backend. Analyse measurement statistics, fidelity, and convergence.

4. **Analysis** — Use the matplotlib skill for circuit diagrams and result visualisations. Use the sympy skill for symbolic quantum mechanics calculations where needed.

5. **Report** — Generate results including: circuit diagram, simulation outputs, performance analysis, and recommendations for hardware execution.

Save all outputs to the working directory.
