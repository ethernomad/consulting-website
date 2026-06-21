+++
title = "Custom Agent"
description = "Build bespoke AI agent applications with production-grade Rust frameworks for realtime voice agents, autonomous workflows, and agent-to-agent communication."
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
  "• Rust-native frameworks — compile to small, fast binaries",
  "• Voice agents with STT/TTS pipelines",
  "• Agent-to-agent protocols for multi-agent systems",
  "• Workflow orchestration engines",
  "• WASM sandboxed tool execution",
  "• 20+ LLM providers with intelligent model routing",
  "• Persistent memory with vector embeddings",
  "• Fully open source — permissive licenses",
]
overview_label = "Overview"
overview_title = "What is a Custom Agent?"
overview_body = [
  "A custom agent is an AI application purpose-built for your workflow — not a generic chatbot or a pre-packaged product, but a tailored agent system that speaks your domain language, connects to your tools, and executes the specific logic your business needs.",
  "Custom AI development is for organizations that need solutions tailored to their workflows, industry, language, or internal systems. Rather than forcing businesses to adapt to generic tools, we design and build systems around specific needs.",
  "Unlike off-the-shelf AI products, a custom agent is built from the ground up to solve one thing well. It may be a voice agent that handles customer calls in Vietnamese, a coding assistant that knows your codebase's conventions, a RAG pipeline over your proprietary documents, or a multi-agent system that orchestrates research, drafting, and review.",
]
overview_metrics = [
  { label = "Purpose-built", description = "Designed for your specific domain, workflow, and data — not a generic product" },
  { label = "Developer-controlled", description = "Full access to every layer — model, memory, tools, security, deployment" },
  { label = "Production-hardened", description = "Rust-native performance, WASM sandboxing, and zero-cost abstractions" },
]
services_grid_label = "Use cases"
services_grid_title = "What Can You Build With a Custom Agent?"
services_grid_description = "Custom agent applications span a wide range of use cases — from realtime voice agents to autonomous multi-agent systems."
comparison_cols_label = "Frameworks"
comparison_cols_title = "Our Recommendations"
comparison_cols_description = "We recommend two production-grade Rust frameworks for building custom agent applications. Both are open source, memory-safe, and provider-agnostic. Choose the one that best fits your use case."
comparison_table_label = "Comparison"
comparison_table_title = "ADK-Rust vs AutoAgents"
comparison_table_description = "A technical breakdown to help you choose the right framework for your project."
comparison_table_headers = [
  "Feature",
  "ADK-Rust (Google)",
  "AutoAgents (LiquidOS)",
]
comparison_table_rows = [
  ["SDK / Framework", "ADK-Rust (Google)", "AutoAgents SDK (LiquidOS)"],
  ["License", "Apache 2.0", "Open Source"],
  ["Multi-Agent Protocol", "Google A2A Protocol", "Built-in multi-agent orchestration"],
  ["Tool Sandboxing", "WASM — fuel + epoch metering, workspace-confined file ops, env-cleared subprocesses", "WASM sandboxing + OS-level process isolation (multi-layer)"],
  ["Agent Code Execution", "—", "CodeAct executor — agents write & run sandboxed TypeScript"],
  ["Voice / STT/TTS", "Built-in pipeline (speech-to-text, text-to-speech)", "—"],
  ["Workflow Orchestration", "Graph-based DAG — conditional branching, sub-agents, human-in-the-loop checkpoints", "Multi-agent coordination"],
  ["LLM Provider Support", "26+ (Anthropic, Gemini, OpenAI, Groq, DeepSeek, etc.)", "Provider-agnostic (any LLM API)"],
  ["Persistent Memory", "SQLite + vector embeddings (semantic memory, session persistence)", "—"],
  ["Streaming / Realtime", "SSE, WebSocket (stream tokens, audio, tool outputs)", "—"],
  ["Edge Deployment", "Compiles to single binary, runs on any Linux/macOS", "Native ARM, Jetson, Raspberry Pi support"],
  ["Security Model", "WASM sandbox + Rust memory safety + secret zeroization", "Multi-layer: OS process isolation + WASM sandbox + Rust safety"],
]
info_cards_label = "Security"
info_cards_title = "Built-In Security Model"
info_cards_cols = 2
process_label = "Our services"
process_title = "How We Help You Build a Custom Agent"
process_body = "We design, build, and deploy custom agent applications with ADK-Rust or AutoAgents (LiquidOS) — from concept to production, with your data, your tools, and your workflows."
faq_label = "FAQ"
faq_title = "Common Questions"
cta_title = "Ready to build your custom agent?"
cta_body = "We design, build, and deploy custom agent applications using ADK-Rust or AutoAgents (LiquidOS) — tailored to your workflow, your data, and your infrastructure."

