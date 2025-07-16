# 🚖 Uber Supply-Demand Gap Analysis Project

This project delivers a **comprehensive analysis** of Uber ride request data using **Microsoft Excel Dashboards**, **MySQL Queries**, and **Exploratory Data Analysis (EDA)** in **Python**. The primary objective is to **identify the supply-demand gap** in Uber services by examining trip statuses, peak hours, cancellations, and driver availability—ultimately providing actionable insights to improve operational efficiency and customer experience.

---

## 📌 Project Objectives

* Identify peak demand hours and their impact on trip fulfillment.
* Understand patterns in ride cancellations and driver unavailability.
* Analyze pickup point behavior (City vs. Airport).
* Highlight inefficiencies in driver allocation and trip completion.
* Offer data-backed suggestions to optimize Uber’s service reliability.

---

## 🧾 Dataset Overview

* **Columns**:

  * `Request id`, `Timestamp`, `Pickup point`, `Status`, `Driver id`, etc.
* **Status Values**: `Trip Completed`, `Cancelled`, `No Cars Available`
* **Time Period**: 11–15 July 2016

---

## 📊 Phase 1: Excel Dashboard & Insights

Created an interactive **Excel Dashboard** with charts to visualize ride status patterns:

### ✅ Key Visuals & Insights

1. **Hourly Ride Requests**

   * 🚗 Two demand peaks: **Morning (5–10 AM)** & **Evening (5–9 PM)**
   * 📉 Low activity during midday & post-10 PM hours

2. **Status by Hour**

   * 🔻 High cancellations and unavailability during peak hours
   * ✅ Afternoon sees relatively more successful trip completions

3. **Ride Status Breakdown (Pie Chart)**

   * ❌ 42% Cancelled | 🚫 39% No Cars Available | ✅ Only 19% Completed

4. **Status by Pickup Point**

   * ✈️ Airport: More “No Cars Available” cases
   * 🏙️ City: More Cancellations and better Trip Completion rates

5. **Daily Status Trends**

   * 🔄 Consistently high cancellations/unavailability
   * ⬆ Slight spike in cancellations around **12 July**

---

## 🧮 Phase 2: MySQL Query-Based Insights

Analyzed the cleaned Uber dataset via **SQL querying** for detailed data slicing.

### 🧠 Key Insights

1. **Peak Cancellation Hours**: 5 AM, 8 AM, 9 AM – correlate with **rush hour demand spikes**
2. **Driver Availability**:

   * City: 1504 drivers
   * Airport: 1327 drivers
3. **Unassigned Requests**: ✅ None found (system assigns all)
4. **Hourly Request Volume**:

   * 9th hour (9 AM): **Highest** with **431 requests**
   * Followed by 8th hour (8 AM): **423 requests**
5. **Top 5 Hours With "No Cars Available"**:

   * 17 (5 PM), 18 (6 PM), 19 (7 PM), 20 (8 PM), 21 (9 PM)
6. **Most Common Status per Hour**:

   * Early morning (0–3): Mostly “No Cars Available”
   * 8–9 AM: Mostly “Cancelled”
   * 10–16: Mostly “Trip Completed”
   * 17–21: Return of “No Cars Available”
7. **Cancellation Rate by Pickup Point**:

   * City: **30.4%**
   * Airport: **6.11%**
8. **Daily Request Totals**:

   * 11 July: 1367
   * 12 July: 1307
   * 13 July: 1337
   * 14 July: 1353
   * 15 July: 1381
9. **Driver Contribution**:

   * Drivers with IDs **22** and **184** had **maximum completed trips**
10. **Trip Completion Rate by Hour**:

    * Best hours: **11 AM (67.25%)** and **12 PM (65.76%)**

---

## 📈 Phase 3: Python-Based EDA

Conducted further **visual exploration in Python (Pandas, Matplotlib, Seaborn)** to validate and enhance earlier insights.

### 📊 Visuals & Key Observations

1. **Request Status Distribution (Pie Chart)**

   * \~81% of requests **failed** (Cancelled + No Cars Available)

2. **Request Status by Pickup Point**

   * ✈️ Airport: **More unavailability**
   * 🏙️ City: **More cancellations**

3. **Hourly Ride Requests (Histogram)**

   * Clear demand surges during **7–9 AM** & **5–9 PM**

4. **Cancellation Rate by Hour**

   * Highest in **early morning** (5–9 AM), stressing demand-supply mismatch

5. **Driver Availability by Pickup Point**

   * More drivers completing trips in **City** than **Airport**

6. **Status Distribution by Hour (Grouped Bar)**

   * Morning and evening hours show maximum **service failures**

---

## 🔍 Conclusion

The **combined analysis** through Excel, MySQL, and Python EDA reveals:

* 🚧 A **critical supply-demand mismatch** during rush hours.
* ✈️ The **Airport pickup point** faces higher driver unavailability.
* ❌ Majority of ride requests **fail** due to cancellations or lack of cars.
* 🕒 Optimal trip completions occur during **midday hours** (11 AM–1 PM).
* 🚘 A few **top-performing drivers** complete most trips—suggesting imbalance in driver activity.
* 📉 Service inconsistency and low completion rates impact customer satisfaction and reliability.

---

## 🛠️ Tools & Technologies Used

* **Microsoft Excel** – Dashboarding and initial visual insights
* **MySQL** – Advanced querying and data aggregation
* **Python** – In-depth visual EDA using Pandas, Matplotlib, Seaborn
* **Jupyter Notebook** – Analysis documentation and reproducibility

---

## 📁 Project Structure

```
Uber-Supply-Demand-EDA/
│
├── data/
│   └── uber_ride_requests.csv
│
├── sql/
│   └── supply_demand_queries.sql
│
├── excel/
│   └── uber_dashboard.xlsx
│
├── notebooks/
│   └── uber_supply_demand_eda.ipynb
│
├── reports/
   └── README.md
```

---

## 📬 Contact

**Isha Chaudhary**

📧 [ishachaudhary3928@gmail.com](mailto:ishachaudhary3928@gmail.com)

🔗 [LinkedIn](https://www.linkedin.com/in/ishachaudhary18/)

📍 Noida, India

