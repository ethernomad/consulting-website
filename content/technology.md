+++
title = "Why Rust & Open Source"
description = "Performance, portability, security, and transparency — every technology we use is open source, permissively licensed, and built in Rust."
template = "service.html"

[extra]
category = "Our approach"
hero_gradients = ['rgba(139,92,246,0.18)', 'rgba(6,182,212,0.12)']
hero_tagline = "Performance, portability, security, and transparency — every technology we use is open source, permissively licensed, and built in Rust. Your systems remain auditable, portable, and free from vendor lock-in."
hero_secondary = "Common questions"
hero_secondary_url = "#faq"

key_capabilities_title = "Our stack at a glance"
key_capabilities = [
  "<strong>Burn</strong> — Deep learning framework",
  "<strong>Candle / xinfer</strong> — Inference engines",
  "<strong>Dioxus</strong> — Cross-platform apps",
  "<strong>ADK-Rust</strong> — Custom agents",
  "<strong>OpenFang</strong> — Business agent OS",
  "<strong>OpenCode</strong> — Agentic coding",
]

overview_label = "Foundation"
overview_title = "Why Rust"
overview_body = [
  "For production AI workloads, Rust delivers capabilities that interpreted languages cannot match. The result is smaller, faster, more reliable systems that cost less to operate over time.",
]
overview_metrics = [
  { label = "Single binary", description = "A Rust inference server compiles to ~8 MB with zero runtime dependencies. No Python interpreter, no virtual environment, no Node runtime — just a binary you copy and run." },
  { label = "Memory safe", description = "Rust's ownership model eliminates buffer overflows, use-after-free errors, and data races at compile time. For long-running AI services, this is a material reliability advantage." },
  { label = "Portable", description = "The same code targets CPU, NVIDIA CUDA, AMD ROCm, Apple Metal, Vulkan, and WebGPU — without rewriting. Burn's CubeCL kernel system auto-tunes for your specific hardware." },
]

comparison_cols_label = "Comparison"
comparison_cols_title = "Rust vs Python for AI in Production"
comparison_cols_description = "Python dominates research and prototyping. Rust dominates deployment — smaller binaries, no runtime, predictable latency, and memory safety guaranteed at compile time."

services_grid_label = "Tools"
services_grid_title = "Our Recommended Stack"
services_grid_description = "Every tool below is open source, permissively licensed, and actively maintained. We select the right combination for each project."
services_grid_cols = 3

info_cards_label = "Philosophy"
info_cards_title = "Why Open Source"
info_cards_description = "Every tool we recommend is permissively licensed (MIT, Apache 2.0, or both). We do not build dependency on proprietary platforms — your systems remain yours."
info_cards_cols = 4

faq_label = "FAQ"
faq_title = "Common Questions"

cta_label = "Next step"
cta_title = "Ready to build on a foundation you control?"
cta_body = "Book a consultation and we'll discuss how Rust and open-source AI can deliver better performance, lower operational costs, and true ownership of your systems."
cta_primary = "Book a consultation"
cta_primary_url = "/contact/"
cta_secondary = "Back to top"
cta_secondary_url = "#top"

# Rust vs Python comparison columns
[[extra.comparison_cols_items]]
title = "Python"
logo_text = "Py"
logo_color = "warning"
label = "Prototyping strength"
label_color = "warning"
body = [
  "Python dominates research and prototyping — notebooks, data exploration, and quick experiments.",
]
features = [
  "Deployment: Python runtime + venv + 2 GB+ deps",
  "Memory safety: GC + GIL — memory leaks in long-running services",
  "GPU backends: CUDA (NVIDIA only)",
  "Ecosystem: Massive — every model, paper, and tool",
  "Prototyping: Fast — notebooks, dynamic typing, REPL",
  "Production latency: GC pauses, interpreter overhead",
  "Target platforms: Requires platform-specific builds",
  "Quantization: Via third-party libs (bitsandbytes, GPTQ)",
]

[[extra.comparison_cols_items]]
title = "Rust"
logo_text = "Rs"
logo_color = "success"
label = "Production strength"
label_color = "success"
body = [
  "Rust dominates deployment — smaller binaries, no runtime, predictable latency, and memory safety guaranteed at compile time.",
  "Our approach: Python for research and rapid prototyping — notebooks, data exploration, and quick experiments. Rust for production deployment — training pipelines, inference servers, agent runtimes, and cross-platform applications. We specialise in bridging this gap.",
]
features = [
  "Deployment: Single static binary (~8 MB)",
  "Memory safety: Ownership model — no GC, no data races",
  "GPU backends: CUDA, ROCm, Metal, Vulkan, WebGPU",
  "Ecosystem: Growing — core features solid, niche ops manual",
  "Prototyping: Slower — compile-check-iterate cycle",
  "Production latency: Native code, deterministic performance",
  "Target platforms: Compile once — runs on any target",
  "Quantization: First-class PTQ and QAT support",
]

# Recommended Stack
[[extra.services_grid_items]]
icon = "🔥"
title = "Model training"
description = "Burn — MIT / Apache 2.0"
highlights = [
  "Rust-native deep learning, trains and deploys in the same language, 8 hardware backends, competitive with PyTorch performance",
]

[[extra.services_grid_items]]
icon = "🕯️"
title = "Model inference"
description = "Candle / xinfer — Apache 2.0 / MIT"
highlights = [
  "Minimal Rust inference engines, single-binary deployment, support for 30B+ models on consumer GPUs",
]

