--liquibase formatted sql
--changeset Marco:202607071941
--comment: boards_columns table create

CREATE TABLE CARDS(
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  board__column_id BIGINT NOT NULL,
    CONSTRAINT boards_columns__cards_fk FOREIGN KEY (board_column_id) REFERENCES BOARDS_COLUMNS(id) ON DELETE CASCADE,
) ENGINE=InnoDB;

--rollback DROP TABLE BOARDS