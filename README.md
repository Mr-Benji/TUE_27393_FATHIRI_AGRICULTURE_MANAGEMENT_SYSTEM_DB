# TUE_27393_FATHIRI_AGRICULTURE_MANAGEMENT_SYSTEM_DB
## Phase: Advanced Database Programming and Auditing

1. Problem Statement
Challenge:
In our Agricultural Management System, we must ensure that data integrity and compliance are enforced automatically. In particular, we need to prevent table manipulations (INSERT/UPDATE/DELETE) during core business hours on weekdays and also block any changes on specified public holidays.

Justification:

Triggers can intercept DML and enforce business rules in real time.

Packages allow us to encapsulate shared logic (date checks, holiday lookups).

Auditing provides accountability by logging every attempted action (allowed or denied).

## Reference & Audit Tables

```
-- Holiday reference table for the upcoming month
CREATE TABLE Holiday_Ref (
  holiday_date DATE PRIMARY KEY,
  description  VARCHAR2(100)
);

-- Audit log table
CREATE TABLE Audit_Log (
  log_id      NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  username    VARCHAR2(30) NOT NULL,
  action_time TIMESTAMP   DEFAULT SYSTIMESTAMP,
  object_name VARCHAR2(30) NOT NULL,
  operation   VARCHAR2(10) NOT NULL,  -- INSERT, UPDATE, DELETE
  status      VARCHAR2(10) NOT NULL   -- ALLOWED or DENIED
);

```


