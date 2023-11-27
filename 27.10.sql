--SELECT        nick, age, sex, rost, ves
--FROM            dbo.users
--WHERE        (sex = 2) AND (rost = 150) AND (ves = 50) OR
--                         (rost = 165) AND (ves = 65)

--------------------------------

--SELECT COUNT(*) AS Всего, dbo.users.nick AS Ник, dbo.eyescolor.id AS [Цвет глаз]]], dbo.figure.id AS Телосложение, dbo.gender.id AS Пол, dbo.haircolor.id AS [Цвет волос] 
--FROM            dbo.users INNER JOIN
--                         dbo.eyescolor ON dbo.users.eyes_color = dbo.eyescolor.id INNER JOIN
--                         dbo.figure ON dbo.users.my_build = dbo.figure.id INNER JOIN
--                         dbo.gender ON dbo.users.sex = dbo.gender.id INNER JOIN
--                         dbo.haircolor ON dbo.users.hair_color = dbo.haircolor.id
--WHERE        (dbo.gender.id = 2) AND (dbo.haircolor.id = 1) AND (dbo.eyescolor.id = 4) AND (dbo.figure.id = 2) OR
--                         (dbo.gender.id = 1) AND (dbo.haircolor.id = 4) AND (dbo.eyescolor.id = 2) AND (dbo.figure.id = 4)
--ORDER BY Пол DESC

--------------------------------

--SELECT        dbo.users.nick AS Ник, dbo.interes.id AS Хобби, dbo.framework.id AS Професия, dbo.moles.id AS [Особые приметы]
--FROM            dbo.moles INNER JOIN
--                         dbo.framework ON dbo.moles.id = dbo.framework.id INNER JOIN
--                         dbo.interes ON dbo.moles.id = dbo.interes.id INNER JOIN
--                         dbo.users ON dbo.framework.id = dbo.users.id_framework
--WHERE        (dbo.framework.id = 1) AND (dbo.interes.id = 23) AND (dbo.moles.id = 1)

--------------------------------

--SELECT        dbo.users.nick AS Ник, COUNT(dbo.gift_service.id_to AS Подарки), dbo.goroskop.name AS [Знак зодиака]
--FROM            dbo.users INNER JOIN
--                         dbo.gift_service ON dbo.users.user_id = dbo.gift_service.id_from AND dbo.users.user_id = dbo.gift_service.id_to INNER JOIN
--                         dbo.goroskop ON dbo.users.id_zodiak = dbo.goroskop.id
--WHERE        (dbo.goroskop.id = 12)

--------------------------------

--SELECT        dbo.users.nick AS Ник, dbo.kitchen.id AS Готовка, dbo.richness.id AS Обезпеченость, dbo.languages.id AS Языки
--FROM            dbo.users INNER JOIN
--                         dbo.kitchen ON dbo.users.like_kitchen = dbo.kitchen.id INNER JOIN
--                         dbo.richness ON dbo.users.my_rich = dbo.richness.id CROSS JOIN
--                         dbo.languages
--WHERE        (dbo.languages.id > 5) AND (dbo.kitchen.id = 4)

--------------------------------

--SELECT 
--    CASE 
--        WHEN age < 18 THEN 'до 18'
--        WHEN age BETWEEN 18 AND 24 THEN '18-24'
--        WHEN age BETWEEN 24 AND 30 THEN '24-30'
--        ELSE 'от 30'
--    END AS age_group,
--    COUNT(*) AS count,
--    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM users)) AS percentage
--FROM users
--GROUP BY age;

--------------------------------