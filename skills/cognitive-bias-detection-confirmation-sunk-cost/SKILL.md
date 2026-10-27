---
name: cognitive-bias-detection-confirmation-sunk-cost
description: Use this skill when detecting and mitigating cognitive biases, confirmation bias, and sunk-cost fallacies in technical decision making.
---
# Cognitive Bias Detection: Confirmation & Sunk Cost

## When to use
Use this skill when auditing controversial architectural decisions, reviewing failing multi-month projects, evaluating tool migrations, or assessing why a team is resisting empirical data.

## Core principles
- **Engineers are Human and Deeply Prone to Biases**: Technical training does not grant immunity to cognitive distortions; high intelligence often just enables engineers to construct more elaborate rationalizations for biased choices.
- **The Core Engineering Cognitive Biases**:
  - *Sunk-Cost Fallacy*: Clinging to a failing architecture or library simply because the team already invested 6 months of grueling effort into it.
  - *Confirmation Bias*: Actively searching for benchmarks that prove your favorite framework is fast while ignoring logs showing massive memory leaks in production.
  - *IKEA Effect (Not-Invented-Here Syndrome)*: Overvaluing custom in-house software over superior open-source tools simply because "we built it".
  - *Recency / Novelty Bias (Shiny Object Syndrome)*: Rewriting stable, working code in the newest experimental framework released on Hacker News last week.
- **Sunk Costs are Sunk**: The time, money, and suffering spent yesterday cannot be recovered; the only rational question is: *"Starting from today, what is the best investment of our next dollar and next hour?"*

## Step-by-step workflow
1. **Identify defensive emotional language**: Watch for phrases like "We've already put so much time into this", "We can't throw away that work now", or "Our bespoke engine will be great once we finish it".
2. **Separate past investments from future utility**: Calculate the forward-looking cost to complete vs. the cost of pivoting to an established alternative.
3. **Execute the "Clean Slate Test"**: Ask: "If you joined this company this morning with zero emotional attachment to past commits, what would you choose today?"
4. **Actively search for disconfirming evidence**: Seek out failure reports, negative reviews, and production postmortems for the favored technology.
5. **Reframe pivots as intelligent learning**: Celebrate terminating failing initiatives as saving the company months of future agony.

## Behavioral guidelines & dialogue examples
- **Dialogue Example (Confronting Sunk Cost in a Bespoke ORM Project)**:
  - *Biased Perspective*: "We spent 9 months building our custom database ORM. It's full of bugs and missing transaction support, but we can't switch to Prisma now—that would make the last 9 months a complete waste of time!"
  - *Unbiased Rational Realignment*: "The 9 months we spent gave us a deep, invaluable understanding of our data schema edge cases. But those 9 months are gone whether we continue or stop.
  
  Looking forward: fixing transactions in our custom engine will take an estimated 4 more months of ongoing maintenance forever. Adopting Prisma will take 2 weeks of migration and has zero ongoing maintenance. Let's thank our custom prototype for the lessons learned, retire it with dignity, and invest our future hours into features our customers actually pay for."

## Common mistakes & pitfalls
- Attacking colleagues personally as "biased" instead of focusing on the forward-looking financial and operational data.
- Ignoring real switching costs when proposing a pivot away from a sunk-cost project.
- Replacing one biased choice with another shiny novelty without rigorous evaluation.

## Verification checklist
- [ ] Decision criteria evaluate future ROI rather than past invested effort.
- [ ] The Clean Slate Test is applied to separate emotion from technical utility.
- [ ] Disconfirming evidence and negative benchmarks are actively investigated.
- [ ] Pivots are framed as strategic milestones rather than shameful failures.

## Related skills
- first-principles-reasoning-system-breakdown
- chestertons-fence-evaluating-existing-systems
- trade-off-analysis-pros-cons-cost-benefit
- critical-thinking-and-decision-making
