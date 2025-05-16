# 🏥 A Streamlined Clinic Booking System.

[![ERD](link_to_your_erd_image_or_url)](Your ERD Link/Image Alt Text)

## 🌟 Description

This Database Design Project presents a robust way to to simplify and manage the appointment booking process for a clinic. It simulates a comprehensive platform where patients can easily schedule appointments with doctors, the clinic staff can efficiently manage schedules, patient records, and payments.


**Key Features**

The database is structured in the following tables. 
- Patients; To store patients data.
- Doctor; has details about the doctors.
- Services; stores data about services offered at the clinic. 
- Tiime Slots; time allocated for the treatments. 
- Appointments; store doctor appointment details. 
- Staff; stores staff data. 
- Users; stores user data for authentication and authorisation.
- Payments; contains details about payments made at the clinic.
- Insurance Providers; stores data about insurance service providers. 
- Patient Insurance; contains details about patients' insurance.
- Rooms; stores data about rooms. 
- Appointment rooms; contains appointment rooms data. 
- Prescriptions; contains details about patients' prescription.
- Medical records; contains details about patients medical records. 

**Functionalities**

* **Patient Self-Service Booking:** This system can allow patients to view doctor availability and book appointments online.
* **Doctor Schedule Management:** Can enable doctors to view and manage their appointment schedules.
* **Staff Administration:** Provides tools for clinic staff to manage appointments, patients, doctors, services, and billing.
* **Comprehensive Data Management:** Securely stores and manages patient information, medical records, and appointment history.
* **Payment Processing:** Facilitates the recording and tracking of patient payments.
* **Insurance Integration:** Supports the management of patient insurance information.
* **Prescription Tracking:** Allows for the recording and management of patient prescriptions.
* **Room Allocation:** Enables the assignment of specific rooms to appointments.

## 🚀 Setup and Installation

To get the project up and running, follow these steps:

1.  **Ensure Database Installation:** Make sure you have a compatible SQL database system installed (MySQL).
2.  **Access Database Client:** Open your preferred SQL client (e.g., MySQL Workbench, pgAdmin, DBeaver).
3.  **Connect to the Server:** Establish a connection to your database server.
4.  **Create a Database:** If you haven't already, create a new database for the Clinic Booking System:
    ```sql
    CREATE DATABASE Clinic_Booking;
    -- Or your preferred database name
    ```
5.  **Select the Database:** Select the newly created database:
    ```sql
    USE Clinic_Booking;
    -- Or your preferred database name
    ```
6.  **Import the SQL File:** Execute the SQL script to create the tables and their constraints. This can usually be done through the "Run SQL Script" or similar option in your database client.

## 🖼️ Entity Relationship Diagram (ERD)

[Click here to view the Entity Relationship Diagram](link_to_your_erd_image_or_url)

```markdown
![Entity Relationship Diagram](link_to_your_erd_image_or_url)
