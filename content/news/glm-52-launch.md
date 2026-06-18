+++
title = "Z.ai Launches GLM-5.2: Open-Weight 1M-Context Model Rivals Closed-Source Frontier on Coding"
description = "Z.ai releases GLM-5.2 under MIT license with a usable 1M-token context, competitive coding benchmarks, and pricing at roughly one-tenth of Claude or GPT-5."
date = 2026-06-18
authors = ["AI"]

[extra]
image = "glm-52-launch.jpg"
+++

Z.ai (formerly Zhipu AI) released GLM-5.2 on June 13, 2026 — an open-weight, MIT-licensed model that benchmarks within striking distance of Claude Opus 4.8 and GPT-5.5 on long-horizon coding tasks. The release went live exactly one day after the US government ordered Anthropic's Fable 5 offline, creating a window for an open-source alternative at roughly one-tenth the price.

GLM-5.2 is a 744-billion-parameter mixture-of-experts model with ~40 billion active parameters per token and 384 experts. Its headline feature is a usable 1-million-token context window — up from 200K in GLM-5.1 — with up to 131,072 output tokens per request. Two thinking-effort levels (High and Max) let users trade latency for capability.

The model's key architectural innovation is IndexShare, which reuses the same sparse-attention indexer across every four transformer layers, reducing per-token FLOPs by 2.9× at 1M context. An improved multi-token prediction layer for speculative decoding increases acceptance length by 20%, according to Z.ai.

## Benchmark Positioning

On benchmarks published this week, GLM-5.2 trails Claude Opus 4.8 by just 1% on FrontierSWE (74.4 vs. 75.1) while edging out GPT-5.5 (72.6). On SWE-bench Pro it scores 62.1, up from GLM-5.1's 58.4. On Terminal-Bench 2.1 it posts 81.0 — within 4 points of Opus 4.8's 85.0 and ahead of GPT-5.5 and Gemini 3.1 Pro. On PostTrainBench and SWE-Marathon, it ranks second only to the Opus series. Across all three long-horizon benchmarks, GLM-5.2 is the highest-ranked open-source model.

Standard coding results are similarly strong — 81.0 on Terminal-Bench 2.1, 62.1 on SWE-bench Pro, 48.9 on NL2Repo, and 63.7 on ProgramBench. On reasoning benchmarks, it scores 40.5 on Humanity's Last Exam, 99.2 on AIME 2026, and 91.2 on GPQA-Diamond.

## Geopolitical Timing

GLM-5.2 launched one day after the US Department of Commerce barred access to Anthropic's Fable 5 and Mythos 5 for foreign nationals, forcing their total shutdown. With Western frontier models unavailable or priced at a premium, GLM-5.2 offers an MIT-licensed alternative at approximately $1.40 per million input tokens and $4.40 per million output tokens through OpenRouter, or $10–80/month via Z.ai's Coding Plan. Z.ai's Hong Kong-listed shares surged 48% following the announcement.

## Availability

The model is compatible with Claude Code, Cline, OpenCode, and six other agentic coding tools via an OpenAI-compatible endpoint. Cloudflare Workers AI and Vercel AI Gateway added support within days. Weights are hosted on Hugging Face (`zai-org/GLM-5.2`) and ModelScope in both BF16 and FP8 precisions.

Full-precision deployment requires roughly 1.5 TB of GPU memory — approximately eight H200 GPUs — putting self-hosting out of reach for most teams. The FP8 variant reduces this footprint but still demands multi-GPU infrastructure.

## Data Risk Caveat

API users should note that Z.ai is a Beijing-based company subject to China's National Intelligence Law, which compels organizations to cooperate with state intelligence efforts. Zhipu AI was placed on the US Entity List in January 2025 for its role in advancing Chinese military AI development. Self-hosting the open weights eliminates API-based data exposure but, as noted, requires significant GPU infrastructure.
