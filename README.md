# 🏥 A Streamlined Clinic Booking System.

[![ERD](link_to_your_erd_image_or_url)](Your ERD Link/Image Alt Text)

## 🌟 Description

This Database Project presents a robust and user-friendly way to to simplify and manage the appointment booking process for a clinic. It provides a comprehensive platform for patients to easily schedule appointments with doctors, and for clinic staff to efficiently manage schedules, patient records, and payments.


**Key Features**

The database contains the following tables. 
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

* **Patient Self-Service Booking:** Allows patients to view doctor availability and book appointments online.
* **Doctor Schedule Management:** Enables doctors to view and manage their appointment schedules.
* **Staff Administration:** Provides tools for clinic staff to manage appointments, patients, doctors, services, and billing.
* **Comprehensive Data Management:** Securely stores and manages patient information, medical records, and appointment history.
* **Payment Processing:** Facilitates the recording and tracking of patient payments.
* **Insurance Integration:** Supports the management of patient insurance information.
* **Prescription Tracking:** Allows for the recording and management of patient prescriptions.
* **Room Allocation:** Enables the assignment of specific rooms to appointments.

## 🚀 Setup and Installation

To get the project up and running, follow these steps:

### Option 1: Running the Project (If you have a runnable application)

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/sirarwa/Clinic_Booking_DBMS
    cd Clinic_Booking_DBMS
    ```
2.  **Install Dependencies:** (Specify the language/framework and its package manager)
    * **For Python (e.g., Django, Flask):**
        ```bash
        pip install -r requirements.txt
        ```
    * **For Node.js (e.g., Express):**
        ```bash
        npm install
        # or
        yarn install
        ```
3.  **Database Setup:**
    * Ensure you have a compatible database system installed (e.g., MySQL, PostgreSQL).
    * Configure the database connection details in your project's configuration file (e.g., `config.ini`, `.env`).
    * Run database migrations to create the necessary tables:
        * **For Django:**
            ```bash
            python manage.py migrate
            ```
        * **For other frameworks:** Refer to their specific documentation for database migrations.
4.  **Run the Application:**
    * **For Python (Django):**
        ```bash
        python manage.py runserver
        ```
    * **For Python (Flask):**
        ```bash
        python app.py
        ```
    * **For Node.js (Express):**
        ```bash
        npm start
        # or
        yarn start
        ```
5.  **Access the Application:** Open your web browser and navigate to the address specified by your application (e.g., `http://localhost:8000`).

### Option 2: Importing the SQL Schema

If you are providing only the SQL schema for others to build upon:

1.  **Ensure Database Installation:** Make sure you have a compatible SQL database system installed (e.g., MySQL, PostgreSQL).
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

*Alternatively, you can embed the image directly in the README if it's a manageable size:*

```markdown
![Entity Relationship Diagram](link_to_your_erd_image_or_url)
