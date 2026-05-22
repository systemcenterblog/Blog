# 🔐 AI Security via Identity – Q\&A with Proposed Approach

❓ 1. Do we know what AI systems exist in our environment?

Answer:

Most enterprises do not have full visibility of AI usage. AI agents, automation scripts, SaaS AI tools, and developer integrations often operate outside traditional governance (“shadow AI”).

**Proposed approach:**

* Build a central AI inventory (like CMDB for AI)
* Discover:
  * AI SaaS tools (Copilot, ChatGPT, etc.)
  * Internal AI apps and APIs
  * Automated workflows and agents
* Tag each AI system with:
  * Owner
  * Purpose
  * Risk classification

&#x20;

❓ 2. Are AI systems treated as identities?

Answer:

Traditionally, AI runs under service accounts or API keys, meaning:

* No accountability
* Shared credentials
* Poor traceability

**Proposed approach:**

* Treat every AI system as an identity (non-human identity)
* Assign:
  * Unique identity (not shared accounts)
  * Named owner (business accountability)
* Apply the same governance as:
  * Users
  * Devices

&#x20;

❓ 3. What access do AI systems have?

Answer:

AI agents often have broad or uncontrolled access, including:

* APIs (Graph, ServiceNow, etc.)
* Data stores
* SaaS platforms

This creates high-risk attack paths.

**Proposed approach:**

* Enforce least privilege access
  * Only grant what is strictly required
* Replace static credentials with:
  * Short-lived tokens
* Use:
  * Role-based or attribute-based access control
* Regularly review and certify access

&#x20;

❓ 4. How are AI systems authenticated?

Answer:

Many AI systems rely on:

* Hardcoded API keys
* Long-lived tokens

These are high-risk and difficult to rotate.

**Proposed approach:**

* Use modern authentication mechanisms, such as:
  * Token-based authentication
  * Dynamic credentials
* Eliminate:
  * Hardcoded secrets
  * Shared credentials
* Integrate AI systems into the same identity authentication framework as users and apps

&#x20;

❓ 5. Can we control what AI systems do?

Answer:

Without governance, AI systems can:

* Access data beyond intended scope
* Execute unintended actions
* Operate without oversight

**Proposed approach:**

* Define policy-based control:
  * What the AI can access
  * What actions it can perform
* Enforce centrally (not at app level)
* Apply Zero Trust principles:
  * Never trust, always verify
  * Validate every request

&#x20;

❓ 6. Do we have lifecycle control over AI systems?

Answer:

AI systems are often:

* Created ad hoc
* Left running indefinitely
* Never decommissioned

**Proposed approach:**

* Implement identity lifecycle management for AI:
  * Onboarding approval
  * Periodic review
  * Automated deprovisioning
* Introduce:
  * “Kill switch” capability for rapid shutdown
* Integrate into:
  * DevOps / release pipelines

&#x20;

❓ 7. Are AI activities monitored and auditable?

Answer:

In many environments:

* AI actions are not logged consistently
* No clear audit trail exists

**Proposed approach:**

* Log:
  * Authentication events
  * Access requests
  * Actions performed by AI
* Integrate with:
  * SIEM / monitoring platforms
* Enable:
  * Full traceability (who / what / when / why)

&#x20;

❓ 8. Can we detect and respond to AI-related threats?

Answer:

AI introduces new risks:

* Data exfiltration
* API abuse
* Rogue or compromised agents

Traditional controls may not detect these in real time.

**Proposed approach:**

* Implement continuous monitoring:
  * Behavioural analysis
  * Risk scoring
* Trigger automated responses:
  * Session termination
  * Access restriction
  * Step-up authentication
* Combine identity signals with:
  * Endpoint
  * Network
  * Application telemetry

&#x20;

❓ 9. How do we secure AI-to-system interactions?

Answer:

AI systems frequently interact across multiple applications and APIs, often with:

* Implicit trust
* Poor visibility

**Proposed approach:**

* Centralize control at the identity layer
* Secure:
  * API-to-API interactions
  * AI-to-app integrations
* Use:
  * Policy-based authorization
  * Scoped access tokens
* Eliminate:
  * Direct unmanaged connections

&#x20;

❓ 10. How does this align with Zero Trust?

Answer:

AI breaks traditional perimeter-based security:

* Systems act autonomously
* Decisions happen at machine speed

**Proposed approach:**

* Extend Zero Trust to AI:
  * Verify every request (user, device, AI)
  * Enforce identity-based access
  * Continuously evaluate trust
* Treat AI agents as high-risk identities by default

&#x20;

✅ Final Summary

Key principle:

AI security is fundamentally an identity and access problem.

Proposed enterprise model:

* Central identity layer governs:
  * Users
  * Devices
  * AI systems

User / Device / AI Agent\
&#x20;       ↓\
Identity & Access Control Layer\
&#x20;       ↓\
Apps / APIs / Data / AI Platforms<br>

&#x20;

💡 Practical and technical takeaway for your role: EUC / endpoint / Intune responsibilities cover:

* Device compliance
* App deployment
* Conditional Access control based on signals (Human Identity authentication, authorisation and Device Status)

👉 This approach adds:

* Identity-driven control of AI behaviour
* Governance of AI access (not just apps)
