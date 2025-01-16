# Business Analysis Portfolio projects


# NutritionLedger: Consultation Log Management System

## Overview

NutritionLedger provides a comprehensive system for managing client consultations, including detailed records of interactions, health metrics, and tailored recommendations.

---

## Key Features

### **Consultation Logs**
- **Details**: Tracks date, time, mode, and duration of consultations.
- **Health Metrics**: Records weight, BMI, blood pressure, and more.
- **Session Notes**: Allows free-text and structured observations.
- **Plans & Recommendations**:
  - Custom and pre-made diet/workout plans.
  - Supplement, lifestyle, and referral recommendations.
- **Follow-Ups**:
  - Task scheduling, reminders, and notifications.
  - Tracks client feedback and urgent flags.

### **Management Tools**
- Create, view, update, delete, and duplicate consultation logs.
- Search and filter logs by various criteria.
- Export logs to PDF or share securely.

---

## Models and Database Design

### **Normalization and Structure**
- **Central Model**: `ConsultationLog` linked with supporting models:
  - `SessionNote`, `HealthMetric`, `DietPlan`, `WorkoutPlan`, `Attachment`, etc.
- Ensures minimal redundancy (1NF, 2NF, 3NF compliance).

### **Core Models**
- `ConsultationLog`: Tracks consultation details.
- `SessionNote`: Stores notes and observations.
- `HealthMetric`: Records specific health data.
- Additional models for recommendations, plans, follow-ups, and feedback.

### **Constraints and Indexing**
- Foreign keys, enums for structured data, and validation rules.
- Indexes for performance optimization.

---

## Functional Workflow

### **User Actions**
1. **Log Creation**: Add all consultation details, metrics, and plans.
2. **Editing Logs**: Modify existing entries.
3. **Deleting Logs**: Remove unnecessary records with confirmation.
4. **Viewing Logs**: Access detailed views or summaries.
5. **Searching/Sorting**: Locate logs by date, status, or keywords.

### **Data Operations**
- Export logs for sharing or offline use.
- Import bulk data (e.g., CSV, Excel).
- Support for secure email sharing of consultation data.

---

## Developer Tools

### **Rails Commands**
- Generate models for `ConsultationLog`, `SessionNote`, etc.

---

# Smart Factory Implementation for Gearbox Housing Inc.

## Overview
Gearbox Housing Inc. aims to modernize its manufacturing operations by implementing a **Smart Factory Framework** that integrates cutting-edge Industry 4.0 technologies. This transformative project will address inefficiencies, reduce defects, and enhance overall operational efficiency to ensure sustained competitiveness in the automotive manufacturing industry.

## Objectives
- **Enhance Operational Efficiency:** Increase production efficiency by 25% through streamlined workflows and reduced downtime.
- **Reduce Defect Rates:** Lower defect rates by 15% with automated quality checks and advanced analytics.
- **Enable Data-Driven Decisions:** Provide real-time visibility into operations with IoT devices and centralized dashboards.
- **Achieve ROI:** Deliver a financial return on investment within 3 years.

## Key Features
### IoT Integration
- Real-time monitoring of equipment performance and environmental conditions using:
  - **Vibration Sensors** for wear detection.
  - **Temperature and Humidity Sensors** for optimal conditions.
  - **Energy Monitoring Systems** for identifying inefficiencies.
  - **Connected PLCs** for centralized process control.

### Automation
- Deployment of robotic systems for:
  - Automated Optical Inspection (AOI) for defect detection.
  - Robotic Arms for precision assembly.
  - Automated Guided Vehicles (AGVs) for material transport.
  - Cobot Systems for collaboration with human operators.

### Advanced Analytics
- Predictive maintenance models to minimize downtime.
- Defect detection algorithms leveraging computer vision.
- Workflow optimization and resource allocation analysis.
- Supply chain analytics for inventory and demand forecasting.


## Expected Benefits
### Financial
- **Annual Savings:** $4.5 million from reduced downtime and defects.
- **Payback Period:** 2.5 years.
- **5-Year Net Benefit:** $12.5 million.

### Non-Financial
- Enhanced customer satisfaction with higher product quality.
- Improved employee morale through streamlined processes.
- Strengthened market positioning with advanced manufacturing capabilities.

## Risks and Mitigation
- **IoT Integration Risks:** Ensure compatibility with legacy systems through testing.
- **Automation Calibration Risks:** Provide detailed training and regular audits.
- **Advanced Analytics Accuracy Risks:** Retrain models and validate outputs.
- **Operational Disruption Risks:** Implement phased rollouts to minimize downtime.

