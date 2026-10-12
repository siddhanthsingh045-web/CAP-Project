using { hosp } from '../db/database';

@requires: 'Admin'
service hospitalserv {

    entity Patientset as projection on hosp.Patient;

    entity Doctorset as projection on hosp.Doctors;

    entity Appointmentset as projection on hosp.Appointment;

    entity Appointmentdetailsset as projection on hosp.Appointmentdetails;

    entity medicalset as projection on hosp.medical_test;
}