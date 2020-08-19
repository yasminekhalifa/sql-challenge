CREATE TABLE "department" (
    "department_ID" Varchar   NOT NULL,
    "department_Name" VARCHAR   NOT NULL,
    PRIMARY KEY ("department_ID")
);

CREATE TABLE "employee" (
    "employee_ID" INTEGER   NOT NULL,
    "employee_title_ID" Varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    "sex" VARCHAR(10)   NOT NULL,
    "Hire_date" date   NOT NULL,
    PRIMARY KEY ("employee_ID")
);

CREATE TABLE "department_employee" (
    "employee_ID" INTEGER NOT NULL,
    FOREIGN KEY ("employee_ID") REFERENCES employee("employee_ID"),
    "department_ID" Varchar NOT NULL,
    FOREIGN KEY ("department_ID") REFERENCES department("department_ID"),
    PRIMARY KEY ("department_ID", "employee_ID")
);

CREATE TABLE "title" (
    "title_ID" Varchar   NOT NULL,
    "title" varchar(30)   NOT NULL,
    PRIMARY KEY ("title_ID")
);

CREATE TABLE "dept_manger" (
    "department_ID" Varchar NOT NULL,
    FOREIGN KEY ("department_ID") REFERENCES department("department_ID"),
    "employee_ID" INTEGER NOT NULL,
    FOREIGN KEY ("employee_ID") REFERENCES employee("employee_ID"),
    PRIMARY KEY ("department_ID", "employee_ID")
);

CREATE TABLE "salaries" (
    "employee_ID" INTEGER NOT NULL,
    FOREIGN KEY ("employee_ID") REFERENCES employee("employee_ID"),
    "salary" INTEGER NOT NULL,
    PRIMARY KEY ("salary", "employee_ID")
);