+++
title = "Technology"
description = "Why we build with Rust and open source — performance, portability, security, and transparency without compromise."
template = "technology.html"
+++

We build AI systems with Rust and open-source software because production AI should be fast, portable, auditable, and free from vendor lock-in. Every tool we recommend — Burn, Candle, Dioxus, ADK-Rust, OpenFang, OpenCode, and LiquidOS — is open source, permissively licensed, and built in Rust.

## Why Rust

Rust gives us capabilities that Python and JavaScript stacks cannot match for production AI workloads:

**Single-binary deployment.** A Rust application compiles to a single static binary (~8 MB for an inference server) with zero runtime dependencies. No Python interpreter, no virtual environment, no Node runtime, no 2 GB Docker image. Copy the binary to a server and run it.

**Memory safety without garbage collection.** Rust's ownership model eliminates buffer overflows, use-after-free errors, and data races at compile time — not at runtime. For long-running AI services that must stay up for months, this is a material reliability advantage.

**Portable performance.** Rust compiles to native machine code with zero-cost abstractions. The same code can target CPU, NVIDIA CUDA, AMD ROCm, Apple Metal, Vulkan, and WebGPU — without rewriting. Burn's CubeCL kernel system automatically fuses operations and tunes them for your specific hardware, often exceeding the performance of LibTorch (PyTorch's C++ backend).

**No Python overhead.** Python's garbage collector, global interpreter lock, and 200 MB+ runtime are acceptable for research and prototyping. In production, they add latency, memory pressure, and operational complexity. Rust removes all of it.

**Cross-platform from one codebase.** Rust's tier-1 targets include Linux, macOS, Windows, iOS, Android, and WebAssembly. Dioxus compiles a single Rust codebase to native desktop apps, mobile apps, and web SPAs — all from the same source.

## Why Open Source

Every technology we recommend is permissively licensed (MIT, Apache 2.0, or both). We do not lock clients into proprietary platforms or closed ecosystems.

**Auditability.** Open-source code can be inspected, audited, and verified. When you deploy an AI system, you know exactly what it does — there are no black-box API calls to opaque models running on someone else's infrastructure.

**No vendor lock-in.** Open-source tools use open formats (ONNX, safetensors, GGUF). You can switch providers, frameworks, or hosting environments without rewriting your system. Model providers compete on quality and price, not on ecosystem captivity.

**Community-driven innovation.** Burn (11K+ GitHub stars), Dioxus (36K+), OpenCode (175K+), and Candle (15K+) are actively maintained by communities of thousands of contributors. Security issues are found and fixed faster than in closed-source alternatives.

**Self-hosted or air-gapped.** Open-source AI runs anywhere — cloud, on-premises, edge device, or air-gapped environment with no internet connectivity. For regulated industries and compliance-driven deployments, this is not optional.

## Our Stack

| Area | Tool | License | Why We Recommend It |
|---|---|---|---|
| Model training | **Burn** | MIT / Apache 2.0 | Rust-native deep learning, trains and deploys in the same language, 8 hardware backends, competitive performance with PyTorch |
| Model inference | **Candle** / **xinfer** | Apache 2.0 / MIT | Minimal Rust inference engines, single-binary deployment, support for 30B+ models on consumer GPUs |
| App development | **Dioxus** | MIT / Apache 2.0 | Single Rust codebase targets web, desktop, and mobile. React-like ergonomics with native performance |
| Custom agents | **ADK-Rust** (Google) / **AutoAgents** (LiquidOS) | Apache 2.0 | Production-grade agent frameworks with voice pipelines, A2A protocol, WASM sandboxing, and 26+ LLM providers |
| Business agent | **OpenFang** | Apache 2.0 | Full agent operating system, 32 MB binary, 7 autonomous hands, 40+ messaging platforms, 53 built-in tools |
| Agentic coding | **OpenCode** | MIT | Leading open-source coding agent, 175K+ GitHub stars, model-agnostic, privacy-first, zero telemetry |

## When We Use Python

Rust is not always the right answer. Python excels at rapid prototyping, data exploration, and accessing the broadest ecosystem of research models. Our typical approach:

- **Research and prototyping** — Python (PyTorch, HuggingFace, scikit-learn) for fast iteration
- **Production training and deployment** — Migrate to Rust (Burn, Candle) when the model needs a single binary, predictable performance, and no runtime dependencies
- **Data engineering and analysis** — Python for scripts, notebooks, and ad-hoc analysis; Rust for production pipelines

We specialise in this transition. If you already have a Python-based AI prototype, we can productionise it in Rust without changing your model architecture.

## Open Source Is Core to Our Business

We do not charge license fees, platform fees, or per-seat fees for our tooling. Our clients pay for engineering time, expertise, and delivery — not for access to proprietary software. Every model, agent, and application we build can be taken to another team and maintained independently.
