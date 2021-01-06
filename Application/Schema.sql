-- Your database schema. Use the Schema Designer at http://localhost:8001/ to add some tables.
CREATE TABLE todos (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    status INT DEFAULT 0 NOT NULL
);
