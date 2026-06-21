+++
title = "Private Inference"
description = "Run AI models on your own infrastructure — private, cost-predictable, and compliant."
template = "service.html"

[extra]
category = "Service"
hero_gradients = ['rgba(34,197,94,0.18)', 'rgba(167,139,250,0.12)']
hero_tagline = "Run AI models on your own infrastructure — no data leaves your network, no per-token bills, no vendor lock-in. Predictable costs, full compliance, and production-grade performance."
hero_secondary = "How it works"
hero_secondary_url = "#how-it-works"
key_capabilities_title = "Why self-host inference?"
key_capabilities = [
  "• Data never leaves your network — no third-party API calls",
  "• Predictable costs — no per-token pricing surprises at scale",
  "• Compliance-ready — VN AI Law, GDPR, banking secrecy, air-gapped environments",
  "• Low latency — no network hop to external providers",
  "• Full control — choose any model, swap anytime, no vendor lock-in",
  "• Offline capable — runs without internet connectivity",
  "• Single binary — deploy Candle or xinfer with zero runtime dependencies",
]

overview_label = "Overview"
overview_title = "What is Private Inference?"
overview_body = [
  "Private inference means running AI models on hardware you control — your servers, your VPS, or your edge devices — instead of sending data to third-party API providers. The models are the same frontier and open-weight models you would use via Anthropic, OpenAI, or Google, but inference happens locally.",
  "This is not about training models. It is about serving them. You download a pre-trained model, deploy an inference engine on your infrastructure, and make predictions via a local API — just like calling OpenAI, but every request stays inside your network boundary.",
]
overview_metrics = [
  { label = "Your data", description = "Inference runs on your hardware — no data ever leaves your network boundary" },
  { label = "Your model", description = "Choose any open-weight model, swap anytime, no vendor lock-in" },
  { label = "Your infrastructure", description = "Single binary deployment — no Python, no Node, no Docker required" },
]

comparison_cols_label = "Comparison"
comparison_cols_title = "API vs Self-Hosted Inference"
comparison_cols_description = "Most teams should start with API-based inference (Claude, GPT, Gemini) — it is the fastest path to value. Self-hosting makes sense when volume, privacy, or compliance requirements outweigh the operational overhead."

[[extra.comparison_cols_items]]
title = "API-Based"
label = "Fastest path to value"
label_color = "warning"
body = [
  "API-based inference (Claude, GPT, Gemini) is the fastest way to get value from AI. You sign up, get an API key, and start making requests in minutes. The provider handles infrastructure, model updates, and scaling. Per-token pricing is ideal for low-volume, variable, or exploratory workloads where fixed infrastructure costs would be wasteful.",
]
features = [
  "Time to value: Minutes — sign up and call an API",
  "Cost at low volume: Pay per token — no fixed cost",
  "Cost at high volume: Per-token cost grows linearly with usage",
  "Data privacy: Data sent to third-party servers",
  "Compliance: Depends on provider's certifications",
  "Model selection: Access to frontier models (Claude 4, GPT-5, Gemini 2.5)",
  "Latency: Adds network round-trip time",
  "Offline capable: Requires internet connectivity",
  "Operational overhead: Zero — provider manages infrastructure",
]
buttons = [
  { url = "https://console.anthropic.com", label = "Try Claude API", style = "outline", external = true },
]

[[extra.comparison_cols_items]]
title = "Self-Hosted"
label = "Best at scale or under compliance"
label_color = "success"
body = [
  "Self-hosted inference runs open-weight models on your own hardware. The same models you would call via API (Llama, Mistral, Qwen, Gemma, Phi) run locally with zero data leaving your network. Candle and xinfer deploy as single Rust binaries with no Python or Node dependencies — just download, configure, and serve.",
  "<strong>Our recommendation:</strong> Start with API-based inference to validate your use case and prove ROI. Migrate to self-hosted when your volume justifies the fixed infrastructure cost, your data privacy requirements demand it, or you need offline capability. We help you plan the transition at the right time.",
]
features = [
  "Time to value: Days — provision hardware, download model, configure engine",
  "Cost at low volume: Fixed GPU/server cost regardless of usage",
  "Cost at high volume: Fixed cost — marginal cost per request near zero",
  "Data privacy: Data stays on your hardware",
  "Compliance: Full control — meet any regulatory requirement",
  "Model selection: Limited to open-weight models",
  "Latency: Sub-millisecond local API calls",
  "Offline capable: Runs fully offline",
  "Operational overhead: You manage hardware, model updates, monitoring",
]
buttons = [
  { url = "https://github.com/huggingface/candle", label = "Explore Candle", style = "primary", external = true },
  { url = "https://github.com/guoqingbao/xinfer", label = "Explore xinfer", style = "outline", external = true },
]

