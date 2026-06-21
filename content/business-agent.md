+++
title = "Business Agent"
description = "Deploy an always-on AI agent that manages communications, automates workflows, and gets smarter over time."
template = "service.html"

[extra]
category = "Service"
hero_gradients = ['rgba(34,197,94,0.18)', 'rgba(167,139,250,0.12)']
hero_secondary = "How it works"
hero_secondary_url = "#how-it-works"
cta_primary = "Book a consultation"
cta_primary_url = "@/contact.md"
cta_secondary = "Back to top"
cta_secondary_url = "#top"
key_capabilities_title = "Key capabilities"
key_capabilities = [
  "• Always-on — runs 24/7 on your own server or VPS",
  "• 7 autonomous Hands that work on schedules, not just chat",
  "• Persistent memory via SQLite + vector embeddings + knowledge graphs",
  "• 40+ messaging platforms — Telegram, Discord, Slack, WhatsApp, and 36 more",
  "• 16 security layers — WASM sandbox, Merkle audit trail, SSRF protection",
  "• 53 built-in tools + MCP + A2A cross-framework protocols",
  "• 26+ LLM providers — no vendor lock-in",
  "• Apache 2.0 licensed — fully open source, auditable",
]
overview_label = "Overview"
overview_title = "What is a Business Agent?"
overview_body = [
  "A business agent is a persistent AI assistant that lives on your infrastructure — not in a company's cloud. It plans, acts, observes results, and loops until tasks are done. Unlike chatbots or copilots, it maintains state, memory, and learned skills across sessions, so it doesn't start from zero every time you talk to it.",
  "Think of it as a capable team member who works around the clock: triaging emails, checking calendars, running reports, syncing data across tools, and alerting you when something needs attention. It reaches you on whatever messaging platform you already use and gets more useful the longer it runs.",
  "For SMEs, a business agent handles customer support triage, lead qualification, document processing, and repetitive admin work — simple automations with measurable time savings.",
]
overview_metrics = [
  { label = "24/7", description = "Always-on operation — no session limits, no timeouts" },
  { label = "Self-hosted", description = "Your data stays on your machines under your control" },
  { label = "Self-improving", description = "Builds reusable skills automatically from experience" },
]
services_grid_label = "Capabilities"
services_grid_title = "How It Empowers Business Owners"
services_grid_description = "Business owners wear many hats. A business agent offloads the administrative overhead that fragments focus, so you can spend time on work that actually moves the business forward."
comparison_cols_label = "Our recommendation"
comparison_cols_title = "OpenFang"
info_cards_label = "Features"
info_cards_title = "What Makes OpenFang Different"
info_cards_cols = 3
comparison_cols_2_label = "Security"
comparison_cols_2_title = "Minimising the Blast Radius"
process_label = "Our services"
process_title = "How We Help You Deploy a Business Agent"
process_body = "We design, deploy, and secure an OpenFang instance tailored to your business — connecting the data sources, tools, and platforms you already use."
faq_label = "FAQ"
faq_title = "Common Questions"
cta_title = "Ready to deploy your own business agent?"
cta_body = "We design, deploy, and secure OpenFang for business owners who want always-on AI assistance without the security headaches."

[[extra.services_grid_items]]
icon = "📬"
title = "Email & Ticket Triage"
description = "Triage multiple inboxes, flag urgent items, draft replies, and route tasks to the right teams automatically. The agent learns your priorities over time."

[[extra.services_grid_items]]
icon = "📅"
title = "Calendar & Scheduling"
description = "Check availability, schedule meetings, send reminders, and reschedule conflicts. It can coordinate across time zones and sync with your email for travel confirmations."

[[extra.services_grid_items]]
icon = "⏰"
title = "Scheduled Automations"
description = "Set up daily briefings, weekly digests, nightly backups, and recurring reports — all in natural language. The agent runs them unattended on your schedule."

[[extra.services_grid_items]]
icon = "🔗"
title = "Cross-Platform Reach"
description = "Interact via Discord, Telegram, Slack, WhatsApp, Signal, or CLI from a single agent. Start a conversation on one platform, pick it up on another seamlessly."

