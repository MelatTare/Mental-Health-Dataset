# Mental Health Care Utilization During COVID-19

## Overview
This project analyzes data from the **Household Pulse Survey** to understand how mental health care utilization changed during the COVID-19 pandemic in the United States.

The analysis focuses on identifying **key demographic and behavioral factors** that influence mental health service usage, including therapy, medication, as well as unmet care needs.

## Objectives
* Analyze trends in mental health care utilization over time
* Identify demographic groups with higher or lower usage
* Evaluate the impact of factors such as:
  * Age
  * Gender identity
  * Sexual orientation
  * Disability status
  * Mental health symptoms
* Assess whether **location (state)** influences utilization


## Tools & Technologies
* **R / RStudio**
* **PostgreSQL & MongoDB** (data querying)
* **Excel** (data cleaning & summaries)

### Statistical Methods
* Linear Regression
* Spearman Correlation
* ANOVA & Kruskal-Wallis Tests
* T-tests & Normality Tests


## Dataset
* Source: CDC & U.S. Census Bureau (Household Pulse Survey)
* Size: ~10,400 records, 15 variables

### Key Variables:
* Mental health service usage (therapy, medication, unmet need)
* Demographics (age, sex, race, education, gender identity, sexual orientation)
* Time (survey phases, periods)
* Geographic location (state-level data)


## Key Insights
### 1. Mental health service use increased over time 📈
* Strong positive relationship between survey phase and utilization
* Model explained **~83.5% of variation**
* Indicates growing demand for mental health services during the pandemic

### 2. Strongest predictors of utilization
Significant factors:
* Presence of **anxiety/depression symptoms**
* **Disability status**
* **Gender identity** (highest usage among transgender individuals)
* **Sexual orientation** (highest among bisexual individuals)

### 3. Moderate or weak predictors
* Age → moderate negative correlation, but not statistically significant
* Sex → no significant difference
* Education → no meaningful relationship
* Race → some variation, but not a strong predictor

### 4. State-level differences
* Utilization varies across states visually
* BUT statistical tests show:
  * No significant relationship
  * State is **not a strong predictor**

### 5. Overall utilization trends
* ~25.8% of adults used mental health services
* 22.3% used medication
* 10.5% received counseling
* 11.2% needed care but did not receive it

Highlights a **gap in access to mental health services**

## Data Challenges & Limitations
* Self-reported data → potential bias
* Online survey → underrepresentation of certain populations
* Missing and suppressed values
* Excludes informal care (apps, peer support, telehealth in some cases)

## Ethical Considerations
* Sensitive health data requires strict privacy protections
* Dataset uses:
  * **Anonymization**
  * **Differential privacy techniques**
* Balances data accuracy with confidentiality

## Analysis Performed
* Time-series analysis (mental health trends over phases)
* Demographic comparisons
* Correlation and regression modeling
* Hypothesis testing across multiple subgroups


## Project Structure
* `mental_health_analysis.R` → Full analysis
* Dataset (CDC Household Pulse Survey)


## Key Takeaways
* Mental health care demand increased significantly during COVID-19
* Utilization is driven more by **health status and identity factors** than demographics
* Significant disparities exist in access to care
* Data highlights a critical need for **expanded mental health resources**


## Future Work
* Include **telehealth and alternative care data**
* Analyze socioeconomic factors (income, employment)
* Expand to post-pandemic trends
* Build predictive models for mental health service demand

