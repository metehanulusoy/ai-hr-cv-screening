-- =============================================
-- AI HR CV Screening — Candidates Database
-- Run this in your Supabase SQL Editor
-- =============================================

-- Candidates table
CREATE TABLE IF NOT EXISTS candidates (
  id            UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name          TEXT NOT NULL,
  email         TEXT NOT NULL,
  position      TEXT NOT NULL,
  score         NUMERIC(3,1) CHECK (score >= 0 AND score <= 10),
  recommendation TEXT CHECK (recommendation IN ('SHORTLIST', 'MAYBE', 'REJECT')),
  skills_match  TEXT,
  experience_years INTEGER,
  strengths     TEXT[],
  weaknesses    TEXT[],
  summary       TEXT,
  cv_text       TEXT,
  created_at    TIMESTAMPTZ DEFAULT NOW()
);

-- Index for fast filtering by recommendation
CREATE INDEX IF NOT EXISTS candidates_recommendation_idx
ON candidates (recommendation);

-- Index for filtering by position
CREATE INDEX IF NOT EXISTS candidates_position_idx
ON candidates (position);

-- Index for sorting by score
CREATE INDEX IF NOT EXISTS candidates_score_idx
ON candidates (score DESC);

-- View: Only shortlisted candidates
CREATE OR REPLACE VIEW shortlisted_candidates AS
SELECT
  id, name, email, position,
  score, skills_match, summary, created_at
FROM candidates
WHERE recommendation = 'SHORTLIST'
ORDER BY score DESC;

-- View: Evaluation summary per position
CREATE OR REPLACE VIEW position_summary AS
SELECT
  position,
  COUNT(*)                                      AS total_applicants,
  COUNT(*) FILTER (WHERE recommendation = 'SHORTLIST') AS shortlisted,
  COUNT(*) FILTER (WHERE recommendation = 'MAYBE')     AS maybe,
  COUNT(*) FILTER (WHERE recommendation = 'REJECT')    AS rejected,
  ROUND(AVG(score), 1)                          AS avg_score,
  MAX(score)                                    AS top_score
FROM candidates
GROUP BY position
ORDER BY total_applicants DESC;
