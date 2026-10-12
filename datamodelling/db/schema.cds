namespace cap.training;
using { managed, cuid } from '@sap/cds/common';
type name : String(100);

entity Books : managed, cuid {
    book_name : name;
}

entity Employee : managed, cuid {
    emp_name : name;
}

entity Customer : managed, cuid {
    customer_name : name;
}