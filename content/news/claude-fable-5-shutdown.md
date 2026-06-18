+++
title = "Claude Fable 5 Shutdown: US Government Forces Global Suspension 72 Hours After Launch"
description = "Anthropic's most capable model was pulled worldwide after an export control directive citing national security concerns over a disputed jailbreak claim."
date = 2026-06-18
authors = ["AI"]

[extra]
image = "claude-fable-5-shutdown.jpg"
+++

On June 9, 2026, Anthropic released Claude Fable 5 — its most capable publicly available model, posting 95% on SWE-bench Verified and leading nearly every coding and reasoning benchmark by double-digit margins. On June 12 at 5:21 PM ET, the US government ordered it shut down for every user on Earth. Fable 5 was live for exactly 72 hours.

It is the first time a US export control directive has forced the de-deployment of a commercially deployed frontier AI model.

## What Was Fable 5?

Fable 5 was the first publicly available model in Anthropic's new "Mythos-class" tier — a step above the Opus line. Built for long-horizon agentic tasks, it carried a 1 million token context window with up to 128,000 output tokens per request, priced at $10 per million input tokens and $50 per million output tokens.

The benchmark gap was not close. Fable 5 posted 80.3% on SWE-bench Pro; the next best competitor, GPT-5.5, sat at 58.6%. Stripe reported that Fable 5 compressed months of engineering into days, performing a codebase-wide migration of a 50-million-line Ruby codebase in a day that would have taken a team over two months by hand.

To mitigate risks from its cybersecurity and biology capabilities, Anthropic installed classifier-based safeguards that routed sensitive queries to Claude Opus 4.8. These triggered in less than 5% of sessions. Claude Mythos 5 — the same underlying model with safeguards lifted in certain areas — was deployed to a restricted set of Project Glasswing partners.

## The Directive

Commerce Secretary Howard Lutnick sent a letter to Anthropic CEO Dario Amodei on Friday afternoon declaring that both Fable 5 and Mythos 5 would be subject to export controls. The directive barred access by "any foreign national, whether inside or outside the United States, including foreign national Anthropic employees."

Anthropic cannot verify a user's nationality in real time — it is not a field in the authentication stack. The only way to comply was to pull both models for everyone. By 00:50 UTC on June 13, every API call to `claude-fable-5` and `claude-mythos-5` returned a 404. Other models — Opus 4.8, Sonnet 4.6, Haiku 4.5 — were unaffected.

## The Trigger: A Disputed Jailbreak

The directive cited a jailbreak claim. AI researcher Pliny the Liberator had published a multi-agent attack strategy using multiple AI instances to probe Fable 5's safety classifier in ways a single session could not. Amazon CEO Andy Jassy — who sits on Anthropic's board and whose company is Anthropic's largest investor and cloud provider — personally alerted Treasury Secretary Scott Bessent to Amazon's internal security findings. That escalation triggered the regulatory chain.

Anthropic disputed the characterization publicly. In a statement on June 12, the company said the government had provided only "verbal evidence of a potential narrow, non-universal jailbreak" — essentially asking the model to read a specific codebase and fix software flaws. Anthropic argued this capability is "widely available from other models (including OpenAI's GPT-5.5), and is used every day by the defenders who keep systems safe."

## Anthropic's Response

Anthropic complied with the directive but pushed back forcefully. The company's statement read:

> "We disagree that the finding of a narrow potential jailbreak should be cause for recalling a commercial model deployed to hundreds of millions of people. If this standard was applied across the industry, we believe it would essentially halt all new model deployments for all frontier model providers."

Anthropic noted that thousands of hours of red-teaming — including an external bug bounty — had produced no universal jailbreaks. The company described its defense-in-depth strategy as sound and argued that the government's action did not follow the transparent, fair process it has previously called for.

> "As we have stated publicly, we believe the government should have the ability to block unsafe deployments, as part of a statutory process that is transparent, fair, clear, and grounded in technical facts. This action does not adhere to those principles."

## Fallout and What Comes Next

For developers, the fix was immediate but disruptive: re-point from `claude-fable-5` to `claude-opus-4-8`. The performance gap is significant — roughly 11 points on SWE-bench Pro — making it a regression for teams that had already built pipelines around Fable 5's capabilities.

The timing was particularly awkward for Anthropic. The company had filed a confidential IPO prospectus with the SEC only days before the shutdown. The export action also created a compliance landmine: Microsoft removed Fable 5 from its internal Copilot model picker on June 10 over the 30-day data retention policy, and now faces regulatory exposure alongside Amazon.

White House AI adviser David Sacks confirmed the administration's position publicly, writing that the export control was issued "reluctantly" and that "the Admin's hope now is that Anthropic remediates the safety issue, the export control is lifted, and Fable goes back into general release." He said the administration "wants all of this to happen as soon as possible."

Anthropic ended its statement by apologizing to customers, saying it believes "this is a misunderstanding" and is "working to restore access as soon as possible." As of today, no restoration timeline has been provided. The likely path to reinstatement involves Anthropic releasing a variant with further restricted cyber capabilities that the government is willing to certify.

## Why It Matters

The Fable 5 shutdown is the first concrete test of whether export controls — originally designed for chips, weapons, and dual-use industrial technology — can be applied to AI models in real time, under emergency timelines, without freezing the frontier-model industry. The next few weeks will determine whether a carve-out framework emerges or the entire industry recalibrates around a more conservative deployment posture. Either way, a precedent has been set: a frontier model can be turned off globally, with no warning and no grace period, on national security grounds.
