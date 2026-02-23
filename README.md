# 🩺 End-to-End Diabetes Risk Analysis: From SQL to Predictive Modeling

## 📌 Project Overview
Questo progetto rappresenta un'analisi analitica completa volta a identificare, processare e predire i fattori di rischio associati al diabete. Utilizzando un approccio multidisciplinare che combina **SQL**, **Python (Machine Learning)** e **Business Intelligence (Power BI)**, l'obiettivo è trasformare dati clinici grezzi in insight strategici per la prevenzione medica.

### 📂 Dataset Information
* **Source:** Il dataset è stato acquisito da **Kaggle**, una delle principali piattaforme di Data Science.
* **Recency:** I dati originali risalgono a circa **4 anni fa**, rappresentando uno snapshot storico fondamentale per studi longitudinali sulla salute.
* **Sample Size:** 1.000 record di pazienti con 32 variabili cliniche e demografiche.

---

## 🛠️ Technical Workflow

### Phase 1: Data Auditing & Extraction (SQL)
Prima di procedere alla modellazione, ho utilizzato SQL per interrogare il database e comprendere la struttura dei dati.
* **Querying:** Estrazione di segmenti specifici per analizzare la prevalenza del diabete in base all'etnia e al livello di istruzione.
* **Data Integrity:** Verifica della coerenza tra variabili come `Glucose Fasting` e `Diagnosed Diabetes` per assicurare che il dataset fosse privo di anomalie strutturali.

### Phase 2: Python Data Engineering & Statistical Analysis
In questa fase critica, ho utilizzato **Python (Pandas, Seaborn, Matplotlib)** per pulire e arricchire il dataset.
* **Feature Engineering:** Ho introdotto la variabile `Fascia Eta` (Age Groups) segmentando i pazienti in *Youth* (<30), *Adulti* (30-60) e *Senior* (>60). Questo ha permesso di scoprire che l'età media del campione è di **50.4 anni**.
* **Advanced Visualization:** Ho implementato grafici di densità (**KDE Plots**) per analizzare come la distribuzione del rischio vari radicalmente tra pazienti sedentari e pazienti fisicamente attivi.
* **Outlier Detection:** Identificazione e gestione di valori anomali nei parametri di BMI e pressione sistolica.

### Phase 3: Predictive Modeling (Machine Learning)
Per andare oltre la semplice descrizione dei dati, ho implementato un modello di **Regressione Lineare** con **Scikit-Learn**:
* **Algoritmo:** Linear Regression.
* **Variabile Indipendente (X):** BMI (Body Mass Index).
* **Variabile Target (Y):** Diabetes Risk Score.
* **Insight Tecnico:** Il modello ha validato statisticamente che il BMI è un predittore robusto del rischio diabetico, con un coefficiente di correlazione che indica un aumento costante del rischio all'aumentare della massa corporea.

### Phase 4: Business Intelligence Dashboard (Power BI)
L'output finale è una dashboard interattiva progettata per il monitoraggio clinico:
* **KPI Tracking:** Monitoraggio in tempo reale della media di `HbA1c` (7.0) e `Glucose Fasting` (111 mg/dL).
* **Dynamic Filtering:** Possibilità di navigare i dati per stato di fumatore, attività fisica e fasce d'età create in Python.
* **Interattività:** La dashboard permette di isolare i fattori di rischio per identificare i "cluster" di pazienti più vulnerabili.

---

## 📈 Key Clinical Insights
1.  **Impatto dell'Età:** La categoria "Senior" mostra un `Diabetes Risk Score` significativamente più alto, confermando l'età come fattore di rischio primario (Età Media: 50.4).
2.  **Stile di Vita:** I dati confermano che anche brevi sessioni di attività fisica settimanale correlano con una riduzione dei livelli medi di glucosio a digiuno.
3.  **Validazione Medica:** I parametri medi del dataset (BMI ~29, HbA1c ~7) riflettono accuratamente una popolazione ad alto rischio, rendendo il modello predittivo estremamente rilevante per contesti di screening preventivo.

---

## 🚀 How to Use this Repository
1.  **SQL Scripts:** Contiene le query per la segmentazione iniziale.
2.  **Jupyter Notebook:** Include tutto il codice Python per il cleaning, il Feature Engineering e il modello di Machine Learning.
3.  **Power BI Report:** Il file `.pbix` per esplorare la dashboard interattiva.

---
