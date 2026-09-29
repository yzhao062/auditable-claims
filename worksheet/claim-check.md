# Claim-Check Worksheet

From the chapter "Auditable Claims about AI Agents". Use it to turn a statement about an AI agent into a claim an auditor can check.

## Definition

A claim about an AI agent is *auditable* when four things are specified: policy and version, actions and period covered, required records and their writers, and the decision rule.

The decision rule says which records would make the claim **supported** or **contradicted** and which absence would leave it **undecidable**. Whether the required records exist is a separate question.

## Three Conditions Agents Add

1. **Coverage.** An authenticated, in-scope exception contradicts a claim about every action. Supporting such a claim needs evidence that every relevant action was captured, such as an independent record of effects or a gateway that every such action must pass.
2. **Authorization.** A logged confirmation records an interface event attributed to an account. Where policy requires authorization, check a valid grant against the action and the arguments that set its effect. Neither record shows what the person understood.
3. **Integrity versus completeness.** A verified signature or anchored hash chain detects changes to entries after they were written. It cannot reveal an event that was never written; that needs the coverage evidence of condition 1.

## Six Common Claims

| Claim as stated | Decision rule and minimum evidence | Out of reach |
|---|---|---|
| C1 "The deployed agent is the one we documented." | Run-record identifiers of the model, co-versioned tool schemas, and each versioned system control (approval gate, execution policy) match those in force | That model documentation covers the system's controls |
| C2 "Every external action is logged." | Each policy-relevant action, with its effect-setting arguments and a correlation identifier, reconciled in both directions with an independent record of effects | That no action bypassed every recorded path |
| C3 "A person approves every external transmission." | A grant from the authorization server for each such action, valid when it ran and matched to its arguments | What the approver understood; legal responsibility |
| C4 "The agent follows policy P." | Policy text and version in force, evaluated on the C2 and C3 records; undecidable if a required field is absent | Semantic rules, such as "discloses no identifying information" |
| C5 "Our logs are complete and tamper-proof." | Chain and signatures verified under managed keys; completeness tested against a record the agent does not write | Events of a class no second record covers |
| C6 "Our evaluation shows the agent catches over-privilege." | Evaluated object and tool version named; each data source compared with a trivial baseline; pinned rerun | Transfer to a new deployment or data source |

## Your Claim

- Claim as stated:
- Policy and version:
- Actions and period covered:
- Required records, and who writes each:
- Decision rule (what supports, what contradicts, what leaves it undecidable):
- What stays out of reach:
