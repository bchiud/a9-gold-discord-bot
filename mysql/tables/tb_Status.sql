CREATE TABLE tb_Status (
    id SMALLINT,
    status VARCHAR(16),
    CONSTRAINT PK_tb_Status PRIMARY KEY (id),
    CONSTRAINT UC_status UNIQUE (status)
);

DESCRIBE tb_Status;

INSERT INTO tb_Status
VALUES 
(100, "active"), 
(200, "retired");

SELECT *
FROM tb_Status;