info_cards_label = "Technology"
info_cards_title = "Inference Engines We Recommend"
info_cards_description = "We recommend open-source Rust-based inference engines — they produce small, fast binaries with zero external dependencies, ideal for production deployment on modest hardware."
info_cards_cols = 2

[[extra.info_cards_items]]
icon = "🕯️"
label = "General purpose"
title = "Candle"
body = [
  "Minimalist ML framework from Hugging Face. Ideal for most self-hosted inference scenarios — small binary (~8 MB), broad model support (Llama, Mistral, Phi, Gemma, Stable Diffusion, Whisper, YOLO), GPU acceleration via CUDA and Metal, and first-class WASM support for browser or edge deployment.",
]
highlights = [
  "20k+ GitHub stars, 260+ contributors — large, active community",
  "Quantization support via GGUF — run models on consumer GPUs",
  "Apache 2.0 licensed — fully open source",
]
buttons = [
  { url = "https://github.com/huggingface/candle", label = "View on GitHub", style = "outline", external = true },
]

[[extra.info_cards_items]]
icon = "⚡"
label = "Large models, single GPU"
title = "xinfer"
body = [
  "Blazing-fast LLM inference in pure Rust with zero Python dependencies. Designed for running 30B+ parameter models on single consumer GPUs. Achieves up to 197 tok/s decode for large models with aggressive KV cache compression (TurboQuant 2–4 bit) and continuous batching.",
]
highlights = [
  "Flash attention, FlashInfer, CUDA Graphs, prefix caching",
  "Runs on older GPUs (V100) with NVFP4 support",
  "OpenAI and Anthropic-compatible API — drop-in replacement",
  "Built-in Web UI and MCP tool calling",
]
buttons = [
  { url = "https://github.com/guoqingbao/xinfer", label = "View on GitHub", style = "outline", external = true },
]

services_grid_label = "Use cases"
services_grid_title = "When Private Inference Makes Sense"
services_grid_description = "These are the scenarios where self-hosting inference delivers clear advantages over API-based approaches."

[[extra.services_grid_items]]
icon = "📄"
title = "Document Processing & OCR"
description = "Extract data from invoices, contracts, forms, applications, receipts, and business records using OCR automation and document AI. Private inference ensures document contents never leave your network — critical for banking, legal, and healthcare compliance."

[[extra.services_grid_items]]
icon = "🔒"
title = "Internal Knowledge Assistants"
description = "RAG over proprietary documents, internal wikis, and confidential data. Self-hosted inference keeps both the document corpus and the queries inside your infrastructure — no proprietary data ever reaches a third-party API."

[[extra.services_grid_items]]
icon = "🏛️"
title = "Regulated Chatbots"
description = "Customer-facing AI in regulated industries (banking, insurance, healthcare) where data residency laws prohibit sending customer data to foreign API providers. Vietnam AI Law compliance is a common driver."

[[extra.services_grid_items]]
icon = "⚡"
title = "Batch Processing"
description = "High-volume classification, summarisation, or extraction workloads where per-token API costs accumulate quickly. At scale, self-hosted inference provides predictable fixed costs and near-zero marginal cost per request."

[[extra.services_grid_items]]
icon = "📡"
title = "Offline & Edge Environments"
description = "Manufacturing plants, remote sites, ships, or military installations with limited or no internet connectivity. Candle compiles to WASM and runs in the browser — inference without any network dependency whatsoever."

[[extra.services_grid_items]]
icon = "💰"
title = "Cost Control at Scale"
description = "Teams processing millions of requests per month often find self-hosted inference breaks even within 3–6 months vs API pricing. After break-even, every additional request is nearly free."

[[extra.services_grid_items]]
icon = "👁️"
title = "Computer Vision"
description = "Run vision models locally for defect detection, ID verification, traffic analysis, retail shelf monitoring, and workplace safety. Self-hosted inference keeps video feeds and images on your infrastructure — essential for manufacturing, logistics, and security applications."

