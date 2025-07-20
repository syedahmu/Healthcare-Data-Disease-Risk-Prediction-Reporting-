# Healthcare-Data-Disease-Risk-Prediction-Reporting-

Healthcare Data Analytics: Disease Risk Prediction & Reporting
Empowering preventive healthcare through predictive analytics and interactive dashboards.

📌 Project Overview
MedXCare Analytics partnered with us to develop a data-driven solution for predicting chronic disease risks (diabetes & heart disease) using real-world Electronic Health Record (EHR) data. This project transforms raw patient data into actionable insights, enabling early interventions and resource optimization for healthcare providers.

Core Objectives:

🎯 Predict high-risk patients using machine learning.

🛠️ Facilitate targeted interventions through data patterns.

📊 Visualize risk distributions via an interactive dashboard.

🛠️ Tools & Technologies
Languages: Python, SQL

Libraries: Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn

Data Processing: Data cleaning, feature engineering, normalization

ML Models: Logistic Regression, Random Forest, Gradient Boosting

Visualization: Power BI (interactive dashboard), ReportLab (PDF reports)

Database: MySQL/PostgreSQL

📂 Dataset
Real-world EHR data from hospital partners, including:

Demographics: Age, gender, ethnicity

Lifestyle: Smoking status, alcohol consumption, physical activity

Clinical Indicators: Blood pressure, glucose levels, BMI, HbA1c

Medical History: Prior diagnoses, family disease history

🔍 Methodology
1. Data Preprocessing
Handled missing values using imputation (mean/median) and categorical encoding.

Created derived features:

Lifestyle Index (smoking + alcohol + activity composite).

Risk Category (Low/Medium/High based on clinical thresholds).

Normalized continuous variables (age, BMI, HbA1c).

2. Exploratory Data Analysis (EDA)
Analyzed correlations between variables (e.g., HbA1c vs. diabetes risk).

Visualized distributions (histograms, box plots) and trends across demographics.

3. Machine Learning Modeling
Trained classification models (Logistic Regression, Random Forest).

Evaluated performance using accuracy, precision, recall, F1-score, and ROC-AUC.

Top Predictors: HbA1c, glucose levels, BMI, age.

4. Dashboard & Reporting
Built an interactive Power BI dashboard with:

Risk category distribution.

Demographic/geographic risk comparisons.

Real-time filters (age, gender, lifestyle).

Automated PDF reports for clinical summaries.

🔑 Key Findings
BMI Impact: >60% of patients were overweight/obese, strongly linked to diabetes/cardiac risks.

Age Factor: Diabetes cases spiked sharply in patients aged 50+.

Clinical Thresholds: HbA1c >6.5% and glucose >140 mg/dL were top high-risk indicators.

Gender Disparities: Males showed higher average risk, but regional variations existed.

Lifestyle Amplifiers: Smoking + hypertension compounded glucose/BMI risks.

🚧 Challenges & Learnings
Data Gaps: Addressed missing values via imputation and indicator variables.

Interpretability: Balanced model complexity (e.g., Random Forest) with explainability tools (feature importance plots).

Stakeholder Usability: Designed intuitive Power BI dashboards for non-technical users.

Ethical AI: Prioritized transparency in risk predictions for clinical trust.

📈 Recommendations
Targeted Screening: Prioritize patients >50 years with high BMI for diabetes testing.

Lifestyle Programs: Launch wellness plans (diet, exercise, smoking cessation) for medium-risk cohorts.

Data Enrichment: Improve EHR completeness for lifestyle factors.

EHR Integration: Add real-time risk alerts to hospital systems.

Model Maintenance: Retrain models every 6–12 months with new data.

📸 Visual Insights
https://screenshots/dashboard.png
Power BI dashboard highlighting risk distribution and demographic trends.

https://screenshots/eda.png
EDA: Distributions of HbA1c, age, and BMI across the patient population.

💡 Conclusion
This project bridges data science and preventive healthcare, enabling providers to shift from reactive to proactive care. By identifying high-risk patients early and visualizing actionable insights, we support MedXCare’s mission to reduce chronic disease burdens through timely interventions.

Impact: Optimized resource allocation, reduced long-term costs, and improved patient outcomes.


├── data/                    # Processed datasets (sample)
├── notebooks/               # Jupyter notebooks (EDA, modeling)
│   ├── 1_data_cleaning.ipynb
│   ├── 2_eda.ipynb
│   └── 3_model_training.ipynb
├── src/                     # Python scripts (dashboard automation, utilities)
├── reports/                 # Generated PDF reports
├── powerbi_dashboard/       # Power BI files
└── screenshots/             # Visual outputs


👤 Author:  Syed Taqi Abbas
📧 Contact: syedahmu123@gmail.com
📄 License: MIT
