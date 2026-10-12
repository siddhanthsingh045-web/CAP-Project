namespace com.composition;

using { cuid, managed } from '@sap/cds/common';

entity form_details : cuid, managed {
    status : String enum {
        Approved;
        inprogress;
        rejected;
    };
}

entity Products : cuid, managed {
    name     : String;
    price    : Decimal(8,2);
    currency : String(3);
}