process_label = "Our services"
process_title = "How We Help You Deploy Private Inference"
process_body = "We assess your workload, recommend the right model and engine, deploy on your infrastructure, and set up monitoring so your team can focus on building with AI instead of managing infrastructure."

[[extra.process_steps]]
step = "Step 1"
title = "Assess & Recommend"
description = "Evaluate your workload: throughput, latency, model size, privacy requirements, and budget. Recommend the optimal engine (Candle or xinfer) and hardware configuration."

[[extra.process_steps]]
step = "Step 2"
title = "Deploy & Optimise"
description = "Provision infrastructure, deploy the inference engine as a single binary, load and quantise your chosen model, configure the API layer, and optimise for throughput and latency."

[[extra.process_steps]]
step = "Step 3"
title = "Integrate & Harden"
description = "Connect your application to the local API endpoint, set up authentication and rate limiting, implement monitoring and alerting, and establish backup and recovery procedures."

[[extra.process_steps]]
step = "Step 4"
title = "Monitor & Iterate"
description = "Track inference metrics, model performance, and cost savings. Recommend model updates, hardware scaling, or API fallback strategies as your usage evolves."

deliverables_label = "Deliverables"
deliverables_title = "What You Get"

[[extra.deliverables_items]]
title = "Deployed Inference Server"
description = "Running on your infrastructure with your models."

[[extra.deliverables_items]]
title = "Performance Baseline"
description = "Benchmark results against API providers."

[[extra.deliverables_items]]
title = "Operations Dashboard"
description = "Monitoring, alerts, and cost tracking."

faq_label = "FAQ"
faq_title = "Common Questions"

[[extra.faq_items]]
question = "Is self-hosted inference as good as API-based models?"
answer = "For many workloads, yes. Open-weight models (Llama 3, Mistral, Qwen, Gemma, Phi) are competitive with frontier models on specific tasks. The trade-off is that frontier models (Claude 4, GPT-5, Gemini 2.5) are only available via API. We help you evaluate which tasks need frontier models and which can be served by self-hosted open-weight models — most teams find a hybrid approach works best."

[[extra.faq_items]]
question = "What hardware do I need?"
answer = "It depends on the model size and throughput requirements. Smaller models (7B–8B params) run well on a single consumer GPU (RTX 3090/4090, 24 GB VRAM). Larger models (30B–70B) benefit from professional GPUs (A100, H100) or multiple consumer GPUs. With quantisation and KV cache compression, xinfer can run 30B+ models on single 24–48 GB GPUs. We assess your workload and recommend the minimum viable hardware — often starting with a cloud GPU instance before committing to on-prem hardware."

[[extra.faq_items]]
question = "How much does it cost compared to API pricing?"
answer = "At low volume (<1M tokens/month), API pricing is cheaper because there is no fixed infrastructure cost. At high volume (10M+ tokens/month), self-hosted typically breaks even within 3–6 months. After break-even, the marginal cost of each additional request is near zero — just electricity and GPU wear. We build a cost model for your specific workload during the assessment phase so you know the numbers before committing."

[[extra.faq_items]]
question = "Is it hard to set up and maintain?"
answer = "Candle and xinfer are designed to minimise operational overhead — they ship as single static binaries with no Python, Node, or Docker dependencies. Deploying the initial setup typically takes 1–2 days. Ongoing maintenance involves model updates (a few times per year) and hardware monitoring. We handle the initial deployment and can provide ongoing managed services if your team prefers not to operate the infrastructure directly."

[[extra.faq_items]]
question = "Can I use a hybrid approach — API for some workloads, self-hosted for others?"
answer = "Absolutely. This is the recommended architecture. Use frontier API models for complex reasoning, creative tasks, and anything requiring the latest capabilities. Route high-volume, sensitive, or latency-critical tasks to your self-hosted inference server. Both Candle and xinfer expose OpenAI-compatible APIs, so your application code treats both the same way — just point at a different endpoint. We help you design and implement this routing."

cta_label = "Next step"
cta_title = "Ready to move inference in-house?"
cta_body = "We help you evaluate, deploy, and operate private inference on your infrastructure — with the right model, the right engine, and the right hardware for your workload."
cta_primary = "Book a consultation"
cta_primary_url = "/contact/"
cta_secondary_url = "#top"

+++
