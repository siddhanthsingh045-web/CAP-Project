using{cap.training as db} from '../db/schema';

service Schemaservice {
    entity schemaset as projection on db.Books;
}