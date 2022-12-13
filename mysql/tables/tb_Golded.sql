CREATE TABLE tb_Golded (
    playerId BIGINT NOT NULL,
    carAlias VARCHAR(32) NOT NULL,
    tmsCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tmsModified TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    tmsDeleted TIMESTAMP,
    isDeleted BOOLEAN NOT NULL DEFAULT 0,
    CONSTRAINT UC_tb_Golded UNIQUE (playerId, carAlias, tmsDeleted),
    CONSTRAINT FK_playerId FOREIGN KEY (playerId) REFERENCES tb_Players(id),
    CONSTRAINT FK_carAlias FOREIGN KEY (carAlias) REFERENCES tb_Cars(alias)
);

DESCRIBE tb_Players;