---
name: ai-ethics-fairness-bias-transparency
description: Use this skill when evaluating machine learning models and AI agents for demographic bias, fairness, transparency, and ethical alignment.
---
# AI Ethics: Fairness, Bias, Transparency & Accountability

## When to use
Use this skill when training machine learning classifiers, evaluating LLM agent prompts, deploying automated scoring systems (credit, hiring, fraud), or auditing AI outputs for harm.

## Core principles
- **Training Data Reflects Historical Injustices**: Models do not learn truth; they learn statistical patterns in historical data. If past hiring or lending decisions were biased, an uncalibrated model will automate and amplify that bias at scale.
- **The Multiple Definitions of Fairness (Impossibility Theorem)**: Mathematical definitions of fairness (Demographic Parity, Equal Opportunity, Predictive Parity) are mutually exclusive when base rates differ; teams must consciously select the ethically appropriate metric for the domain.
- **Explainability and Transparency**: High-stakes decisions affecting human lives (loans, parole, healthcare, employment) must provide clear, actionable human-understandable explanations, not opaque black-box scores.
- **Human Agency and Recourse**: Individuals impacted by automated AI decisions must always have an accessible pathway to appeal to a human decision-maker.

## Step-by-step workflow
1. **Audit training data distribution**: Evaluate dataset representation across demographic groups, edge cases, and protected classes.
2. **Measure disparity metrics**: Calculate disparate impact ratios, false positive rates, and false negative rates across subgroups.
3. **Mitigate algorithmic bias**:
   - Pre-processing: Re-weighting or balancing training samples.
   - In-processing: Applying fairness constraints to objective functions.
   - Post-processing: Adjusting classification decision thresholds across groups.
4. **Implement explainable AI (XAI)**: Generate feature importance scores (SHAP, LIME) explaining individual predictions.
5. **Establish human oversight loops**: Ensure automated rejections trigger human review workflows.

## Behavioral guidelines & dialogue examples
- **Evaluating a Machine Learning Resume Screening Classifier**:
  - *Biased Outcome*: Model penalizes resumes containing the word "women's" (e.g., "women's rugby captain") because historical engineering hires were 85% male.
  - *Ethical Audit & Fix*: Identify proxy variables correlating with protected attributes; scrub non-job-relevant demographic signals; benchmark model against synthetic balanced resume sets to enforce equal opportunity.

## Common mistakes & pitfalls
- Believing that "removing the race/gender column" eliminates bias (models easily reconstruct protected attributes from zip codes, schools, and browsing patterns).
- Deploying black-box deep learning models in high-consequence civic, medical, or legal applications without explainability.
- Treating ethical AI audits as a one-time pre-launch checkbox instead of continuous production monitoring.

## Verification checklist
- [ ] Training datasets are audited for demographic representation and historical bias.
- [ ] Disparity metrics (false positive/negative rates) are evaluated across protected subgroups.
- [ ] Automated high-consequence decisions offer clear, human-understandable explanations.
- [ ] Meaningful human review and appeal mechanisms are operational.

## Related skills
- first-principles-reasoning-system-breakdown
- consulting-qualified-legal-counsel-boundaries
- gdpr-data-privacy-principles-user-rights
- ml-best-practices