[[extra.services_grid_items]]
icon = "🧠"
title = "Persistent Memory & Skills"
description = "Remembers your preferences, projects, and environment across sessions. When it solves a hard problem, it writes a reusable skill so it never forgets how."

[[extra.services_grid_items]]
icon = "🧩"
title = "Data & Tool Integration"
description = "Connect Gmail, Google Drive, Notion, Todoist, Slack, CRM systems, databases, ERP, HRM, accounting, help desk, and workflow systems. The agent can read, summarise, and act across your entire toolchain."

[[extra.services_grid_items]]
icon = "💬"
title = "Customer-Facing Chatbots"
description = "Deploy AI-powered chatbots and virtual assistants for customer support, sales, internal help desks, and employee self-service. Handle routine inquiries, qualify leads, and escalate complex issues — all through the same persistent, self-improving agent platform."

[[extra.comparison_cols_items]]
logo = "openfang-logo.png"
title = ""
body = [
  "We recommend <strong><a href=\"https://openfang.sh\" target=\"_blank\" rel=\"noopener noreferrer\">OpenFang</a></strong> — the open-source Agent Operating System built from scratch in Rust. Not a chatbot framework, not a Python wrapper around an LLM, but a full operating system for autonomous agents. It compiles to a single ~32 MB binary with zero external dependencies and runs on any Linux or macOS server.",
  "OpenFang ships with 7 built-in autonomous Hands that work for you 24/7 on schedules — generating leads, monitoring targets, managing social media, researching competitors, and delivering reports to your dashboard. It connects to 40+ messaging platforms, supports 26+ LLM providers, and enforces 16 layers of defense-in-depth security. One binary, zero runtime dependencies, no Python or Node required.",
]
buttons = [
  { label = "Visit openfang.sh", url = "https://openfang.sh", external = true },
  { label = "View on GitHub", url = "https://github.com/RightNow-AI/openfang", external = true, style = "outline" },
]

[[extra.info_cards_items]]
title = "Built in Rust"
description = "137K lines of Rust across 14 modular crates. Zero external runtime dependencies — no Python, no Node, no Docker. A single ~32 MB binary that you copy and run."

[[extra.info_cards_items]]
title = "7 Autonomous Hands"
description = "Pre-built agents that work FOR you — Clip, Lead, Collector, Predictor, Researcher, Twitter, Browser. They run on schedules, build knowledge graphs, and report to your dashboard."

[[extra.info_cards_items]]
title = "40+ Channel Adapters"
description = "Telegram, Discord, Slack, WhatsApp, Teams, IRC, Matrix, Feishu, DingTalk, and 32 more. Per-channel model overrides, DM/group policies, and rate limiting."

[[extra.info_cards_items]]
title = "16 Security Layers"
description = "WASM dual-metered sandbox, Merkle hash-chain audit trail, Ed25519 manifest signing, taint tracking, SSRF protection, secret zeroization, prompt injection scanning, and more."

[[extra.info_cards_items]]
title = "WASM Sandboxed Execution"
description = "Tool code runs inside Wasmtime with dual fuel + epoch metering. File operations are workspace-confined. Subprocesses are env-cleared and timeout-enforced."

[[extra.info_cards_items]]
title = "53 Tools + MCP + A2A"
description = "Web search, browser automation, image generation, TTS, Docker, and knowledge graphs. Plus MCP client/server and Google A2A for cross-framework agent communication."

[[extra.info_cards_items]]
title = "Unified Memory Substrate"
description = "SQLite-backed storage with vector embeddings and knowledge graphs. Cross-channel canonical sessions, automatic LLM-based compaction, and JSONL session mirroring."

[[extra.info_cards_items]]
title = "26+ LLM Providers"
description = "Anthropic, Gemini, OpenAI, Groq, DeepSeek, and 20+ via OpenAI-compatible endpoints. Intelligent model routing with built-in cost tracking."

[[extra.info_cards_items]]
title = "Kernel Architecture"
description = "Agents are first-class OS processes with spawn, suspend, resume, and kill semantics. Built-in workflow engine with triggers, scheduling, and multi-agent pipelines."

