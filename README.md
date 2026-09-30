# Auditable Claims about AI Agents

Companion materials for the chapter "Auditable Claims about AI Agents" by Yue Zhao, Jiate Li, Li Li, Yi Nian, Jinbo Liu, Xiaolin Zhou, and Xiyang Hu, submitted to the Springer volume *Trustworthy AI Agents: Toward Safe, Secure and Sovereign Agents* (editor Mark Maybury).

The chapter asks when a claim about a deployed AI agent can be checked from records. A claim is auditable when its policy, scope, obtainable records with their writers, and decision rule are specified before any verdict; the check then returns supported, contradicted, or undecidable.

## Contents

| Path | What it holds |
|---|---|
| `worksheet/claim-check.md` | The definition, the three conditions agents add, and the six-claim table, as a worksheet for a new claim |
| `worksheet/example-march-claim.md` | The worksheet filled for the March claim of the worked case, with each field tagged by the Auditability Card question that supplies it |
| `case/records.jsonl` | The two illustrative agent log records from the worked case (constructed for teaching; no agent was run) |
| `reproduce/catchbench-pre/` | Pinned environment, script, and expected output for the evaluation score in the chapter's practice box |

## Reproduce the Practice Box

In a fresh Python 3.12 environment:

```bash
cd reproduce/catchbench-pre
./run.sh
```

The script installs the pinned packages, runs `catchbench --task pre`, and compares the output with `expected-output.txt` byte for byte. It runs offline in about a second after installation. The benchmark itself is at <https://github.com/yzhao062/catchbench>.

## Citation

The chapter is under review. Until it is published, please cite this repository and the CatchBench preprint (arXiv:2608.22808). The chapter's practice box clones tag `v1.0` of this repository; the reproduction files are unchanged since then.

## License

Code is released under the MIT License (`LICENSE`). The worksheet and other text are released under CC BY 4.0 (<https://creativecommons.org/licenses/by/4.0/>).
