# Claim-Check Worksheet

From the chapter "Auditable Claims about AI Agents". Use it to turn a statement about an AI agent into a claim an auditor can check.

## Definition

A claim about an AI agent is *auditable* when four things are specified: policy and version, actions and period covered, required records obtainable from named writers, and the decision rule.

The decision rule says which records would make the claim **supported** or **contradicted** and which absence would leave it **undecidable**. Whether those records survive a particular run is a separate question.

## Three Conditions Agents Add

1. **Coverage.** An authenticated, in-scope exception contradicts a claim about every action. Supporting such a claim needs evidence that every relevant action was captured, such as an independent record of effects or a gateway that every such action must pass.
2. **Authorization.** A logged confirmation records an interface event attributed to an account. Where policy requires authorization, check a valid grant against the action and the arguments that set its effect. A grant shows a person's approval only when its issuing flow required one. Neither record shows what the person understood. Approving every action one at a time may invite automation bias; a grant approved once for a scoped batch keeps approval checkable at lower cost.
3. **Integrity versus completeness.** A signature authenticates the entries supplied, and a hash chain anchored with an independent party exposes later edits to the entries it covers. Neither can reveal an event that was never written; that needs the coverage evidence of condition 1.

## Six Common Claims

| Claim as stated | Decision rule and minimum evidence | Out of reach |
|---|---|---|
| C1 "The deployed agent is the one we documented." | Run-record identifiers of the model, co-versioned tool schemas, and each versioned system control (approval gate, execution policy) match those in force | That model documentation covers the system's controls |
| C2 "Every external action is logged." | Each external action, with its effect-setting arguments and a correlation identifier, reconciled in both directions with an independent record that every relevant action must reach | That no action bypassed every recorded path |
| C3 "A person approves every external transmission." | A user-approved grant from the authorization server whose scope covers each such action and its arguments, valid when it ran | What the approver understood; legal responsibility |
| C4 "The agent follows policy P." | Policy text and version in force, evaluated on the C2 and C3 records; undecidable if a required field is absent | Semantic rules, such as "discloses no identifying information" |
| C5 "Our logs are complete and tamper-proof." | Signatures and chain checked against keys and a checkpoint held by another party; completeness tested against a record the agent does not write | That the log is tamper-proof; events no second record covers |
| C6 "Our evaluation shows the agent catches over-privilege." | Evaluated object and tool version named; each data source compared with a trivial baseline; pinned rerun | Transfer to a new deployment or data source |

## Your Claim

- Claim as stated:
- Policy and version:
- Actions and period covered:
- Required records, who writes each, and how you will obtain them:
- Decision rule (what supports, what contradicts, what leaves it undecidable):
- What stays out of reach:
