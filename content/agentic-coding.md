+++
title = "Agentic Coding"
description = "Learn to write software effectively with AI coding agents — Claude Code, OpenCode, Pi, and more."
template = "service.html"

[extra]
category = "Service"
hero_gradients = ['rgba(99,102,241,0.18)', 'rgba(52,211,153,0.12)']
hero_tagline = "Learn to write software effectively with AI coding agents — from solo practice to enterprise team workflows. We recommend OpenCode."
hero_secondary = "What we teach"
hero_secondary_url = "#what-we-teach"
cta_primary = "Book a consultation"
cta_primary_url = "/contact/"
key_capabilities_title = "Key capabilities"
key_capabilities = [
  "• Context engineering — curate what the agent sees, when",
  "• Instruction files — AGENTS.md, CLAUDE.md, project rules",
  "• Multi-agent orchestration — teams of agents for complex work",
  "• Automated verification — linting, types, tests as quality gates",
  "• Model strategy — frontier vs. local, cost vs. capability",
  "• Security & sandboxing — safe autonomous execution",
  "• Red teaming for agents — prompt injection, tool misuse, action audit",
  "• 75+ LLM providers — no vendor lock-in with OpenCode",
  "• Privacy-first — local models keep your code on your machine"
]
overview_label = "Overview"
overview_title = "What is Agentic Coding?"
overview_body = [
  "Agentic coding is a software development approach where AI agents autonomously handle coding tasks — planning, executing, and iterating with minimal human intervention. The agent observes the codebase, plans changes, executes them, verifies results, and loops until the task is done.",
  "This is not \"vibe coding.\" It is a disciplined engineering practice centred on the agentic loop: gather context → take action → verify → repeat. The developer's role shifts from writing every line of code to orchestrating agents that write it — applying architectural judgment, reviewing diffs, and steering the system toward quality outcomes."
]
overview_metrics = [
  { label = "Analyse", description = "Understand the codebase, task, and surrounding context before acting" },
  { label = "Plan", description = "Design the approach — files to change, tests to write, risks to avoid" },
  { label = "Execute", description = "Edit files, run commands, and iterate with the agent's tools" },
  { label = "Verify", description = "Lint, type-check, test, and review — quality gates at every step" }
]
services_grid_label = "Tool landscape"
services_grid_title = "Leading Coding Agents in 2026"
services_grid_description = "The agentic coding ecosystem has matured rapidly. Here are the tools we work with and teach — each with different strengths depending on your workflow and priorities."
services_grid_cols = 4
featured_panel_label = "Our recommendation"
featured_panel_title = "OpenCode"
featured_panel_body = [
  "We recommend OpenCode — the open-source AI coding agent with over 175,000 GitHub stars, released under the MIT license. It is the most popular and most flexible coding agent available in 2026, trusted by over 7.5 million developers every month.",
  "OpenCode is model-agnostic: connect any LLM provider — Claude, GPT, Gemini, DeepSeek, or local models via Ollama — and switch between them freely. Its LSP integration gives the agent compiler-level understanding of your codebase. Parallel agents let you run multiple sessions on the same project. Plan mode provides read-only analysis before any file changes. And because it's open source with zero telemetry, your code never leaves your machine."
]
featured_panel_metrics = [
  { value = "175K+", label = "GitHub stars", color = "primary" },
  { value = "7.5M", label = "Monthly developers", color = "secondary" },
  { value = "75+", label = "LLM providers", color = "accent" }
]
featured_panel_buttons = [
  { url = "https://opencode.ai", label = "Visit opencode.ai", style = "primary", external = true },
  { url = "https://github.com/anomalyco/opencode", label = "View on GitHub", style = "outline", external = true }
]
info_cards_label = "Curriculum"
info_cards_title = "What We Teach"
info_cards_description = "Our training covers the full discipline of agentic coding — from the fundamentals of the agentic loop to advanced multi-agent orchestration and enterprise workflows."
info_cards_cols = 3
process_label = "Our services"
process_title = "How We Help Teams Adopt Agentic Coding"
process_body = "We design and deliver hands-on training programmes that take developers and teams from first exposure to confident, production-grade use of AI coding agents."
faq_label = "FAQ"
faq_title = "Common Questions"
cta_label = "Next step"
cta_title = "Ready to master agentic coding?"
cta_body = "Book a consultation and we'll design a training programme tailored to your team's workflow, tech stack, and skill level."
cta_secondary_url = "#top"

[[extra.services_grid_items]]
icon = "🔵"
title = "Claude Code"
description = "Anthropic's official CLI for agentic coding. Runs in your terminal with full filesystem and command access. Deep Claude model integration with Agent Teams, background scheduling, and computer use."
highlights = [
  "• Best-in-class Claude model integration",
  "• Agent Teams for parallel sub-agents",
  "• Scheduled background tasks",
  "• Proprietary, Claude models only"
]

[[extra.services_grid_items]]
icon = "🟢"
title = "OpenCode"
recommended = true
description = "Our top recommendation. Open-source (MIT) terminal-based agent with 175K+ GitHub stars. Supports 75+ LLM providers, LSP integration, parallel agents, and session sharing. Model-agnostic and privacy-first."
highlights = [
  "• 175K+ GitHub stars, MIT license",
  "• 75+ providers via models.dev",
  "• LSP integration for deep code understanding",
  "• Plan mode — read-only analysis before edits"
]

[[extra.services_grid_items]]
icon = "🟣"
title = "Pi"
description = "Minimalist, open-source coding agent with a primitives-first design philosophy. Four core tools (read, write, edit, bash), fast execution, and excellent local model support via MLX and GGUF."
highlights = [
  "• ~1,000-token system prompt — minimal overhead",
  "• RPC mode for embedding in automation systems",
  "• Excellent local model performance (MLX, GGUF)",
  "• 15+ provider support, extensible via MCP"
]

[[extra.services_grid_items]]
icon = "🟠"
title = "Codex CLI"
description = "OpenAI's agentic coding CLI, deeply integrated with the GPT model family. Strong reasoning capabilities and native tool calling. Best for teams already in the OpenAI ecosystem."
highlights = [
  "• Native GPT-5/5.5 integration",
  "• Strong reasoning and planning",
  "• OpenAI ecosystem integration",
  "• Less mature than Claude Code or OpenCode"
]

[[extra.info_cards_items]]
icon = "🧠"
title = "Context Engineering"
body = [
  "The practice of curating what information the agent has access to, and when. Covers the altitude problem (too specific vs. too vague), just-in-time context retrieval, and the feedback-driven approach to evolving your setup."
]

[[extra.info_cards_items]]
icon = "📋"
title = "Instruction Files"
body = [
  "AGENTS.md, CLAUDE.md, skills, and project rules. What belongs in each, how to structure them, scoped vs. global rules, and the skill pattern for on-demand expertise loaded only when needed."
]

[[extra.info_cards_items]]
icon = "✅"
title = "Verification Loops"
body = [
  "Three layers of quality: the agent checking its own work, automated gates (linting, type checking, tests), and human review of the diff. TDD with agents, end-to-end verification, and building a complete quality pipeline."
]

[[extra.info_cards_items]]
icon = "👥"
title = "Sub-Agents & Teams"
body = [
  "Delegating tasks to specialised sub-agents for parallel work. Primary vs. sub-agent patterns, agent teams with lead coordination, and when to use each approach for complex multi-file changes."
]

[[extra.info_cards_items]]
icon = "🔒"
title = "Security & Sandboxing"
body = [
  "Safe autonomous execution through containerised isolation, least-privilege permissions, YOLO mode risk assessment, credential management, and blast radius minimisation strategies."
]

[[extra.info_cards_items]]
icon = "⚔️"
title = "Red Teaming for Agents"
body = [
  "Test your AI agents against prompt injection, tool misuse, and autonomous action risks. We apply adversarial methodologies specifically designed for agentic systems — where unintended actions compound across tool calls and long execution chains."
]
highlights = [
  "• Agent-specific red teaming and adversarial testing",
  "• Tool misuse and permission escalation scenarios",
  "• Multi-step attack chain simulation",
  "• Output validation and action audit testing"
]
buttons = [
  { url = "/ai-safety/", label = "Full AI Safety services →", style = "primary" }
]

[[extra.info_cards_items]]
icon = "🎯"
title = "Model Strategy"
body = [
  "Choosing between frontier and local models based on task complexity, cost, and privacy requirements. Multi-provider setups, model switching patterns, and when to use each tier of capability."
]

[[extra.process_steps]]
step = "Step 1"
title = "Assess"
description = "Understand your team's current workflow, tooling, and skill level. Identify high-impact opportunities for agentic coding adoption."

[[extra.process_steps]]
step = "Step 2"
title = "Configure"
description = "Set up the agent harness, instruction files, MCP servers, quality gates, and project conventions. Establish the foundation for consistent, safe agent use."

[[extra.process_steps]]
step = "Step 3"
title = "Workshop"
description = "Hands-on training with real codebases. Context engineering, instruction file authoring, verification loop setup, and team workflow design."

[[extra.process_steps]]
step = "Step 4"
title = "Support"
description = "Ongoing guidance as the team scales its agentic practice. Advanced topics: multi-agent orchestration, CI/CD integration, and custom sub-agents."

[[extra.faq_items]]
question = "Who is this training for?"
answer = "Developers and engineering teams who want to move beyond chat-based AI assistants and build a structured, repeatable workflow for agentic coding. Suitable for everyone from solo practitioners to enterprise teams. We tailor the curriculum to your experience level and tech stack."

[[extra.faq_items]]
question = "Which coding agent should I use?"
answer = "We recommend OpenCode for most teams because it is open source (MIT), model-agnostic, and privacy-first. It supports 75+ LLM providers including Claude, GPT, Gemini, and local models, with no vendor lock-in. That said, we teach the concepts in a tool-agnostic way — the skills transfer across Claude Code, Pi, Codex, and any other agentic harness."

[[extra.faq_items]]
question = "What are the prerequisites?"
answer = "You should be comfortable with the command line, Git, and your programming language of choice. No prior experience with AI coding agents is required — we start from fundamentals and build up. For team workshops, we'll assess your group's baseline and adjust accordingly."

[[extra.faq_items]]
question = "How is this different from vibe coding?"
answer = "Vibe coding treats AI as a quick prototyping tool — describe, generate, and hope it works. Agentic coding is a disciplined engineering practice with structured workflows, verification gates, and architectural oversight. The developer stays firmly in charge as an orchestrator and reviewer, not a prompt writer hoping for the best."

[[extra.faq_items]]
question = "Can I use local / private models?"
answer = "Yes. With OpenCode and local inference via Ollama, your code never leaves your machine. This is a key advantage for regulated industries, proprietary codebases, and air-gapped environments. We cover local model setup and strategy in our training."

[[extra.faq_items]]
question = "What is the format and duration?"
answer = "We offer half-day introductory workshops, full-day deep dives, and multi-day team bootcamps. All sessions are hands-on and exercise-driven — you learn by working with real agents on real codebases, not by watching slides. Remote and on-site options available."

[[extra.faq_items]]
question = "Do you help with tool selection and setup?"
answer = "Absolutely. The first step of our engagement is assessing your workflow and recommending the right toolchain. We handle installation, configuration, instruction file authoring, MCP server setup, and security hardening so your team can focus on learning the practice, not wrestling with setup."
+++
