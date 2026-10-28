CREATE USER auth_user WITH PASSWORD 'auth_pass';
CREATE DATABASE "auth-db" OWNER auth_user;
\c "auth-db"
GRANT ALL ON SCHEMA public TO auth_user;
GRANT ALL ON SCHEMA public TO public;

CREATE USER product_user WITH PASSWORD 'product_pass';
CREATE DATABASE "product-db" OWNER product_user;
\c "product-db"
GRANT ALL ON SCHEMA public TO product_user;
GRANT ALL ON SCHEMA public TO public;

CREATE USER order_user WITH PASSWORD 'order_pass';
CREATE DATABASE "cart-db" OWNER order_user;
\c "cart-db"
GRANT ALL ON SCHEMA public TO order_user;
GRANT ALL ON SCHEMA public TO public;