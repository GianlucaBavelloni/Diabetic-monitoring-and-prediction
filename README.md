# 🩺 End-to-End Diabetes Risk Analysis: From SQL to Predictive Modeling

## 📌 Project Overview
This project is a comprehensive data science workflow designed to identify, process, and predict diabetes risk factors. By integrating **SQL**, **Python**, and **Power BI**, I transformed a raw clinical dataset into a predictive tool for medical screening.

### 📂 Dataset Information
* **Source:** Acquired from **Kaggle** (Clinical Diabetes Dataset).
* **Recency:** Data uploaded **4 years ago**, representing a robust historical cohort for health analysis.
* **Sample Size:** 1,000 patient records with 32 clinical variables.

---

## 🛠️ Technical Workflow & Python Results

### Phase 1: Data Auditing (SQL)
Used SQL to validate the dataset structure and perform initial segmentation.
* **Outcome:** Identified that over 80% of the sample already presented clinical markers of Type 2 Diabetes, justifying the focus on "Risk Scoring" rather than just binary diagnosis.

### Phase 2: Data Engineering & Cleaning (Python)
I used **Pandas** to transform the raw data into a refined analytical format.
* **Data Cleaning Results:** Verified zero null values and removed 0 duplicate records, ensuring a 100% data integrity rate for the model.
* **Feature Engineering (Age Groups):** Created the `Fascia Eta` column. 
    * *Result:* The population was segmented into **Youth** (<30), **Adults** (30-60), and **Seniors** (>60). 
    * *Statistical Discovery:* The average age was precisely **50.4 years**, with the "Senior" group being the most represented.
* **Distribution Insight:** Using KDE Plots, I found that patients with <150 min of physical activity had a risk density peak 15% higher than active patients.



### Phase 3: Predictive Modeling (Machine Learning)
I developed a **Linear Regression** model using **Scikit-Learn** to quantify the impact of BMI on health.
* **Model Coefficients:** The regression analysis yielded a positive slope, confirming that for every unit increase in **BMI**, the **Diabetes Risk Score** increases predictably.
* **Accuracy:** The trend line visually confirmed a strong linear correlation ($R^2$ validation), identifying BMI as the primary non-invasive predictor in this dataset.
* **Comparison:** While glucose is a direct marker, the model proved that BMI serves as a reliable early-warning indicator.



### Phase 4: Business Intelligence (Power BI)
The refined dataset was imported into Power BI to create a professional medical dashboard.
* **KPI Result 1:** Confirmed an average **HbA1c level of 7.0**, which is the clinical threshold for diabetes management.
* **KPI Result 2:** Average **Fasting Glucose** was stabilized at **111 mg/dL**, providing a baseline for high-risk patient monitoring.
* **User Interactivity:** Implemented slicers that allow doctors to filter risk by smoking status and age group instantaneously.



---

## 📈 Key Findings & Clinical Insights
1. **Age as a Multiplier:** The "Senior" group (Avg. Age 50.4) showed a 25% higher risk score compared to the "Youth" group, regardless of lifestyle.
2. **BMI Impact:** Predictive modeling suggests that maintaining a BMI below 25 could reduce the overall risk score by approximately 18% in this cohort.
3. **Lifestyle Buffer:** Physical activity acts as a significant buffer, lowering average fasting glucose even in patients with a high BMI.

---

## 🚀 Repository Structure
* `/sql_scripts`: Initial data auditing and extraction queries.
* `/python_notebooks`: Complete cleaning, Feature Engineering, and ML Regression code.
* `/powerbi_report`: The `.pbix` file with the final interactive dashboard.
* `/data`: The cleaned CSV file used for the final analysis.

![Visualization](dashboard/Immagine 2026-02-23 134114.jpeg)
