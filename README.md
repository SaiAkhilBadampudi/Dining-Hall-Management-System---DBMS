# Dining Hall Management System
## Overview
This project addresses the challenges faced by Syracuse University's dining halls in manually managing part-time student worker shifts. With over 500 student employees across five major dining halls (Ernie, Shaw, Sadler, Brockway, and Graham), the existing Excel-based scheduling process leads to errors, confusion regarding working hours, and a lack of transparency.

The Dining Hall Management System aims to create a comprehensive database solution to streamline shift scheduling, improve access to available working hours, and enhance transparency and efficiency for student employees, supervisors, and managers.

## Business Problem
The current manual system at Syracuse University dining halls results in:

**Scheduling Errors**: Inaccuracies in assigning shifts.

**Worker Confusion**: Students are unclear about their working hours.

**Lack of Transparency**: Difficulty in tracking employee progress and payments.

## Project Goals
**Facilitate Easy Access**: Provide quick and straightforward access to shift schedules.

**Increase Transparency**: Ensure clarity in tracking employee work hours and payments.

**Improve Efficiency**: Streamline the scheduling and management process for all stakeholders.

**Reduce Confusion**: Minimize misunderstandings among student workers regarding their shifts.

## System Features
The system is built around a robust database designed to manage:

## Database Components
**Tables**: dininghalls, supervisors, student_employees, shifts, subshifts_ernie, subshifts_saddler, total_hours, worked_hours, shifts_scheduled_sadler, shifts_scheduled_ernie, shifts_scheduled.

**Lookup** **Tables**: shift_time_lookup, shift_type_lookup, shift_day_lookup.

**Stored** **Procedures**: daily_shifts, employee_hours, sub_e, subpick_e, sub_s, subpick_s. These procedures handle operations like submitting and picking up sub-shifts.

**Views**: v_total_hours_ernie, v_total_hours_saddler, v_subshifts_ernie, v_subshifts_saddler, v_final_payments. These views provide summarized and specific data, such as total hours worked and final payment calculations.

**Triggers**: t_subbed_e, t_subpicked_e, t_subbed_s, t_subpicked_s. These triggers automate updates to employee hours when shifts are subbed or picked up.

## Key Processes
Shift Scheduling: Manages the assignment of shifts to student employees.

**Submitting** **Shifts**: Allows student employees to submit their shifts for others to pick up. This process automatically reduces the subbing student's total hours.

**Example**: Executing sub_e with shift_id and student_id triggers t_subbed_e.

**Picking** **Up** **Shifts**: Enables student employees to pick up available sub-shifts. This process automatically adds hours to the picking student's worked hours.

**Example**: Executing subpick_e with sub_id and student_id triggers t_subpicked_e.

**Total** **Hours** **Tracking**: The system keeps track of the total hours worked by each student employee.

**Payment** **Calculation**: A v_final_payments view calculates the total payment based on worked hours.

## Power Apps Interface
The project includes a user-friendly interface built with Power Apps to interact with the database.

**Home and Login Page**: Secure access for student employees, supervisors, and managers.

**Dining Halls Page**: Displays a list of dining halls with their addresses and operating hours.

**Student Profile Page**: Shows student ID, name, permanent shift IDs, and total working hours, with options to "Pick Shifts" or "Sub Shifts."

**Pick Shift Page**: Allows students to select available shifts based on date and time.

**Sub Shift Page**: Enables students to view and manage their permanent shifts, and to submit them for subbing.



