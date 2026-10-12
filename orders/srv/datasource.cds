using { cap.training as db } from '../db/schema';

service Libraryset {
    entity orders as projection on db.Orders;
    entity items   as projection on db.Items;
}