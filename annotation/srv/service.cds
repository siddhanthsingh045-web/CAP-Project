using { com.composition as db } from '../db/composition';
@path : 'Order-Management'

service Productset @(
    requires: ['MainUser', 'Admin', 'Viewer']
) {
    entity Product_set @(restrict: [
        { grant: 'READ',   to: 'Viewer' },
        { grant: 'CREATE', to: 'MainUser' },
        { grant: 'UPDATE', to: 'Admin' },
        { grant: 'DELETE', to: 'MainUser' }
    ]) as projection on db.Products;
}