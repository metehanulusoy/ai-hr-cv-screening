# 👥 AI-Powered HR CV Screening & Candidate Evaluation

> Automate your entire recruitment pipeline — from CV submission to AI-powered evaluation, scoring, and HR notification. Built with n8n, OpenAI GPT-4, and PDF parsing.

[![n8n](https://img.shields.io/badge/n8n-workflow-orange)](https://n8n.io)
[![OpenAI](https://img.shields.io/badge/OpenAI-GPT--4-green)](https://openai.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

---

## 📌 What It Does

This workflow replaces hours of manual CV screening with an automated AI pipeline. Candidates submit their CVs through a web form, the AI reads and evaluates each one against your job requirements, assigns a score, and notifies HR — all in under 30 seconds.

**Before:** HR reads 100 CVs manually (8–10 hours)
**After:** AI screens 100 CVs and sends ranked summaries (< 5 minutes)

---

## 🏗️ Architecture

```
Candidate submits CV (n8n Form)
         │
         ▼
   PDF Text Extraction
         │
         ▼
   AI Evaluation (GPT-4)
   ┌─────────────────────┐
   │ • Skills matching   │
   │ • Experience check  │
   │ • Score 1-10        │
   │ • Recommendation    │
   └─────────────────────┘
         │
    ┌────┴────┐
    │         │
    ▼         ▼
 Score ≥ 7  Score < 7
    │         │
    ▼         ▼
 HR Email   Archive
 (Shortlist)
```

---

## ✨ Features

- **Web Form Submission** — Candidates submit Name, Email, CV (PDF) via form
- **PDF Parsing** — Automatically extracts text from uploaded CVs
- **AI Scoring (1–10)** — GPT-4 evaluates candidates against your criteria
- **Detailed Evaluation** — Skills analysis, experience match, recommendation
- **Auto HR Notification** — Shortlisted candidates emailed to HR automatically
- **Customizable Criteria** — Easily change job requirements in the prompt
- **Multi-language CVs** — Works with CVs in any language

---

## 🛠️ Tech Stack

| Component | Technology |
|-----------|-----------|
| Automation Engine | n8n |
| AI Model | OpenAI GPT-4 |
| PDF Processing | n8n Extract from File node |
| Form | n8n Form Trigger |
| Notifications | Email (SMTP / Gmail) |

---

## 📋 Prerequisites

- n8n instance
- OpenAI API Key
- Email account (Gmail / SMTP) for HR notifications

---

## 🚀 Setup Guide

### Step 1 — Import Workflow
Import `workflow.json` into your n8n instance.

### Step 2 — Customize Job Requirements
Find the AI Evaluation node and update the system prompt with your specific requirements:

```
Evaluate this CV for a [JOB TITLE] position.
Requirements:
- [REQUIREMENT 1]
- [REQUIREMENT 2]
- [REQUIREMENT 3]

Score the candidate 1-10 and provide:
1. Skills match analysis
2. Experience relevance
3. Key strengths
4. Key weaknesses
5. Final recommendation (Shortlist / Reject)
```

### Step 3 — Configure HR Email
1. Set up your email credentials in n8n
2. Update the "Send to HR" node with your HR team's email address

### Step 4 — Share the Form
1. Activate the workflow
2. Copy the form URL from the Form Trigger node
3. Share it with candidates or embed it on your careers page

---

## 📊 Sample AI Output

```json
{
  "candidate": "John Smith",
  "score": 8.5,
  "skills_match": "Strong Python, SQL, and ML experience. Missing Kubernetes.",
  "experience": "4 years relevant experience, 2 years in required domain.",
  "strengths": ["Strong technical portfolio", "Relevant industry background"],
  "weaknesses": ["No leadership experience", "Missing cloud certifications"],
  "recommendation": "SHORTLIST",
  "summary": "Highly qualified candidate. Recommend for technical interview."
}
```

---

## 🎯 Customization Options

- **Scoring threshold** — Change the shortlist cutoff (default: 7/10)
- **Additional fields** — Add LinkedIn URL, portfolio link to the form
- **ATS Integration** — Connect to Greenhouse, Lever, or Workable via their APIs
- **Slack notifications** — Add Slack node to notify hiring managers instantly
- **Google Sheets logging** — Log all candidates to a spreadsheet for tracking

---

## 📁 Project Structure

```
ai-hr-cv-screening/
├── workflow.json              # Main n8n workflow
├── prompts/
│   ├── software_engineer.md   # Example prompt for SWE roles
│   ├── marketing.md           # Example prompt for marketing roles
│   └── template.md            # Blank template for any role
└── README.md
```

---

## 💡 ROI for Companies

| Metric | Manual | This System |
|--------|--------|-------------|
| Time per CV | 5–10 min | < 3 seconds |
| 100 CVs | ~8 hours | ~5 minutes |
| Consistency | Variable | 100% consistent |
| Bias | Possible | Reduced |

---

## 📄 License

MIT License
