# Dining Hall Management System

## 🍽️ Overview

Welcome to the Dining Hall Management System! This project automates student worker shift scheduling for Syracuse University's dining halls, replacing the manual, error-prone, and confusing Excel-based system. Our solution provides a transparent and efficient way to manage over 500 student employees across five major dining halls.

## 🎯 Project Goals

* **Facilitate Easy Access**: Provide a quick and straightforward interface for shift schedules.
* **Increase Transparency**: Ensure clarity in tracking employee work hours and payments.
* **Improve Efficiency**: Streamline the scheduling and management process for all stakeholders.
* **Reduce Confusion**: Minimize misunderstandings for student workers regarding their shifts and hours.

## 💻 System Features

The system is built on a robust database and a user-friendly Power Apps interface.

### **Database Components**

* **Tables**: `dininghalls`, `supervisors`, `student_employees`, `shifts`, `subshifts_ernie`, `subshifts_saddler`, `total_hours`, `worked_hours`, `shifts_scheduled_sadler`, `shifts_scheduled_ernie`, `shifts_scheduled`.
* **Lookup Tables**: `shift_time_lookup`, `shift_type_lookup`, `shift_day_lookup`.
* **Stored Procedures**: `daily_shifts`, `employee_hours`, `sub_e`, `subpick_e`, `sub_s`, `subpick_s`. These handle core operations like submitting and picking up sub-shifts.
* **Views**: `v_total_hours_ernie`, `v_total_hours_saddler`, `v_subshifts_ernie`, `v_subshifts_saddler`, `v_final_payments`. These provide summarized data for easy reporting and payments.
* **Triggers**: `t_subbed_e`, `t_subpicked_e`, `t_subbed_s`, `t_subpicked_s`. These automate updates to employee hours when shifts are subbed or picked up.

### **Key Processes**

1.  **Shift Scheduling**: Supervisors can easily assign shifts to student employees.
2.  **Submitting Shifts**: Student employees can submit their shifts for others to pick up. This action automatically reduces the subbing student's total hours.
3.  **Picking Up Shifts**: Students can pick up available sub-shifts. The system automatically adds these hours to their worked hours.
4.  **Total Hours Tracking**: The system maintains a real-time record of total hours worked by each student.
5.  **Payment Calculation**: The `v_final_payments` view automatically calculates total payment based on worked hours, ensuring transparency and accuracy.

### **Power Apps Interface**

The user-friendly interface provides a seamless experience for students, supervisors, and managers.

* **Home and Login Page**: Secure access for different user roles.
* **Dining Halls Page**: Displays a list of dining halls, their addresses, and operating hours.
* **Student Profile Page**: Shows a student's ID, name, permanent shifts, and total working hours.
* **Pick Shift Page**: Allows students to select and claim available sub-shifts.
* **Sub Shift Page**: Enables students to view and manage their assigned shifts and submit them for subbing.

---

## 🚀 Get Started

The Dining Hall Management System is designed to be a comprehensive and efficient solution for managing dining hall operations. It is a testament to how technology can solve real-world problems and improve the daily lives of everyone involved.

For more information, contact the project team.
