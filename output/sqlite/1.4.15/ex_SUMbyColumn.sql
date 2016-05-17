INSERT INTO t VALUES ('AA', 150, 100, 50, 4)
INSERT INTO t VALUES ('HHH', 161, 125, 36, 4)
INSERT INTO t VALUES ('PPPP', 160, 85, 75, 4)
INSERT INTO t VALUES ('JJJJJ', 120, 56, 64, 2)
INSERT INTO t VALUES ('GGGG', 40, 31, 9, 2)

SELECT
    CASE WHEN Col IS NULL
        THEN 'Total'
    ELSE Col END COL
    , SUM(COL1) AS Col1
    , SUM(COL2) AS COL2
    , SUM(COL3) AS COL3
    , SUM(COL4) AS COL4
FROM t
GROUP BY COL
ORDER BY CASE WHEN Col IS NULL
             THEN 999
              ELSE 0 END