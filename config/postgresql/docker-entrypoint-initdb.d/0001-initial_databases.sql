-- Создание пользователей
CREATE USER user_rhs WITH PASSWORD 'password';
CREATE USER user_us WITH PASSWORD 'password';
CREATE USER user_ps WITH PASSWORD 'password';

-- Создание баз данных
CREATE DATABASE db OWNER user_rhs;
CREATE DATABASE product_db OWNER user_ps;
CREATE DATABASE user_db OWNER user_us;

-- БД: db
\connect db
GRANT ALL PRIVILEGES ON DATABASE db TO user_rhs;
GRANT ALL ON SCHEMA public TO user_rhs;
ALTER SCHEMA public OWNER TO user_rhs;

-- БД: product_db
\connect product_db
GRANT ALL PRIVILEGES ON DATABASE product_db TO user_ps;
GRANT ALL ON SCHEMA public TO user_ps;
ALTER SCHEMA public OWNER TO user_ps;

-- БД: user_db
\connect user_db
GRANT ALL PRIVILEGES ON DATABASE user_db TO user_us;
GRANT ALL ON SCHEMA public TO user_us;
ALTER SCHEMA public OWNER TO user_us;