[[extra.comparison_cols_2_items]]
label = "Security"
label_color = "secondary"
title = "Minimising the Blast Radius"
body = [
  "The more capabilities you give an agent, the more useful — and more powerful — it becomes. The same access that enables email triage (read, write, delete) is also a potential attack surface. Our approach is to embrace the power while ruthlessly minimising the blast radius. OpenFang's 16-layer defense-in-depth security is built into the kernel, not bolted on after the fact.",
]
features = [
  "WASM dual-metered sandbox — tool code cannot escape its environment",
  "Merkle hash-chain audit trail — every action is immutably logged",
  "Ed25519 manifest signing — agents run only approved, signed code",
  "Taint tracking — untrusted input cannot reach critical system functions",
  "SSRF protection — agents cannot probe internal network services",
  "Secret zeroization — API keys wiped from memory when not in use",
  "Prompt injection scanning — malicious instructions detected at runtime",
]

[[extra.comparison_cols_2_items]]
label = "Considerations"
label_color = "accent"
title = "What to Know Before You Start"
body = []
features = [
  '<strong class="text-base-content">Not a plug-and-play product.</strong> Setting up a business agent securely requires understanding of servers, networking, OAuth, and permission models.',
  '<strong class="text-base-content">Ongoing operating cost.</strong> The software is free (Apache 2.0). You pay for the LLM inference via your chosen provider — typically $20-200/month depending on usage and model choice.',
  '<strong class="text-base-content">Model selection matters.</strong> Start with frontier models (GPT-5, Claude 4) to define workflows, then swap to smaller, cheaper models once processes are locked in.',
  '<strong class="text-base-content">You are the operator.</strong> A business agent needs oversight, especially in the early days. Review its work, tune its permissions, and iterate on its skills.',
]

[[extra.process_steps]]
step = "Step 1"
title = "Assess & Design"
description = "Map your workflows, identify high-value automations, and design the agent's toolset, permissions, and security model."

[[extra.process_steps]]
step = "Step 2"
title = "Deploy & Connect"
description = "Provision infrastructure (VPS or bare metal), install OpenFang, configure 40+ channel adapters, and connect data sources."

[[extra.process_steps]]
step = "Step 3"
title = "Harden Security"
description = "Set up VLAN isolation, MCP gateway, firewall rules, least-privilege permissions, and off-site backup strategy."

[[extra.process_steps]]
step = "Step 4"
title = "Configure & Train"
description = "Set up cron jobs, skill libraries, and interaction patterns. Train your team on how to work with the agent effectively."

[[extra.faq_items]]
question = "How is a business agent different from ChatGPT or Claude?"
answer = "Standard chatbots are stateless — each conversation starts fresh. A business agent runs persistently, remembers everything across sessions, writes its own skills, executes scheduled tasks, and takes multi-step actions on your behalf. It is an employee, not a conversation."

[[extra.faq_items]]
question = "Is my data safe?"
answer = "Yes. OpenFang is self-hosted on your infrastructure — your data never leaves your machines. Apache 2.0 licensed, fully auditable. We implement additional security layers including WASM sandboxing, Merkle audit trails, SSRF protection, and VLAN isolation to minimise blast radius."

[[extra.faq_items]]
question = "Is it hard to set up?"
answer = "OpenFang ships as a single binary — there is no Python environment, no Node runtime, no Docker dependency to manage. That said, deploying a business agent securely still requires familiarity with servers, networking, and permission models. That is exactly where we come in. We handle the infrastructure and security so you can focus on using the agent."

[[extra.faq_items]]
question = "What messaging platforms are supported?"
answer = "OpenFang connects to 40+ platforms — Telegram, Discord, Slack, WhatsApp, Teams, Signal, Matrix, Google Chat, Feishu, DingTalk, IRC, and more. All from a single binary. Per-channel model overrides and rate limiting included."

[[extra.faq_items]]
question = "Can I use my own AI model?"
answer = "Absolutely. OpenFang is model-agnostic and connects to 26+ providers including Anthropic, Gemini, OpenAI, Groq, DeepSeek, and any OpenAI-compatible endpoint via built-in model routing — no code changes needed to switch."

+++
