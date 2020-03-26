-- LIST PEOPLE->TITLES(PERSON, TITLES->NAME) IF NAME NULL THEN TITLE->ID
--NVL
--ref: https://oracle-base.com/articles/misc/null-related-functions#nvl
--11/03/2020
SELECT PERSON.NAME PNAME,  NVL(TITLE.TITLE, PERSON_TITLE.TITLE_ID) AS PTITLES
FROM PERSON_TITLE
INNER JOIN PERSON
ON PERSON.PERSON_ID = PERSON_TITLE.PERSON_ID
LEFT JOIN TITLE
ON person_title.title_id = TITLE.TITLE_ID
ORDER BY PERSON.PERSON_ID DESC;

--LIST WRITER + DIRECTOR WHERE COUNT(WORKED ON SAME TITLE) > 1
SELECT DISTINCT TITLE.TITLE_ID, TITLE.TITLE, W.NAME WRITER_NAME, D.NAME DIRECTOR_NAME
FROM TITLE  -- select all titles
FULL JOIN PERSON_TITLE pt ON pt.title_id = title.title_id --join person_title and keep ALL data - some titles in title do not exist in person title
left JOIN TITLE_WRITER tw ON title.title_id = tw.title_id --join title writer and keep title data 
left JOIN TITLE_DIRECTOR td ON title.title_id = td.title_id -- join title director and keep title data
inner JOIN PERSON W ON tw.WRITER_ID = w.PERSON_ID --join person into writer, remove ppl with no name
inner JOIN PERSON D ON td.DIRECTOR_ID = D.PERSON_ID --join person into director, remove ppl with no name
GROUP BY TITLE.TITLE_ID, TITLE.TITLE, W.NAME, D.NAME --group data
HAVING
    (SELECT GENRE FROM GENRE WHERE GENRE = 'Drama') IN (SELECT GENRE_ID FROM TITLE_GENRE WHERE TITLE_ID = TITLE.TITLE_ID) -- is drama
    and COUNT(title.title)  > 1  --more than 1 title in current GROUP OF WRITER, DIRECTOR
order by title.title_id;


-- list title_id, title, actors, writers, directors, order by title id, exclude writer == director
SELECT DISTINCT TITLE.TITLE_ID, TITLE.TITLE, PRINCP.NAME ACTOR_NAME, princ.profession_id, W.NAME WRITER_NAME, D.NAME DIRECTOR_NAME
FROM TITLE  -- select all titles
INNER JOIN TITLE_WRITER tw ON title.title_id = tw.title_id --join title writer and keep ALL data
INNER JOIN TITLE_DIRECTOR td ON title.title_id = td.title_id -- join title director and keep ALL data
INNER JOIN 
    (SELECT
    PERSON.PERSON_ID,
    PERSON_PROFESSION.profession_id,
    PERSON_TITLE.TITLE_ID
    FROM PERSON_TITLE --join ppl who are inside person_title
        LEFT JOIN PERSON on PERSON_TITLE.person_id = PERSON.person_id --join person
        JOIN PERSON_PROFESSION ON PERSON_PROFESSION.PERSON_ID = PERSON.person_id --join profession
    UNION --union on person title people who are inside title_principal
        SELECT 
        tp.Principal_id, --select title prinicpal (is a person)
        pp.profession_id,  --their profession
        tp.TITLE_ID  --the title they worked on
        FROM TITLE_PRINCIPAL tp
            JOIN PERSON_PROFESSION pp ON pp.PERSON_ID = tp.principal_id) princ
    ON princ.title_id = title.title_id -- join principals to title
FULL JOIN PERSON_TITLE pt ON pt.title_id = title.title_id --join person_title and keep ALL data
LEFT JOIN PERSON PRINCP ON PRINCP.PERSON_ID = PRINC.PERSON_ID
LEFT JOIN PERSON W ON tw.WRITER_ID = w.PERSON_ID --join person into writer
LEFT JOIN PERSON D ON td.DIRECTOR_ID = D.PERSON_ID --join person into director;
WHERE
    (princ.profession_id = 'actor' --list actors
    or princ.profession_id = 'actress') -- and actresses
    AND (W.NAME != D.NAME) -- no repeating directors
    AND (PRINCP.NAME != W.NAME) --etc
    AND (PRINCP.NAME != D.NAME) --etc
ORDER BY TITLE.TITLE_ID asc;


--list genres and ppl inside of these genres and total number of ppl
SELECT '' AS "Genre", count(person_id) AS "# person" FROM person group by  ''
UNION
SELECT g.genre_id, COUNT(p.person_id)
FROM PERSON p
left JOIN PERSON_TITLE pt ON pt.person_id = p.person_id
right JOIN TITLE t ON pt.title_id = t.title_id --titles in person_title which do not exist in title are not assigned a genre. we can right join title
LEFT JOIN TITLE_WRITER tw ON tw.writer_id = p.person_id AND (tw.title_id = pt.title_id OR tw.title_id = t.title_id)
LEFT JOIN TITLE_DIRECTOR td ON td.director_id = p.person_id AND (td.title_id = pt.title_id OR td.title_id = t.title_id)
LEFT JOIN TITLE_PRINCIPAL tp ON tp.principal_id = p.person_id AND (tp.title_id = pt.title_id OR tp.title_id = t.title_id)
LEFT JOIN TITLE_GENRE g ON g.title_id = t.title_id
GROUP BY g.genre_id;

---list cinematographers who made a film with average rating below 4.5. order by averagerating, desc
SELECT p.name, MIN(title_rating.average_rating), title.title
FROM person_title
INNER JOIN 
    (SELECT
    PERSON.PERSON_ID,
    PERSON_PROFESSION.profession_id,
    PERSON_TITLE.TITLE_ID
    FROM PERSON_TITLE --join ppl who are inside person_title
        JOIN PERSON on PERSON_TITLE.person_id = PERSON.person_id --join person
        JOIN PERSON_PROFESSION ON PERSON_PROFESSION.PERSON_ID = PERSON.person_id --join profession
    UNION --union on person title people who are inside title_principal
        SELECT 
        tp.Principal_id, --select title prinicpal (is a person)
        pp.profession_id,  --their profession
        tp.TITLE_ID  --the title they worked on
        FROM TITLE_PRINCIPAL tp
            JOIN PERSON_PROFESSION pp ON pp.PERSON_ID = tp.principal_id) princ
ON princ.person_id = person_title.person_id
INNER JOIN title_rating
ON title_rating.title_id = person_title.title_id
INNER JOIN title on person_title.title_id = title.title_id 
INNER JOIN person p ON p.person_id = person_title.person_id
where
princ.profession_id = 'cinematographer'
group by p.name, title.title
having
MIN(title_rating.average_rating) <= 4.5 
order by MIN(title_rating.average_rating) DESC;