[[extra.services_grid_items]]
icon = "🎙️"
title = "Voice Agents"
description = "Build realtime voice agents with speech-to-text and text-to-speech pipelines. Use cases include call center analytics, transcription, voice bots, multilingual customer interactions, and voice-enabled workflows — all with low latency."

[[extra.services_grid_items]]
icon = "🧑‍💻"
title = "Coding Assistants"
description = "Build AI coding agents that understand your codebase's architecture, conventions, and patterns. Automate refactoring, test generation, documentation, and code review."

[[extra.services_grid_items]]
icon = "📚"
title = "RAG Pipelines"
description = "Build grounded question-answering systems over your proprietary documents, knowledge bases, and data sources — with full control over chunking, embedding, retrieval, and synthesis."

[[extra.services_grid_items]]
icon = "🤖"
title = "Autonomous Workflows"
description = "Build agents that plan, execute, observe, and iterate autonomously. Define graph-based workflows with conditional branching, sub-agents, and human-in-the-loop checkpoints."

[[extra.services_grid_items]]
icon = "🔗"
title = "Multi-Agent Systems"
description = "Build agent-to-agent systems using standard protocols. Specialised agents collaborate — one researches, another drafts, a third reviews — all communicating through a standard protocol."

[[extra.services_grid_items]]
icon = "🧩"
title = "Custom Tool Integration"
description = "Connect agents to your APIs, databases, ERP, CRM, HRM, help desk, and workflow systems. Custom tools run in WASM sandboxes for safe, predictable execution."

[[extra.services_grid_items]]
icon = "📊"
title = "Operational Dashboards"
description = "Surface real-time visibility into business performance, bottlenecks, and cost drivers through C-level and operational dashboards that combine AI with workflow tools, RPA, and business systems."

[[extra.services_grid_items]]
icon = "👥"
title = "HR & Recruitment Screening"
description = "Rank resumes, summarize candidates, and automate repetitive hiring workflows. Screen applicants against role requirements at scale."

[[extra.services_grid_items]]
icon = "💰"
title = "Finance & Accounting Automation"
description = "Automate invoice matching, expense review, payment verification, and anomaly detection. Reduce manual effort in financial workflows."

[[extra.services_grid_items]]
icon = "🎯"
title = "Recommendation Engines"
description = "Build custom recommendation engines for e-commerce, media, education, and fintech products. Serve personalised content, product suggestions, and next-best-action recommendations powered by your domain data and business logic."

[[extra.comparison_cols_items]]
logo = "adk-rust-logo.svg"
label = "Recommended framework"
title = "ADK-Rust"
body = [
  '<strong><a href="https://github.com/zavora-ai/adk-rust" target="_blank" rel="noopener noreferrer">ADK-Rust</a></strong> is a Google-led open-source AI Development Kit built in Rust. It excels at voice agents with built-in STT/TTS pipelines, the A2A protocol for multi-agent collaboration, graph-based workflow orchestration, and 26+ LLM providers — all from a single binary that deploys anywhere.',
]
buttons = [
  { label = "View on GitHub", url = "https://github.com/zavora-ai/adk-rust", external = true },
  { label = "Documentation", url = "https://google.github.io/adk-rust/", external = true, style = "outline" },
]

[[extra.comparison_cols_items]]
logo = "liquidos-logo.svg"
label = "Recommended framework"
title = "AutoAgents (LiquidOS)"
body = [
  '<strong><a href="https://github.com/liquidos-ai/AutoAgents" target="_blank" rel="noopener noreferrer">AutoAgents</a></strong> by LiquidOS is an open-source Rust SDK for building multi-agent systems. It features WASM + OS-level process isolation for multi-layer sandboxing, a CodeAct executor that lets agents write and run sandboxed TypeScript, and native support for edge and embedded environments.',
]
buttons = [
  { label = "View on GitHub", url = "https://github.com/liquidos-ai/AutoAgents", external = true },
  { label = "Documentation", url = "https://liquidos-ai.github.io/AutoAgents/", external = true, style = "outline" },
]

