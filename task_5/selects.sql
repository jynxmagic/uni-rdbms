-- LIST PEOPLE->TITLES(PERSON, TITLES->NAME) IF NAME NULL THEN TITLE->ID
--NVL
--ref: https://oracle-base.com/articles/misc/null-related-functions#nvl
--11/03/2020
SELECT PERSON.NAME PNAME,  NVL(TITLE.TITLE, PERSON_TITLE.TITLE_ID) AS PTITLES
FROM PERSON_TITLE
INNER JOIN PERSON
ON PERSON.PERSON_ID = PERSON_TITLE.PERSON_ID
INNER JOIN TITLE
ON person_title.title_id = TITLE.TITLE_ID
-- WHERE TITLE.TITLE IS NULL -- there is no nulls. could be good. probably bad
ORDER BY PERSON.PERSON_ID DESC;

--LIST WRITER + DIRECTOR WHERE COUNT(WORKED ON SAME TITLE) > 1
SELECT DISTINCT TITLE_WRITER.writer_id, TITLE_DIRECTOR.DIRECTOR_ID, TITLE.TITLE
FROM TITLE
INNER JOIN TITLE_WRITER ON TITLE.TITLE_ID = title_writer.TITLE_ID
RIGHT OUTER JOIN TITLE_DIRECTOR ON TITLE.TITLE_ID = TITLE_DIRECTOR.TITLE_ID
WHERE 
    (SELECT COUNT(DIRECTOR_ID) FROM TITLE_DIRECTOR WHERE DIRECTOR_ID = title_director.director_id) > 1
    OR
    (SELECT COUNT(WRITER_ID) FROM TITLE_WRITER WHERE WRITER_ID = TITLE_WRITER.WRITER_ID) > 1;