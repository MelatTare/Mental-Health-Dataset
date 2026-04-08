# Mental Health Care Utilization During COVID-19

## Overview
This project analyzes data from the Household Pulse Survey to understand how mental health care utilization changed during the COVID-19 pandemic in the United States.

This analysis focuses on identifying the key demographic and behavioral factors that influence mental health service usage, including therapy, medication, as well as unmet care needs.

## Objectives
* Analyze trends in mental health care utilization over the course of the survey (within 4 weeks)
* Identify demographic groups rates of mental health care utilization
* Evaluate the impact of factors such as:
  * Age
  * Education Backgrounds
  * Gender identity
  * Sexual orientation
  * Disability status
  * Mental health symptoms (ex. anxiety, depression)
* Assess whether location (state) influences utilization


## Tools & Technologies
* **R / R-Studio**
* **PostgreSQL & MongoDB** (data querying)
* **Excel** (data cleaning & summaries)


## Dataset
* Source: CDC & U.S. Census Bureau (Household Pulse Survey)
* Dataset: CDC (Mental Health Care in the Last 4 Weeks)
* Size: 10,404 records, 15 variables


### Statistical Methods
* Linear Regression
* Spearman Correlation
* ANOVA, Shapiro-Wilk & Kruskal-Wallis Tests
* Welch's Two Sample T-tests 


## Analysis Performed
* Time-series analysis (mental health trends over phases)
* Demographic comparisons
* Correlation and regression modeling
* Hypothesis testing across multiple subgroups


## Key Insights
### 1. Mental health service use increased over time
* Strong positive relationship between survey phase and utilization
* Model explained ~83.5% of variation
* Indicates growing demand for mental health services during the pandemic

### 2. Strongest predictors of utilization
Significant factors:
* Presence of anxiety/depression symptoms
* Disability status
* Gender identity (highest usage among transgender individuals)
* Sexual orientation (highest among bisexual individuals)

### 3. Moderate or weak predictors
* Age: moderate negative correlation, but not statistically significant
* Sex: no significant difference
* Education: no meaningful relationship
* Race: some variation, but not a strong predictor

### 4. State-level differences
* Utilization varies across states visually
* BUT statistical tests show:
  * No significant relationship
  * State is not a strong predictor

### 5. Overall utilization trends
* ~25.8% of adults used mental health services
* 22.3% used medication
* 10.5% received counseling
* 11.2% needed care but did not receive it
This highlights a gap in access to mental health services.

## Data Challenges & Limitations
* Self-reported data → potential bias
* Online survey → underrepresentation of certain populations
* Missing and suppressed values
* Excludes informal care (apps, peer support, telehealth in some cases)

## Ethical Considerations
* Sensitive health data requires strict privacy protections
* Dataset uses:
  * Anonymization
  * Differential privacy techniques
* Dataset balances data accuracy with confidentiality


## Project Structure
* `mental_health_analysis.R` → Full analysis


## Key Takeaways
* Mental health care demand increased significantly during COVID-19
* Utilization is driven more by health status and identity factors than demographics
* Significant disparities exist in access of care
* Data highlights the need for expanded mental health resources/ access to resources


## Future Work
* Include telehealth and alternative care data
* Analyze socioeconomic factors (income, employment, careers, climate, religon)
* Expand to post-pandemic trends
* Gather feedback on what people consider to be mental health care (get a more accurate picture of mental health access. 