[[extra.info_cards_items]]
label = "Security"
title = "Built-In Security Model"
body = [
  "Both ADK-Rust and AutoAgents are built in Rust, which eliminates entire classes of memory-safety vulnerabilities at compile time. On top of Rust's guarantees, they layer WASM sandboxing and OS-level process isolation for defence-in-depth.",
]
highlights = [
  "WASM sandboxing — tool code cannot escape its environment",
  "Fuel metering — prevent runaway execution and denial-of-service",
  "OS-level process isolation — agents run in separate processes with restricted permissions",
  "Workspace-confined file operations — agents cannot access files outside their scope",
  "Env-cleared subprocesses — no leaked environment variables or secrets",
  "Rust's memory safety — no buffer overflows, use-after-free, or null pointer dereferences",
  "Secret zeroization — API keys and credentials wiped from memory when not in use",
]

[[extra.info_cards_items]]
label = "Considerations"
title = "What to Know Before You Start"
description = ""
highlights = [
  '<strong class="text-base-content">A development project, not a product.</strong> Building a custom agent requires a software development team. You are not configuring a pre-built tool — you are building an application from scratch.',
  '<strong class="text-base-content">Rust expertise helps.</strong> While we handle the heavy lifting, teams that understand Rust will get the most value from customising and extending their agent over time.',
  '<strong class="text-base-content">Ongoing operating cost.</strong> Both frameworks are free and open source. You pay for LLM inference via your chosen provider and infrastructure costs for hosting your agent binary.',
  '<strong class="text-base-content">Iterate toward production.</strong> Start with a focused pilot, validate with real users, then expand scope. Custom agents are most successful when built incrementally.',
]

[[extra.process_steps]]
step = "Step 1"
title = "Assess & Design"
description = "Map your workflow, identify the agent's role, define success criteria, and design the architecture — agent topology, tool set, memory model, and deployment target."

[[extra.process_steps]]
step = "Step 2"
title = "Build & Integrate"
description = "Develop the agent with your chosen framework, connect your APIs and data sources, implement custom tools, and set up the voice or chat interface."

[[extra.process_steps]]
step = "Step 3"
title = "Test & Harden"
description = "Test with real data, validate tool execution against edge cases, harden security boundaries, and set up monitoring and observability."

[[extra.process_steps]]
step = "Step 4"
title = "Deploy & Iterate"
description = "Deploy to your infrastructure, train your team, establish feedback loops, and iterate on the agent's behaviour over time."

[[extra.faq_items]]
question = "How is a custom agent different from a Business Agent?"
answer = "A Business Agent is a pre-built product (OpenFang) that we deploy and configure for you — it is an always-on agent OS that manages communications and automations. A Custom Agent is built from scratch using a Rust agent framework (ADK-Rust or AutoAgents) to solve a specific problem. Think of it as the difference between buying a turnkey piece of software and commissioning custom software development."

[[extra.faq_items]]
question = "Is this just a chatbot?"
answer = "No. While a custom agent can include chat interfaces, it is fundamentally an application that uses AI to execute specific logic — voice processing, document analysis, multi-step research, tool orchestration, and more. Chat is one interface among many."

[[extra.faq_items]]
question = "Do I need Rust expertise?"
answer = "Not necessarily. We handle the Rust agent development. However, if your team plans to maintain and extend the agent after launch, some Rust familiarity is beneficial. We can include knowledge transfer and training as part of the engagement."

[[extra.faq_items]]
question = "What infrastructure do I need?"
answer = "Both ADK-Rust and AutoAgents compile to native binaries that run on Linux or macOS systems. Deployment options include a VPS, dedicated server, Docker container, or edge environment. We recommend based on your latency, scale, and compliance requirements."

[[extra.faq_items]]
question = "Can I use my own LLM provider?"
answer = "Absolutely. Both frameworks are provider-agnostic — ADK-Rust supports 26+ providers (Anthropic, Gemini, OpenAI, Groq, DeepSeek, etc.) and AutoAgents works with any LLM API. You choose the model per agent or per task — no code changes needed to switch."

+++
