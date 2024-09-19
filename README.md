# Travel Agency Database Project

This repository contains the implementation of a database system for managing a travel agency. The project was developed as part of the "Database Systems" course during the academic year 2022-2023.

## Table of Contents
- [Project Overview](#project-overview)
- [Database Schema](#database-schema)
- [Installation](#installation)
- [Usage](#usage)
- [Procedures](#procedures)
- [Triggers](#triggers)
- [Contributors](#contributors)

## Project Overview

The goal of this project is to create a relational database for a travel agency, which manages trips, reservations, destinations, employees (guides, drivers, IT managers), and offers. The system includes various SQL tables, stored procedures, and triggers to ensure data integrity and smooth operation of the travel agency.

## Database Schema

The database consists of several tables including:

- `trip`: Stores details of each trip, such as departure date, return date, cost, and maximum seats.
- `destination`: Contains information about travel destinations.
- `worker`: General table for storing employee data.
- `guide`, `driver`: Specialized tables for guides and drivers, connected to the `worker` table.
- `reservation`: Manages customer reservations for trips.
- `offers`: Stores special travel offers available to customers.

For a full explanation of the schema, refer to the project documentation.

## Installation

1. **Clone this repository to your local machine:**

    ```bash
    git clone https://github.com/your-username/travel-agency-database.git
    ```

2. **Set up your MySQL database server.**

3. **Import the database schema and initial data:**

    ```bash
    mysql -u your-username -p < travel_agency.sql
    ```

4. **Modify the database connection settings in `config.php` or your preferred configuration file.**

## Usage

Once the database is set up, you can interact with it using the provided SQL queries and procedures.

### Some example queries to get started:

#### List all available trips:

```sql
SELECT * FROM trip;
### Insert a new reservation:
```
```sql
INSERT INTO reservation (customer_name, trip_id, ...) VALUES (...);
```
## Procedures

The project includes several stored procedures that handle complex operations. For example:
    `addDriver`: Adds a new driver to the least-staffed branch.
    `trip_info`: Returns detailed information about a trip, including available seats, driver and guide details, and the number of reservations.
    `seats_available`: Calculates the number of available seats for a specific trip.

To call a procedure:

```sql

CALL addDriver('DR12345', 'John', 'Doe', 1200.00, 'B', 'LOCAL', 3);
```
## Triggers

The system includes the following triggers:

    Prevent date change for trips with reservations: Ensures that trips with reservations cannot have their start or end dates modified.
    Prevent salary reduction: Ensures that an employee's salary cannot be reduced.

Example of a trigger to prevent date changes:

```sql

CREATE TRIGGER prevent_date_change
BEFORE UPDATE ON trip
FOR EACH ROW
BEGIN
  DECLARE reservation_count INT DEFAULT 0;
  SELECT COUNT(*) INTO reservation_count
  FROM reservation
  WHERE trip_id = OLD.trip_id;
  
  IF reservation_count > 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Cannot change the date of a trip with reservations.';
  END IF;
END;
```
