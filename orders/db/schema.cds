namespace cap.training;

using {cuid, managed} from '@sap/cds/common';

entity Orders : cuid, managed {
    order_no : String;
    Customer : String;
    items : Composition of many Items on items.order = $self;
}

entity Items : cuid, managed {
    product_name : String;
    quantity : Integer;
    price : Decimal(10,2);
    order : Association to Orders;
}