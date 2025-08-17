SELECT
    cohort_year,
    SUM(total_net_revenue)as total_cohort_revenue,
    COUNT(DISTINCT customerkey) AS total_cohort_customers,
    SUM(total_net_revenue) / COUNT(DISTINCT customerkey) AS avg_cohort_customer_revenue
FROM cohort_analysis
WHERE orderdate = first_purchase_date
GROUP BY cohort_year;



