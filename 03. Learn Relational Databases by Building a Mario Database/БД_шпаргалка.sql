# подключаемся в субд
psql --username=freecodecamp --dbname=postgres

# list списбок БД
\l

# connect подключиться к БД
\c

# display показать таблицы
\d
# конкретную таблицу
\d tbl_name

# --- --- ---

CREATE DATABASE db_name;

ALTER DATABASE db_name RENAME TO db_name_new;

# --- --- ---

CREATE TABLE tbl_name();
CREATE TABLE tbl_name(col_name datatype constraints);
                                    primary key; not null; unique;

DROP TABLE tbl_name;

# --- --- ---

# изменить таблицу tblname добавить столбец col_name тип
ALTER TABLE tbl_name ADD COLUMN col_name DATATYPE;

    int
    serial - последовательность, не нулевая
    varchar(30) - 30 букв
    numeric(4, 1) - 4 цифры из них 1 цифра после запятой

ALTER TABLE tbl_name DROP COLUMN col_name;

ALTER TABLE tbl_name RENAME COLUMN col_name TO col_name_new;

# добавить ограничения - уникальные значения
ALTER TABLE tbl_name ADD UNIQUE(col_name);

# изменить свойства столбца - не нулевые значения
ALTER TABLE tbl_name ALTER COLUMN col_name SET NOT NULL;

ALTER TABLE tbl_name ALTER COLUMN col_name TYPE varchar(30);

# --- --- ---

# добавить первичный ключ (содержит уникальыне значения)
ALTER TABLE tbl_name ADD PRIMARY KEY(column_name);

# создать композитный первичный ключ (значения могут быть любыми, но два вместе всегда уникальны)
ALTER TABLE tbl_name ADD PRIMARY KEY(col1, col2);

# удалить первичный ключ
ALTER TABLE tbl_name DROP CONSTRAINT constraint_name;
    # constraint_name видно в \d tbl_name

# --- --- ---

# добавить удалённый ключ (foreign key) столбец, который ссылается на столбец в другой таблице
ALTER TABLE table_name ADD COLUMN col_name DATATYPE REFERENCES ref_tbl_name(ref_col_name);

# назначить существующий столбец удалённым ключом
ALTER TABLE tbl_name ADD FOREIGN KEY(col_name) REFERENCES ref_tbl_name(ref_col_name);

# --- --- ---
# --- --- ---

INSERT INTO tbl_name(col1, col2) values(val1, val2);
                                  , (val3, val4), (val5, val6);

SELECT columns FROM tbl_name;
    WHERE conditions; - условия
    ORDER BY col; - упорядочить(сортировка)

DELETE FROM tbl_name WHERE condition;

UPDATE tbl_name SET col=val WHERE condition;

# --- --- ---

# отношение один к одному "one-to-one"
# одно значение в первой таблицу соотносится с одним значением во второй таблице
SELECT col_name FROM tbl_name_1 
FULL JOIN tbl_name_2 
ON tbl_name_1.primary_key_col=tbl_name_2.primary_key_col;

# отношение один ко многим "one-to-many"
SELECT column FROM junc_table
FULL JOIN tbl_1 ON junc_table.foreign_key_col=tbl_1.primary_key_col
FULL JOIN tbl_2 ON junc_table.foreign_key_col=tbl_2.primary_key_col;