## Conclusion
This project positions Gearbox Housing Inc. as a leader in modern manufacturing by leveraging Industry 4.0 innovations. With a clear implementation roadmap and robust risk mitigation strategies, the Smart Factory Framework will deliver measurable financial and operational benefits.



# Gearbox Housing Manufacturing Process

## Overview
This document provides a summary of the key phases involved in the manufacturing of gearbox housings at Gearbox Housing Inc. Each phase is broken down into systematic steps to ensure product quality, operational efficiency, and customer satisfaction.

---

## Phases in the Manufacturing Process

### 1. **Procurement and Preparation**
- **Raw Material Procurement**: Sourcing materials from vetted vendors.
- **Material Inspection**: Ensuring incoming materials meet quality standards through visual and physical tests.
- **Storage**: Categorizing and storing materials in an organized inventory system.
- **Material Preparation**: Cutting, shaping, and pre-treating materials for production readiness.

### 2. **Manufacturing**
- **Casting and Machining**: Creating initial shapes via casting and refining them to specifications using CNC machines.
- **Heat Treatment**: Enhancing material properties through controlled heating and cooling processes.
- **Surface Treatment**: Polishing, coating, and sandblasting to improve durability and appearance.
- **Quality Check**: Verifying dimensional accuracy and surface integrity of components.

### 3. **Assembly**
- **Component Assembly**: Organizing and fitting sub-components into the gearbox housing framework.
- **Fastening and Sealing**: Securing components with screws, bolts, and seals for structural integrity and leak-proof performance.
- **Verification**: Conducting alignment, fastening, and sealing inspections.

### 4. **Testing and Quality Control**
- **Dimensional Accuracy Testing**: Ensuring components meet design specifications.
- **Stress Testing**: Verifying product durability under simulated operational conditions.
- **Visual and Functional Inspections**: Conducting detailed checks for defects and functionality.

### 5. **Finishing**
- **Painting/Coating**: Applying protective and aesthetic finishes.
- **Marking**: Adding unique part numbers, logos, and barcodes for traceability.
- **Inspection**: Verifying the quality of finishes and markings.

### 6. **Packaging and Shipping**
- **Packaging**: Protecting products with suitable materials to ensure safe transportation.
- **Labeling**: Adding accurate shipping details to packages.
- **Shipping**: Coordinating dispatch and tracking to ensure timely delivery to clients or distributors.

---

## Key Highlights
- The process ensures high-quality products through rigorous inspections and testing at every stage.
- Digital tools are utilized for inventory tracking, quality management, and shipping coordination.
- All phases are designed to optimize efficiency, minimize waste, and enhance customer satisfaction.

---


# Sales Visual Dashboards: Business Analysis and Development

## Project Overview

This project focuses on transforming traditional static sales reports into dynamic, interactive visual dashboards. The initiative aims to enhance decision-making capabilities across multiple departments by providing real-time insights into sales performance, customer trends, and product success.

---

## Key Objectives

- **Enhance Sales Analysis**: Enable real-time comparisons of sales performance against historical data and budgets.
- **Support Decision-Making**: Provide tools for analyzing trends, high-performing products, and customer segments.
- **Streamline Operations**: Automate data visualization to save time and reduce reporting errors.

---

## Target Users

- **Sales Department**: Managers, representatives, and regional leads tracking performance and strategizing improvements.
- **Marketing**: Analysts and product marketers refining campaigns and targeting efforts.
- **Finance**: Budget controllers and financial analysts aligning performance with forecasts.
- **Operations**: Supply chain and logistics teams optimizing inventory and distribution.
- **Customer Service**: Account managers and success teams enhancing client relationships.
- **R&D**: Product teams identifying improvement opportunities.

---

## Features and Requirements

### Functional Requirements

1. **Interactive Visualizations**: Charts, graphs, and maps with drill-down capabilities by region, product, or time period.
2. **Data Filtering**: Real-time segmentation by salesperson, client, product, or budget.
3. **Real-Time Updates**: Instant reflection of the latest data.
4. **Budget Integration**: Performance tracking against 2024 goals with KPIs.
5. **Export Options**: PDF, Excel, and CSV formats for offline sharing.


## Tools and Technologies

- **BI Platforms and other tools used**: Microsoft Power BI, TSQL, SSMS, Excel