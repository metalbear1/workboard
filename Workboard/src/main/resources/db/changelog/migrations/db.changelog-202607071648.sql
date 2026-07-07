--liquibase formatted SQL
--changeset Marco:202607071611
--comment: cards table create


    CREATE TABLE BLOCKS(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    finished_at TIMESTAMP NULL,
    card_id BIGINT NOT NULL;
    CONSTRAINT cards__blocks_fk FOREIGN KEY (card_id) REFERENCES CARDS(id) ON DELETE CASCADE,
    ) ENGINE=InnoDB;

--rollback DROP TABLE CARDS