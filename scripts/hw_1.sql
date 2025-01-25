CREATE TABLE owners
(
    id    UUID       NOT NULL PRIMARY KEY UNIQUE,
    phone_num   VARCHAR(255) NOT NULL,
    address     VARCHAR(255) NOT NULL,
    second_name VARCHAR(255) NOT NULL,
    first_Name  VARCHAR(255) NOT NULL,
    patronymic  VARCHAR(255) NOT NULL
)
;

CREATE TABLE garden
(
    garden_num BIGINT       NOT NULL UNIQUE,
    terrain    VARCHAR(255) NOT NULL,
    soil       VARCHAR(255) NOT NULL,
    owner_id   UUID       NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES owners (id) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (owner_id, garden_num)
)
;

CREATE TABLE kind
(
    name_kind VARCHAR(255) NOT NULL PRIMARY KEY
)
;

CREATE TABLE tree
(
    tree_num   BIGINT       NOT NULL,
    plant_year DATE       NOT NULL,
    death_year DATE,
    garden_num BIGINT       NOT NULL,
    name_Kind  VARCHAR(255) NOT NULL,
    FOREIGN KEY (garden_num) REFERENCES garden (garden_num) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (name_kind) REFERENCES kind (name_kind) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (tree_num, garden_num, name_kind)
)
;

CREATE TABLE sort
(
    name_sort  VARCHAR(255) NOT NULL,
    tree_num   BIGINT       NOT NULL,
    garden_num BIGINT       NOT NULL,
    name_kind  VARCHAR(255),
    FOREIGN KEY (tree_num, garden_num, name_Kind) REFERENCES tree (tree_num, garden_num, name_kind) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (tree_num, garden_num, name_kind, name_sort)
)
