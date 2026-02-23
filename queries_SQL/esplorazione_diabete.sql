-- 1. Incidenza del Diabete per stato di fumatore
-- Verifichiamo se esiste una correlazione visibile tra fumo e diagnosi
SELECT 
    smoking_status, 
    COUNT(*) AS Totale_Pazienti,
    SUM(diagnosed_diabetes) AS Casi_Diabete,
    AVG(diagnosed_diabetes) * 100 AS Percentuale_Incidenza
FROM diabetes_data
GROUP BY smoking_status;

-- 2. Analisi dei pazienti con Ipertensione e BMI elevato
-- Filtriamo i profili più a rischio per interventi preventivi
SELECT 
    age, 
    gender, 
    bmi, 
    systolic_bp,
    diagnosed_diabetes
FROM diabetes_data
WHERE bmi > 30 AND hypertension_history = 1
ORDER BY bmi DESC;

-- 3. Impatto dell'attività fisica sul punteggio di rischio
-- Confrontiamo chi è attivo con chi è sedentario
SELECT 
    CASE WHEN physical_activity_minutes_per_week >= 150 THEN 'Attivo' ELSE 'Sedentario' END AS Livello_Attivita,
    AVG(diabetes_risk_score) AS Media_Rischio_Diabete
FROM diabetes_data
GROUP BY Livello_Attivita;
