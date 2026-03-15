# 📊 Demo Screening Results

**Position:** Senior Software Engineer (Full-Stack / Backend)
**Date:** March 2024
**Total CVs Processed:** 5
**Processing Time:** ~47 seconds total (~9.4 seconds per CV)
**Shortlisted:** 3 | **Maybe:** 1 | **Rejected:** 1

---

## Results Summary Table

| # | Candidate | Score | Recommendation | Experience | Key Skills Match |
|---|-----------|-------|----------------|------------|------------------|
| 1 | Sarah Johnson | **9.2 / 10** | ✅ SHORTLIST | 5 years | Python, FastAPI, PostgreSQL, K8s, Leadership |
| 2 | Priya Patel | **8.7 / 10** | ✅ SHORTLIST | 4 years | Python, ML/NLP, GCP, MLOps |
| 3 | Carlos Mendez | **7.8 / 10** | ✅ SHORTLIST | 6 years | DevOps/Platform, K8s, GCP, Python |
| 4 | Mehmet Yılmaz | **6.4 / 10** | 🟡 MAYBE | 3 years | Node.js, PostgreSQL, AWS |
| 5 | Alex Chen | **3.1 / 10** | ❌ REJECT | 0 years | Basic Python, HTML/CSS |

---

## Detailed AI Evaluations

### Candidate 1 — Sarah Johnson
```json
{
  "candidate": "Sarah Johnson",
  "score": 9.2,
  "recommendation": "SHORTLIST",
  "skills_match": "Excellent match. Python, FastAPI, PostgreSQL, Redis, Docker, Kubernetes all present. Strong full-stack capability with React/Next.js.",
  "experience_years": 5,
  "experience_relevance": "Highly relevant. Led microservices migration, built high-traffic APIs (2M req/day), mentored junior engineers.",
  "strengths": [
    "Strong technical depth across full stack",
    "Proven leadership and mentoring experience",
    "High-traffic production experience (2M+ daily requests)",
    "Open source contributions (1.2K stars)"
  ],
  "weaknesses": [
    "San Francisco based — may require relocation discussion"
  ],
  "summary": "Top candidate. Strong technical portfolio, leadership experience, and directly relevant skills. Recommend fast-tracking to technical interview."
}
```

---

### Candidate 2 — Priya Patel
```json
{
  "candidate": "Priya Patel",
  "score": 8.7,
  "recommendation": "SHORTLIST",
  "skills_match": "Strong Python background with advanced ML/NLP expertise. Kubernetes, GCP, production ML systems experience highly valuable.",
  "experience_years": 4,
  "experience_relevance": "Very relevant for ML-heavy engineering roles. Production experience at Revolut (15M users) demonstrates ability to work at scale.",
  "strengths": [
    "Rare combination of ML engineering + software engineering",
    "Production ML at massive scale (15M users)",
    "Fraud detection and NLP systems experience",
    "Master's degree in ML from UCL"
  ],
  "weaknesses": [
    "Less frontend experience — primarily backend/ML focused",
    "Role may need clarification if position is pure full-stack"
  ],
  "summary": "Exceptional ML engineer. If position involves AI/ML components, this is a standout candidate. Recommend shortlisting with role clarification."
}
```

---

### Candidate 3 — Carlos Mendez
```json
{
  "candidate": "Carlos Mendez",
  "score": 7.8,
  "recommendation": "SHORTLIST",
  "skills_match": "Strong DevOps/Platform profile. Kubernetes, Terraform, GCP expertise is excellent. Python and Go present but less software development focus.",
  "experience_years": 6,
  "experience_relevance": "Relevant for platform or infrastructure roles. If position requires heavy feature development, candidate profile may be stronger on infra side.",
  "strengths": [
    "Extensive Kubernetes and cloud infrastructure expertise",
    "Cost optimization track record (€180K savings)",
    "Large-scale systems (8M MAU at Glovo)",
    "Multiple professional certifications"
  ],
  "weaknesses": [
    "More DevOps than software engineering background",
    "Less frontend/application development experience"
  ],
  "summary": "Strong candidate for platform/DevOps-adjacent roles. Recommend shortlisting with a discussion about how much infrastructure vs. feature work the role involves."
}
```

---

### Candidate 4 — Mehmet Yılmaz
```json
{
  "candidate": "Mehmet Yılmaz",
  "score": 6.4,
  "recommendation": "MAYBE",
  "skills_match": "Moderate match. Node.js, PostgreSQL, Redis, AWS present. Missing TypeScript depth, system design experience, and leadership background.",
  "experience_years": 3,
  "experience_relevance": "Relevant but junior for a senior role. Work at Getir shows real-world backend experience but scale and complexity are below senior expectations.",
  "strengths": [
    "Real production experience at a scale-up (Getir)",
    "AWS certification demonstrates cloud commitment",
    "Payment API integration experience"
  ],
  "weaknesses": [
    "3 years may be insufficient for senior-level role",
    "No leadership or mentoring experience",
    "Limited system design exposure"
  ],
  "summary": "Solid junior-to-mid level candidate. Consider for mid-level position if headcount allows, or revisit in 1-2 years for senior role."
}
```

---

### Candidate 5 — Alex Chen
```json
{
  "candidate": "Alex Chen",
  "score": 3.1,
  "recommendation": "REJECT",
  "skills_match": "Poor match for senior role. Only beginner-level Python and Java. No professional software development experience. Marketing internship not relevant.",
  "experience_years": 0,
  "experience_relevance": "Not relevant. WordPress and Canva work at marketing agency does not qualify as software engineering experience.",
  "strengths": [
    "Computer Science degree completed",
    "Shows initiative with personal projects"
  ],
  "weaknesses": [
    "No professional software engineering experience",
    "Beginner-level programming skills",
    "GPA below company threshold (2.7 vs required 3.0+)",
    "Projects too basic for senior role requirements"
  ],
  "summary": "Not suitable for this role at this time. Candidate may be considered for junior/internship positions in the future after gaining 1-2 years of experience."
}
```

---

## ⏱ Performance Metrics

| Metric | Value |
|--------|-------|
| Total processing time | 47.3 seconds |
| Average per CV | 9.4 seconds |
| Equivalent manual time | ~4.5 hours |
| Time saved | **~4.4 hours (97% reduction)** |
| Consistency score | 100% (same criteria applied) |

---

## 🗄️ Database Output (PostgreSQL)

```sql
SELECT name, score, recommendation, experience_years
FROM candidates
ORDER BY score DESC;

 name           | score | recommendation | experience_years
----------------|-------|----------------|------------------
 Sarah Johnson  |   9.2 | SHORTLIST      | 5
 Priya Patel    |   8.7 | SHORTLIST      | 4
 Carlos Mendez  |   7.8 | SHORTLIST      | 6
 Mehmet Yılmaz  |   6.4 | MAYBE          | 3
 Alex Chen      |   3.1 | REJECT         | 0
(5 rows)
```

---

*Demo conducted using GPT-4o-mini. Results are for demonstration purposes using fictional candidate profiles.*
