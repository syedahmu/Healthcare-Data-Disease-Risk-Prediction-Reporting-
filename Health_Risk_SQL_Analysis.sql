-- =====================================
--  Project: Health Risk SQL Analysis
-- Table: pateints
-- =====================================

-- Create table for diabetes dataset
CREATE TABLE pateints(
Gender TEXT(20),
 Age INT,
 Hypertension INT,
 Heart_Disease INT,
  Smoking_History TEXT(50),
  BMI DOUBLE,
   HbA1c_level DOUBLE,
   Blood_Glucose_level INT,
   Diabetes INT,
   Age_Group TEXT,
   Lifestyle_Index INT,
   Is_At_Risk INT,
   Normalized_age DOUBLE,
   Normalized_BMI DOUBLE
   );
   
  -- High-risk patients proxy
  
SELECT *
FROM healthcare_data.pateints
WHERE hypertension = 1
  AND HbA1c_level >= 6.5
  AND blood_glucose_level > 140;
  
  -- Gender-based diabetes distribution
SELECT
    gender,
    COUNT(*) AS total_patients,
    SUM(diabetes) AS diabetic_cases,
    ROUND(SUM(diabetes) * 100.0 / COUNT(*), 2) AS diabetes_rate_pct
FROM healthcare_data.pateints
GROUP BY gender;
   
   --  1. List all patients aged over 60 with high cholesterol and high blood pressure
-- Note: High cholesterol is proxied using HbA1c >= 6.5 (diabetes threshold)

SELECT *
FROM healthcare_data.pateints
WHERE age > 60
  AND hypertension = 1
  AND HbA1c_level >= 6.5;
  
  --  2. Group patients by risk categories based on clinical indicators
-- High Risk: diabetes = 1 OR (hypertension = 1 AND HbA1c >= 6.5)
-- Medium Risk: HbA1c between 5.7 and 6.4 OR blood glucose > 140
-- Low Risk: all else

SELECT
    age,
    gender,
    bmi,
    HbA1c_level,
    blood_glucose_level,
    hypertension,
    diabetes,
    CASE
        WHEN diabetes = 1 OR (hypertension = 1 AND HbA1c_level >= 6.5) THEN 'High Risk'
        WHEN HbA1c_level BETWEEN 5.7 AND 6.4 OR blood_glucose_level > 140 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_category
FROM healthcare_data.pateints;

-- . Efficiently detect and count missing EHR entries
-- Note: Check for NULLs in clinical fields

SELECT
    COUNT(*) AS total_records,
    SUM(CASE WHEN bmi IS NULL THEN 1 ELSE 0 END) AS missing_bmi,
    SUM(CASE WHEN HbA1c_level IS NULL THEN 1 ELSE 0 END) AS missing_HbA1c,
    SUM(CASE WHEN blood_glucose_level IS NULL THEN 1 ELSE 0 END) AS missing_glucose,
    SUM(CASE WHEN smoking_history IS NULL THEN 1 ELSE 0 END) AS missing_smoking_history
FROM healthcare_data.pateints;


 --  Export-friendly view for Power BI or reporting
-- Combines key demographic and clinical fields with risk category

CREATE VIEW patient_risk_summary AS
SELECT
    age,
    gender,
    smoking_history,
    bmi,
    HbA1c_level,
    blood_glucose_level,
    hypertension,
    heart_disease,
    diabetes,
    CASE
        WHEN diabetes = 1 OR (hypertension = 1 AND HbA1c_level >= 6.5) THEN 'High Risk'
        WHEN HbA1c_level BETWEEN 5.7 AND 6.4 OR blood_glucose_level > 140 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS risk_category
FROM healthcare_data.pateints;