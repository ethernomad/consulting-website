+++
title = "VN AI Law Compliance"
description = "Vietnam's AI Law (Law 134/2025/QH15) took effect 1 March 2026. Compliance deadlines begin March 2027. Most organisations are already in scope."
template = "service.html"

[extra]
category = "Law 134/2025/QH15"
hero_gradients = ['rgba(34,197,94,0.18)', 'rgba(167,139,250,0.12)']
hero_tagline = "The law is in effect. Compliance deadlines begin March 2027. Most organisations are already in scope and do not know it."
hero_sub = "On 10 December 2025, the National Assembly passed Vietnam's first standalone AI Law. It took effect on <strong class=\"text-base-content\">1 March 2026</strong>, making Vietnam the first country in Southeast Asia to establish a comprehensive, risk-based AI regulatory framework."
hero_secondary = "View FAQ"
hero_secondary_url = "#faq"
key_capabilities_title = "Key facts"
key_capabilities = [
  "• First standalone AI law in Southeast Asia",
  "• 35 articles, risk-based framework",
  "• Applies to domestic and foreign entities",
  "• Human-centric: AI serves as a support tool",
  "• 12-month grace period (18 for health/edu/finance)",
  "• Implementing Decree 142/2026/NĐ-CP effective 1 May 2026"
]

overview_label = "Timeline"
overview_title = "What's in force and when"
overview_body = [
  "The law introduces obligations in phases. The compliance clock is running — and most organisations have not yet conducted an AI inventory."
]
overview_metrics = [
  { label = "10 Dec 2025", description = "Law passed — National Assembly passes Law 134/2025/QH15 with 90.7% approval." },
  { label = "1 Mar 2026", description = "Law takes effect — All organisations must begin risk classification of AI systems. Human-centric principle and prohibited practices enforceable." },
  { label = "1 May 2026", description = "Implementing decree — Decree 142/2026/NĐ-CP provides implementation guidance for providers, developers, deployers, and users." },
  { label = "1 Mar 2027", description = "Compliance deadline — All AI systems must comply. High-risk systems require registration, documentation, human oversight, and conformity assessment." },
  { label = "1 Sep 2027", description = "Extended deadline — Health, education, and financial sector AI systems have an additional 6 months to comply." }
]

services_grid_label = "Risk classification"
services_grid_title = "Three-tier risk-based framework"
services_grid_description = "Mirroring global regulatory trends, the AI Law categorises systems by their potential impact on human rights, safety, security, and public interests."
services_grid_cols = 3

info_cards_label = "Exposure"
info_cards_title = "Most organisations are in scope and do not know it"
info_cards_description = "The law applies to <strong class=\"text-base-content\">five distinct roles</strong> in the AI value chain. Most organisations occupy at least one — often more than one — without having formally identified their position. Shadow AI adoption across departments means exposure is frequently wider than leadership believes. If your organisation uses a third-party AI tool in a high-risk context, the deployer obligations sit with you. The vendor relationship does not transfer liability."

metric_grid_label = "Obligations"
metric_grid_title = "What compliance requires"
metric_grid_cols = 3

comparison_cols_label = "Highest obligation"
comparison_cols_title = "Which sectors face the highest obligation"

process_label = "Our services"
process_title = "How we help you comply"
process_body = "We help organisations understand their obligations under the VN AI Law and build practical compliance programs that fit real operations."

faq_label = "FAQ"
faq_title = "Common questions"

cta_label = "VN AI Law compliance review"
cta_title = "Know your obligation. Start with a readiness review."
cta_body = "Fixed-fee, four-week engagement. We audit your AI systems, classify them under the law's risk framework, identify gaps, and deliver a prioritised remediation roadmap."
cta_primary = "Start a conversation"
cta_primary_url = "/contact/"
cta_secondary = "Back to top"
cta_secondary_url = "#top"

# Three-tier risk framework
[[extra.services_grid_items]]
icon = "🔴"
title = "High-risk"
description = "Systems that pose significant potential harm to life, health, national security, or lawful rights."
highlights = [
  "Pre-market conformity assessment",
  "Ongoing risk management",
  "Human oversight mechanisms",
  "Registration via national AI portal",
  "Foreign providers: local presence or authorised rep required"
]

[[extra.services_grid_items]]
icon = "🟡"
title = "Medium-risk"
description = "Systems carrying risks such as user confusion or minor market disruptions."
highlights = [
  "Ongoing monitoring reports",
  "Sample audits by authorities",
  "Transparency disclosures to users",
  "Documentation of system purpose and scope"
]

[[extra.services_grid_items]]
icon = "🟢"
title = "Low-risk"
description = "Systems with minimal impact on rights, safety, or public interests."
highlights = [
  "Minimal regulatory oversight",
  "Incident monitoring",
  "Voluntary best-practice guidelines encouraged",
  "AI literacy obligation still applies"
]

# Five roles — Most organisations are in scope
[[extra.info_cards_items]]
icon = "👨‍💻"
title = "Developer"
description = "Designs, builds, trains, or refines AI models with control over technical methods and training data."

[[extra.info_cards_items]]
icon = "🏢"
title = "Provider"
description = "Markets AI systems under their own name, brand, or trademark — regardless of who built it."

[[extra.info_cards_items]]
icon = "⚙️"
title = "Deployer"
description = "Integrates or uses AI systems as part of their service offerings or internal operations."

[[extra.info_cards_items]]
icon = "👤"
title = "User"
description = "Directly interacts with AI systems or relies on their outputs in decision-making."

[[extra.info_cards_items]]
icon = "⚖️"
title = "Affected Party"
description = "Entities whose lawful rights, life, health, property, reputation, or access to services are impacted by AI deployment or outputs."

