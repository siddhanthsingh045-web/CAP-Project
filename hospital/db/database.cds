namespace hosp;

using { cuid, managed } from '@sap/cds/common';

entity Patient : cuid, managed {
    name : String;
    age : Integer;
    email : String;
}

entity Doctors : cuid, managed {
    name : String;
    specialization : String;
}

entity Appointment : cuid, managed {
    patient : Association to one Patient;
    doctor : Association to one Doctors;
    details : Composition of many Appointmentdetails
        on details.appointment = $self;
}

entity Appointmentdetails : cuid, managed {
    appointment : Association to one Appointment;
    description : String;
    date : Date;
    notes : String;
}
entity medical_test : cuid , managed {
    cbc_test : String;
    date : Date;
}