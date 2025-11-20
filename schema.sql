CREATE TABLE bil (
    carid      VARCHAR(100) NOT NULL PRIMARY KEY,  -- PK
    details    VARCHAR(100) NOT NULL,
    makemodel  VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    location   VARCHAR(100) NOT NULL,
    link       VARCHAR(100) NOT NULL
);

CREATE TABLE variabel (
    id         INT AUTO_INCREMENT PRIMARY KEY,  -- teknisk nøgle til rækken
    carid      VARCHAR(100) NOT NULL,          -- FK-kolonne
    price      INT,
    scrapedate DATETIME NOT NULL,
    CONSTRAINT fk_bil_carid
        FOREIGN KEY (carid) REFERENCES bil(carid)
);