# Six compliance obligations
[[extra.metric_grid_items]]
label = "AI inventory"
description = "Identify and document every AI system in use across the organisation — including shadow AI adopted without IT knowledge."
color = "primary"

[[extra.metric_grid_items]]
label = "Risk classification"
description = "Classify each system as high, medium, or low risk under the law's criteria. Document the rationale for each classification."
color = "secondary"

[[extra.metric_grid_items]]
label = "Human oversight"
description = "Design and implement mechanisms that keep humans in the loop for all high-risk AI decisions. The law requires humans to remain the final arbiter."
color = "accent"

[[extra.metric_grid_items]]
label = "Technical documentation"
description = "Maintain comprehensive records: system purpose, training data, performance metrics, risk assessment, and operational logs."
color = "primary"

[[extra.metric_grid_items]]
label = "Registration"
description = "High-risk systems must be registered on the national AI portal before the compliance deadline. Foreign providers: local presence or authorised rep required."
color = "secondary"

[[extra.metric_grid_items]]
label = "AI literacy"
description = "Ensure staff who develop, deploy, or use AI systems have appropriate AI literacy — understanding capabilities, limitations, risks, and governance obligations."
color = "accent"

# Sectors comparison
[[extra.comparison_cols_items]]
title = "Which sectors face the highest obligation"
body = [
  "The law applies broadly across the economy, but certain sectors carry substantially higher compliance obligations due to the nature of their AI use cases."
]
features = [
  "Manufacturing — quality inspection AI, predictive maintenance, production analytics",
  "Banking and fintech — fraud detection, credit scoring, KYC automation, customer support AI",
  "Healthcare — clinical decision support, diagnostic assistance, patient triage (extended deadline)",
  "Education — AI tutors, automated grading, student analytics (extended deadline)",
  "HR and recruitment — AI-assisted shortlisting, candidate assessment, workforce planning",
  "Retail and e-commerce — recommendation engines, customer analytics, pricing algorithms",
  "State bodies — automated processing of citizen applications, eligibility decisions",
  "Legal and professional services — AI used in contract review, due diligence, document analysis"
]

[[extra.comparison_cols_items]]
title = "Sector deadlines"
label = "Compliance deadlines by sector"
label_color = "accent"
body = [
  "Different sectors face different compliance deadlines. All non-extended sectors must comply by 1 March 2027."
]
features = [
  "Manufacturing — deadline 1 Mar 2027. 45% of Vietnamese manufacturers already use AI.",
  "Banking & fintech — deadline 1 Mar 2027. KYC, fraud detection, credit scoring in scope.",
  "Healthcare — deadline 1 Sep 2027. Extended deadline applies.",
  "Education — deadline 1 Sep 2027. Extended deadline applies.",
  "Retail & e-commerce — deadline 1 Mar 2027. Recommendation systems, pricing algorithms.",
  "HR & recruitment — deadline 1 Mar 2027. AI screening tools are high-risk."
]

# Process — How we help you comply
[[extra.process_steps]]
step = "Step 1"
title = "AI inventory"
description = "Audit all AI systems in use across the organisation — including shadow AI."

[[extra.process_steps]]
step = "Step 2"
title = "Risk classification"
description = "Classify each system under the law's three-tier framework."

[[extra.process_steps]]
step = "Step 3"
title = "Gap analysis"
description = "Identify where your current practices fall short of obligations."

[[extra.process_steps]]
step = "Step 4"
title = "Remediation roadmap"
description = "Prioritised plan to close gaps before the March 2027 deadline."

# FAQ
[[extra.faq_items]]
question = "Does the VN AI Law apply to my organisation?"
answer = "If your organisation develops, provides, deploys, or uses AI systems in Vietnam — or sells AI products or services to Vietnamese customers — the law applies. This includes foreign entities. Even if you use a third-party AI tool, deployer obligations sit with you. Most organisations are already in scope without knowing it."

[[extra.faq_items]]
question = "What is the compliance deadline?"
answer = "<strong class=\"text-base-content\">1 March 2027</strong> for most AI systems (12 months from the law's effective date). Organisations with AI systems in healthcare, education, and financial services have until <strong class=\"text-base-content\">1 September 2027</strong> (18 months). Prohibited practices have been enforceable since the law took effect."

[[extra.faq_items]]
question = "Do I need a local presence in Vietnam?"
answer = "Foreign providers of <strong class=\"text-base-content\">high-risk</strong> AI systems that require pre-market conformity assessment must establish a commercial presence in Vietnam or appoint an authorised representative. This requirement does not apply to medium- and low-risk systems, but foreign entities are still subject to the law's other obligations."

[[extra.faq_items]]
question = "What are the penalties for non-compliance?"
answer = "The law establishes that violations are subject to administrative sanctions, revocation of licences, suspension of AI system operations, and potential criminal liability depending on the severity. Specific penalty amounts and enforcement mechanisms are being detailed in implementing decrees currently under development."

[[extra.faq_items]]
question = "How is \"AI system\" defined under the law?"
answer = "The law defines AI as \"the implementation, through electronic means, of human intellectual capabilities, including learning, reasoning, perception, judgment, and natural language understanding.\" This definition is borrowed from Korea's AI Act and captures a broad range of systems — from simple automation to advanced generative AI."

[[extra.faq_items]]
question = "What counts as a high-risk AI system?"
answer = "High-risk systems are those that pose significant potential harm to life, health, national security, or lawful rights. The Ministry of Science and Technology is preparing a Prime Ministerial decision listing specific high-risk categories. Until then, organisations should classify based on the law's general criteria. Typical examples include: credit scoring, recruitment screening, biometric identification, access to essential services, and safety-critical components in products."

+++
