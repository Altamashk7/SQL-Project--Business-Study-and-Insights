# Customer Insights Case Study

### Presented by: Altamash Khan  

---

## Project Overview

This project focuses on analyzing customer transaction data from 2009 to 2011 to provide meaningful insights to aid the CEO in strategic decision-making. The analysis explores trends in seasonality, product sales, customer behaviors, and market performance. 

### Data Source

The data consists of customer transactions over the years 2009 and 2010. It was prepared and transformed using Excel, SQL, and Power BI to ensure quality insights and analysis.
Link for source-https://docs.google.com/spreadsheets/d/1r9Pm1iOfkbtTggYjhMRzvNi5QS83u-tS/edit?usp=sharing&ouid=114673480518759161831&rtpof=true&sd=true

### Key Insights

1. **Seasonality:**
   - **Observation:** Sales peak during the last quarter of the year (October to December) and are lowest in February.
   - **Recommendations:**
     - Strategic Inventory Management: Optimize stock levels during peak seasons.
     - Targeted Marketing Campaigns: Focus on holiday promotions.
     - February Clearance Sales: Use discounts to drive sales during slower months.

2. **Product Pairings:**
   - **Observation:** Certain product pairs are frequently purchased together.
   - **Recommendations:**
     - Bundle Deals: Offer discounted bundles for paired products.
     - Cross-Selling: Train sales teams to suggest complementary items.
     - Customized Recommendations: Implement algorithms to recommend paired products during online shopping.

3. **Repeat Orders:**
   - **Observation:** Five key products have the most repeat orders.
   - **Recommendations:**
     - Loyalty Programs: Reward customers for repeat purchases.
     - Subscription Services: Offer subscription-based delivery for these top products.

4. **Winners & Bleeders by Country:**
   - **Observation:** Some countries have shown positive growth, while others experienced declines.
   - **Recommendations:**
     - Investment in “Winning” Countries: Encourage further growth through promotions and investments.
     - Support for “Bleeding” Countries: Target these regions with development and recovery strategies.

5. **High Cancellation Rates:**
   - **Observation:** Certain products have cancellation rates above 50%.
   - **Recommendations:**
     - Root Cause Analysis: Investigate issues like product defects or mismanagement.
     - Improvement Initiatives: Redesign products or improve the customer experience.
     - Customer Feedback: Establish mechanisms for collecting and acting on customer feedback.

### Data Preparation

Several steps were taken to ensure the integrity of the data:
- **Date Format:** Transformed to short date format for simplicity.
- **Handling Missing Data:** Some customer and product descriptions were missing, which affected the data quality.
- **Assumptions:** Negative quantity entries were adjusted, assuming they were data errors.

### Methodology

- **Data Tools:** Excel for data transformation, SQL for querying, and Power BI for visualization.
- **Analysis Approach:** Combined data from both years into a single table to perform a unified analysis.
  
## Conclusion

The insights generated from this analysis provide the CEO with strategic opportunities for inventory management, marketing, and international expansion. By addressing product cancellation rates and leveraging seasonality, the company can improve its operational efficiency and boost sales.

---

## How to Use This Project

1. **Data Preparation:** Load the raw transaction data into your SQL database.
2. **SQL Queries:** Use the provided SQL scripts to analyze key insights.
3. **Power BI Reports:** Open the Power BI reports to visualize trends and gain further insights.

## Future Enhancements

- Expanding the data set to include additional years for more comprehensive insights.
- Implementing machine learning models for more advanced forecasting and customer behavior prediction.
