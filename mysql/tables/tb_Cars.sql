CREATE TABLE tb_Cars (
    alias VARCHAR(32) NOT NULL,
    name VARCHAR(128) NOT NULL,
    class VARCHAR(1) NOT NULL,
    sortKey VARCHAR(8) NOT NULL,
    dtmCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_tb_Cars PRIMARY KEY (alias),
    CONSTRAINT UC_name UNIQUE (name),
    CONSTRAINT UC_sortKey UNIQUE (sortKey)
);

DESCRIBE tb_Cars;