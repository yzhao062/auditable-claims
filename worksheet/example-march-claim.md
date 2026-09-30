# Filled Worksheet: The March Claim

The worked case from the chapter "Auditable Claims about AI Agents", filled in with `claim-check.md`. The records are constructed for teaching; no agent was run.

A tag in brackets names the question of the Auditability Card (Nian et al., *Auditable Agents*) whose answer supplies the field: Q1 actions, Q2 phases, Q3 policies, Q4 attribution, Q5 integrity, Q6 missing logs. The Card states what a system records; the worksheet uses those answers to check one claim.

- **Claim as stated:** "A person approves every external email."
- **Policy and version:** P-7, version 3: each email with an attachment sent outside `example-firm.com` must fall within a grant from the authorization server that names its recipient and attachment hash. A signed-in person must approve the grant before sending; grants an agent obtains on its own behalf do not count. One grant may list several documents for one recipient, so a person approves a batch once.
- **Actions and period covered:** emails with an attachment that the agent sent to external addresses from 1 to 31 March 2026. Emails without attachments and other versions of P-7 are out of scope.
- **Required records, who writes each, and how you will obtain them:** the agent log, written by the agent and supplied by the operator [Q1]. The grant log, written by the authorization server and exported by the identity team [Q2, Q4]. The delivery log, written by the mail gateway that every external email must pass and exported by IT; it is the independent record. The agent log is signed and hash-chained, but no party outside the operator holds a checkpoint [Q5].
- **Decision rule** [Q3]: **supported** if the gateway log is complete for March and every delivery in it matches a grant approved before sending that names its recipient and hash. **Contradicted** by any authenticated delivery in scope that no grant in a complete server log covers. **Undecidable** otherwise.
- **Result:** **contradicted** by `tx-23` (State C). The verdicts for `tx-31` and the fourth email of State E stay **undecidable**.
- **Gaps and next steps** [Q6]: log the correlation identifier on every send (State D). Have the gateway record the sending client (State E). Anchor the agent log with a checkpoint held by another party. Check the grant at the gateway before delivery, so that next March's records can support the claim as well as contradict it.
- **What stays out of reach:** what `user:alvarez` understood or intended, and who bears legal responsibility.
