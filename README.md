# Intermediate SQL - Sales Analysis

## Overview
Analysis of customer behavior, retention, and lifetime value for an e-commerce company to improve customer retention and maximize revenue.

## Business Questions
1. **Customer Segmentation**: Who are our most valuable customers?
2. **Cohort Analysis**: How do different customer groups generate revenue?
3. **Retention Analysis**: Which customers haven't purchased recently?

## Analysis
### 1. Customer Segmentation Analysis
- Categorized customers based on total lifetime value (LTV), or total revenue generated
- Assigned customers to High, Mid, and Low-value segments based on their LTV
- Calculated key metrics: total revenue, average per customer revenue by segment

🖥️ SQL Query: [1_customer_segmentation](/Scripts/1_customer_segmentation.sql)

**📉 Visualization:**

![1_customer segmentation](/images/1_customer_segmentation.png)

📊**Key Findings:**
- High-value segment is 25% of customers and drives 66% of revenue, or $135.4M.
- Mid-value segment is 50% of customers and generates 32% of revenue, or $66.6M.
- Low-value segment is 25% of customers and accounts for 2% of revenue, or $4.3M.

💡**Business Insights**
- High-Value segment (66% revenue): Offer premium membership program to 12,372 VIP customers, as losing one customer significantly impacts revenue
- Mid-Value segment (32% revenue): Create upgrade paths through personalized promotions, with potential $66.6M → $135.4M revenue opportunity
- Low-Value segment (2% revenue): Design re-engagement campaigns and price-sensitive promotions to increase purchase frequency


### 2. **Cohort Analysis**: 
- Cohorts were grouped by year of first purchase
- Tracked revenue and customer count per cohort
- Analyzed customer retention at a cohort level

🖥️ Query: [2_cohort_analysis.sql](/Scripts/2_cohort_analysis.sql)

**📉 Visualization:**

![Cohort_Analysis](/Images/2_Cohort_Revenue.png)

![Cohort_Analysis](/Images/2_revenue_and_customers.png)

📊**Key Findings:**
- Customer revenue is declining, older cohorts (2016-2019) spent ~$2,800+, while 2024 cohort spending dropped to ~$1,970.
- Revenue and customers peaked in 2022-2023, but both were trending downward in 2024.
- High volatility in revenue and customer count, with sharp drops in 2020 and 2024, signal retention challenges.

💡**Business Insights**
- Value extracted from customers is decreasing over time and requires investigation.
- In 2023, there was a concerning drop in the number of customers acquired.
- With lowering LTV and decreasing customer acquisition, the company is facing a potential revenue decline.

### 3. Customer Retention

🖥️ Query: [3_retention_analysis.sql](/Scripts/3_retention_analysis.sql)

**📉 Visualization:**

![customer retention and churn](/images/3_customer%20retention%20and%20churn.png)

📊**Key Findings:**
- Cohort churn is stable at ~90%, indicating a predictable long-term retention pattern.
- Retention rates are consistently low (8-10%) across all cohorts, suggesting retention issues are systemic rather than specific to certain years.
- Newer cohorts (2022-2023) show similar churn trajectories, signaling that without intervention, future cohorts will follow the same pattern.

💡**Business Insights**
- Strengthen early engagement strategies to target the first 1-2 years with onboarding incentives, loyalty rewards, and personalized offers to improve long-term retention.
- Re-engage high-value churned customers by focusing on targeted win-back campaigns rather than broad retention efforts, as reactivating valuable users may yield higher ROI.
- Predict & preempt churn risk and use customer-specific warning indicators to proactively intervene with at-risk users before they lapse.


## Strategic Recommendations Summary
1. Customer Value Optimization (Customer Segmentation)
    - Launch VIP program for 12,372 high-value customers (66% revenue)
    - Create personalized upgrade paths for mid-value segment ($66.6M → $135.4M opportunity)
    - Design price-sensitive promotions for low-value segment to increase purchase frequency
2. Cohort Performance Strategy (Customer Revenue by Cohort)
    - Boost retention and re-engagement by targeting recent cohorts (2022-2024) with personalized re-engagement offers
    - Stabilize revenue fluctuations by introducing loyalty programs or subscriptions to ensure consistent spending.
    - Apply successful strategies from high-spending 2016-2019 cohorts to newer customers
3. Retention & Churn Prevention (Customer Retention)
    - Strengthen first 1-2 year engagement with onboarding incentives and loyalty rewards
    - Focus on targeted win-back campaigns for high-value churned customers
    - Implement proactive intervention system for at-risk customers before they lapse

## Future Opportunities & Next Steps

Looking forward, these steps could provide further clarity and help validate the effectiveness of retention and acquisition strategies:

- Link cohorts to acquisition channels to determine if declining customer LTV is tied to specific marketing sources (i.e., social media, email, ads, etc).

- Implement structured A/B testing of promotions, onboarding campaigns, and win-back strategies to measure what actually improves retention.

- Benchmark churn rates against industry standards to contextualize the 90% churn rate and set realistic improvement targets.

## Technical Details
- **Database:** PostgreSQL
- **Analysis Tools:** PostgreSQL, DBeaver, VS Code, PG Admin
- **Visualization:** Excel