[[extra.services_grid_items]]
icon = "📱"
title = "App development"
description = "Dioxus — MIT / Apache 2.0"
highlights = [
  "Single Rust codebase targets web, desktop, and mobile. React-like ergonomics with native performance",
]

[[extra.services_grid_items]]
icon = "🤖"
title = "Custom agents"
description = "ADK-Rust / AutoAgents — Apache 2.0"
highlights = [
  "Production-grade agent frameworks with voice pipelines, A2A protocol, WASM sandboxing, 26+ LLM providers",
]

[[extra.services_grid_items]]
icon = "🏗️"
title = "Business agent OS"
description = "OpenFang — Apache 2.0"
highlights = [
  "Full agent operating system, 32 MB binary, 7 autonomous hands, 40+ messaging platforms, 53 built-in tools",
]

[[extra.services_grid_items]]
icon = "⌨️"
title = "Agentic coding"
description = "OpenCode — MIT"
highlights = [
  "Leading open-source coding agent, 175K+ stars, model-agnostic, privacy-first, zero telemetry",
]

# Why Open Source
[[extra.info_cards_items]]
icon = "🔍"
title = "Auditable"
body = ["Open-source code can be inspected, audited, and verified. You know exactly what your AI system does — no black-box API calls to opaque models."]

[[extra.info_cards_items]]
icon = "🔓"
title = "No lock-in"
body = ["Open formats (ONNX, safetensors, GGUF) mean you can switch providers, frameworks, or hosting without rewriting. Model providers compete on quality, not on captivity."]

[[extra.info_cards_items]]
icon = "🌍"
title = "Community-driven"
body = ["Burn (11K+ stars), Dioxus (36K+), OpenCode (175K+), and Candle (15K+) are maintained by thousands of contributors. Security issues are found and fixed faster than in closed source."]

[[extra.info_cards_items]]
icon = "🏭"
title = "Air-gapped capable"
body = ["Open-source AI runs anywhere — cloud, on-premises, edge device, or air-gapped with no internet. For regulated industries and compliance-driven deployments, this is essential."]

# When We Use Python
[[extra.info_cards_items]]
icon = "Py"
title = "When We Use Python"
label = "Pragmatic approach"
body = [
  "Rust is not always the right answer. Python excels at rapid prototyping, data exploration, and accessing the broadest ecosystem of research models. We use Python where it is strongest and migrate to Rust where production requirements demand it.",
  "We specialise in this transition. If you already have a Python-based AI prototype, we can productionise it in Rust without changing your model architecture.",
]
highlights = [
  "Research & prototyping: PyTorch, HuggingFace, scikit-learn — fast iteration while the problem is still being understood",
  "Data engineering: Python for scripts, notebooks, and ad-hoc analysis; Rust for production pipelines",
  "Production deployment: Rust single binary — no Python runtime, no dependency conflicts, predictable performance",
]

# FAQ
[[extra.faq_items]]
question = "Isn't Rust harder to learn than Python?"
answer = "Yes, Rust has a steeper learning curve than Python. But this is a cost that the engineering team bears once, while the benefits — smaller binaries, no runtime, memory safety, portable performance — compound over the entire life of the system. For clients who plan to maintain their AI system in-house, we include knowledge transfer and training as part of the engagement."

[[extra.faq_items]]
question = "What about Python's larger ecosystem of AI models and tools?"
answer = "Python's ecosystem is unmatched for research, and we use it there. For production, most needs are covered: Burn for custom training, Candle for HuggingFace model inference, safetensors for model interchange, and ONNX for cross-framework portability. The Rust ML ecosystem matures rapidly — what required a Python dependency six months ago often has a Rust native equivalent today."

[[extra.faq_items]]
question = "Do you require clients to use Rust?"
answer = "No. We build in Rust by default because it produces better production outcomes, but we work with any language stack. We integrate with existing Python, TypeScript, Go, or Java systems. If you have an existing team working in another language, we build Rust services that interface cleanly over REST, gRPC, or message queues — your team never needs to touch Rust code."

[[extra.faq_items]]
question = "What happens if the open-source project I depend on is abandoned?"
answer = "Open-source risk is real, and we manage it actively. We select tools with strong governance, multiple maintainers, and broad adoption. All tools we recommend use permissive licenses (MIT / Apache 2.0), so if a project is abandoned, the code remains available and forkable. For critical systems, we maintain internal mirrors and can take over maintenance if needed. This is strictly more freedom than being stranded on a deprecated proprietary API with no recourse."

[[extra.faq_items]]
question = "Can I switch to another provider after you build the system?"
answer = "Yes — this is a direct benefit of open source. Every model, agent, and application we build uses open standards and permissively licensed code. You own the full stack. You can take it to another team, host it with another provider, or modify it yourself. There are no license fees, platform fees, or proprietary formats to escape."

[[extra.faq_items]]
question = "Is Rust really faster than Python for AI workloads?"
answer = "For raw matrix multiplication, both Python and Rust call the same CUDA kernels — performance is similar. Rust's advantage is everything around the compute: serving the model (no interpreter overhead), managing memory (no GC pauses), handling concurrent requests (no GIL), and deploying (single binary vs 2 GB Docker image). The throughput difference for a production inference server is typically 2-5x before any optimisation."

+++
