DROP TABLE band;

ALTER TABLE album DROP CONSTRAINT FK_A_singerName;

ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer RENAME COLUMN musicianNAME TO singerName;
ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;

ALTER TABLE album
    ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer (singerName);
