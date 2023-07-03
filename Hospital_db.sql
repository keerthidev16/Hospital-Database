create database Hospital;
use Hospital;

create table Patient(
S_no int,
username varchar(30) primary key,
pass varchar(30),
Patient_name varchar(30),
Patient_phoneno varchar(30)
);

create table Personal(
Patient_id varchar(30),
Patient_name varchar(30),
Patient_dob varchar(30),
Patient_age varchar(30),
Patient_bloodgroup varchar(30),
Patient_address varchar(30),
Patient_city varchar(30),
Family_member_name varchar(30),
FM_Relation varchar(30),
FM_phoneno varchar(30),
foreign key (Patient_id) references Patient(username)
On delete cascade
on update cascade
);

create table Doctor(
Doc_id varchar(30) primary key,
Doc_name varchar(30),
Doc_specialization varchar(30)
);


Create table Patient_Admit_Details(
patient_id varchar(30),
Doc_id varchar(30),
room_no varchar(30) primary key,
Entry_time varchar(30),
Exit_time varchar(30),
foreign key (patient_id) references Patient(username),
foreign key (Doc_id) references Doctor(Doc_id)
On delete cascade
on update cascade
);

create table Patient_Medical_History(
Patient_id varchar(30),
Previous_symptoms varchar(30),
Previous_diagnosis varchar(30),
Previous_medications varchar(30),
Doctor_name varchar(30),
Hospital_name varchar(30),
Surgeries_undergone varchar(30),
foreign key (Patient_id) references Patient(username)
On delete cascade
on update cascade
);

create table Patient_diagnosis(
Diagnosis_no varchar(30),
Patient_id varchar(30),
Doc_id varchar(30),
Doc_name varchar(30),
Symptoms varchar(30),
Diagnosis varchar(30),
Prescribed_medication varchar(30),
Admitted_or_no varchar(30),
Next_appointment_date varchar(30),
foreign key (Patient_id) references Patient(username),
foreign key (Doc_id) references Doctor(Doc_id)
On delete cascade
on update cascade
);

create table Patient_appointment_history(
Patient_id varchar(30),
Doc_id varchar(30),
Appointment_date varchar(30),
Appointment_time varchar(30),
Visited_or_not varchar(30),
foreign key (Patient_id) references Patient(username),
foreign key (Doc_id) references Doctor(Doc_id)
On delete cascade
on update cascade
);

create table Payment_details(
Patient_id varchar(30),
payment_amount varchar(30),
Payment_method varchar(30),
Date varchar(30),
foreign key (Patient_id) references Patient(username)
On delete cascade
on update cascade
);

create table Insurance_details(
Patient_id varchar(30),
Insurance_id varchar(30),
Insurance_company varchar(30),
Insurance_plan varchar(30),
Claimed_or_not varchar(30),
foreign key (Patient_id) references Patient(username)
On delete cascade
on update cascade
);


