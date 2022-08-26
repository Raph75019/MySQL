-- CREATION d'une BDD 
CREATE DATABASE nom_de_la_bdd;
-- exemple :
CREATE DATABASE entreprise;

-- Pour se positionner sur une BDD et pouvoir faire nos requetes :
USE nom_de_la_bdd;
exemple:
USE entreprise;

CREATE TABLE employes (
  id_employes INT NOT NULL AUTO_INCREMENT,
  prenom VARCHAR(20) NOT NULL,
  nom VARCHAR(20) NOT NULL,
  sexe ENUM('m','f') NOT NULL,
  service VARCHAR(30) NOT NULL, -- commentaire
  date_embauche DATE NOT NULL,
  salaire INT NOT NULL,
  PRIMARY KEY (id_employes)
) ENGINE=InnoDB ;

INSERT INTO employes (id_employes, prenom, nom, sexe, service, date_embauche, salaire) VALUES
(350, 'Jean-pierre', 'Laborde', 'm', 'direction', '2010-12-09', 5000),
(388, 'Clement', 'Gallet', 'm', 'commercial', '2010-12-15', 2300),
(415, 'Thomas', 'Winter', 'm', 'commercial', '2011-05-03', 3550),
(417, 'Chloe', 'Dubar', 'f', 'production', '2011-09-05', 1900),
(491, 'Elodie', 'Fellier', 'f', 'secretariat', '2011-11-22', 1600),
(509, 'Fabrice', 'Grand', 'm', 'comptabilite', '2011-12-30', 2900),
(547, 'Melanie', 'Collier', 'f', 'commercial', '2012-01-08', 3100),
(592, 'Laura', 'Blanchet', 'f', 'direction', '2012-05-09', 4500),
(627, 'Guillaume', 'Miller', 'm', 'commercial', '2012-07-02', 1900),
(655, 'Celine', 'Perrin', 'f', 'commercial', '2012-09-10', 2700),
(699, 'Julien', 'Cottet', 'm', 'secretariat', '2013-01-05', 1390),
(701, 'Mathieu', 'Vignal', 'm', 'informatique', '2013-04-03', 2500),
(739, 'Thierry', 'Desprez', 'm', 'secretariat', '2013-07-17', 1500),
(780, 'Amandine', 'Thoyer', 'f', 'communication', '2014-01-23', 2100),
(802, 'Damien', 'Durand', 'm', 'informatique', '2014-07-05', 2250),
(854, 'Daniel', 'Chevel', 'm', 'informatique', '2015-09-28', 3100),
(876, 'Nathalie', 'Martin', 'f', 'juridique', '2016-01-12', 3550),
(900, 'Benoit', 'Lagarde', 'm', 'production', '2016-06-03', 2550),
(933, 'Emilie', 'Sennard', 'f', 'commercial', '2017-01-11', 1800),
(990, 'Stephanie', 'Lafaye', 'f', 'assistant', '2017-03-01', 1775);




-- Pour supprimer une BDD ou une TABLE
DROP DATABASE nom_de_la_bdd;
DROP TABLE nom_de_la_bdd;

-- voir description de la table
DESC nom_de_la_table;

-- vider les données d'une table 
TRUNCATE nom_de_la_table;

-- Pour voir toutes les données de la table
SELECT id_employes, prenom, nom, sexe, service, date_embauche, salaire FROM employes;

-- RESULTAT OBTENU :

+-------------+-------------+----------+------+---------------+---------------+---------+
| id_employes | prenom      | nom      | sexe | service       | date_embauche | salaire |
+-------------+-------------+----------+------+---------------+---------------+---------+
|         350 | Jean-pierre | Laborde  | m    | direction     | 2010-12-09    |    5000 |
|         388 | Clement     | Gallet   | m    | commercial    | 2010-12-15    |    2300 |
|         415 | Thomas      | Winter   | m    | commercial    | 2011-05-03    |    3550 |
|         417 | Chloe       | Dubar    | f    | production    | 2011-09-05    |    1900 |
|         491 | Elodie      | Fellier  | f    | secretariat   | 2011-11-22    |    1600 |
|         509 | Fabrice     | Grand    | m    | comptabilite  | 2011-12-30    |    2900 |
|         547 | Melanie     | Collier  | f    | commercial    | 2012-01-08    |    3100 |
|         592 | Laura       | Blanchet | f    | direction     | 2012-05-09    |    4500 |
|         627 | Guillaume   | Miller   | m    | commercial    | 2012-07-02    |    1900 |
|         655 | Celine      | Perrin   | f    | commercial    | 2012-09-10    |    2700 |
|         699 | Julien      | Cottet   | m    | secretariat   | 2013-01-05    |    1390 |
|         701 | Mathieu     | Vignal   | m    | informatique  | 2013-04-03    |    2500 |
|         739 | Thierry     | Desprez  | m    | secretariat   | 2013-07-17    |    1500 |
|         780 | Amandine    | Thoyer   | f    | communication | 2014-01-23    |    2100 |
|         802 | Damien      | Durand   | m    | informatique  | 2014-07-05    |    2250 |
|         854 | Daniel      | Chevel   | m    | informatique  | 2015-09-28    |    3100 |
|         876 | Nathalie    | Martin   | f    | juridique     | 2016-01-12    |    3550 |
|         900 | Benoit      | Lagarde  | m    | production    | 2016-06-03    |    2550 |
|         933 | Emilie      | Sennard  | f    | commercial    | 2017-01-11    |    1800 |
|         990 | Stephanie   | Lafaye   | f    | assistant     | 2017-03-01    |    1775 |
+-------------+-------------+----------+------+---------------+---------------+---------+
20 rows in set (0.000 sec)

-- Même chose mais avec un raccourci : *
-- * est un caractère universel qui dire ALL

SELECT * FROM employes;

-- Nous voulons connaitre la liste des noms et prénoms des employés de l'entreprise.

SELECT nom, prenom FROM employes;

+----------+-------------+
| nom      | prenom      |
+----------+-------------+
| Laborde  | Jean-pierre |
| Gallet   | Clement     |
| Winter   | Thomas      |
| Dubar    | Chloe       |
| Fellier  | Elodie      |
| Grand    | Fabrice     |
| Collier  | Melanie     |
| Blanchet | Laura       |
| Miller   | Guillaume   |
| Perrin   | Celine      |
| Cottet   | Julien      |
| Vignal   | Mathieu     |
| Desprez  | Thierry     |
| Thoyer   | Amandine    |
| Durand   | Damien      |
| Chevel   | Daniel      |
| Martin   | Nathalie    |
| Lagarde  | Benoit      |
| Sennard  | Emilie      |
| Lafaye   | Stephanie   |
+----------+-------------+
20 rows in set (0.000 sec)

-- EXERCICE : 
-- Quels sont les différents service de la table employes ?

SELECT service FROM employes;

+---------------+
| service       |
+---------------+
| direction     |
| commercial    |
| commercial    |
| production    |
| secretariat   |
| comptabilite  |
| commercial    |
| direction     |
| commercial    |
| commercial    |
| secretariat   |
| informatique  |
| secretariat   |
| communication |
| informatique  |
| informatique  |
| juridique     |
| production    |
| commercial    |
| assistant     |
+---------------+
20 rows in set (0.000 sec)

-- Pour éviter les doublons : DISTINCT
SELECT DISTINCT service FROM employes;

+---------------+
| service       |
+---------------+
| direction     |
| commercial    |
| production    |
| secretariat   |
| comptabilite  |
| informatique  |
| communication |
| juridique     |
| assistant     |
+---------------+
9 rows in set (0.000 sec)

-------------------
-- CONDITIONS WHERE
-------------------
-- Affichage des employes du service production uniquement
SELECT nom, prenom, service FROM employes WHERE service = 'production';

+---------+--------+------------+
| nom     | prenom | service    |
+---------+--------+------------+
| Dubar   | Chloe  | production |
| Lagarde | Benoit | production |
+---------+--------+------------+
2 rows in set (0.000 sec)

-- Affichage des employes du service informatique uniquement
SELECT nom, prenom, service FROM employes WHERE service = 'informatique';

+--------+---------+--------------+
| nom    | prenom  | service      |
+--------+---------+--------------+
| Vignal | Mathieu | informatique |
| Durand | Damien  | informatique |
| Chevel | Daniel  | informatique |
+--------+---------+--------------+
3 rows in set (0.000 sec)

-- WHERE : à la condition que

-- BETWEEN
-- Affichage des employés ayant été embauché entre le 01 janvier 2015 et aujourd'hui

SELECT * FROM employes WHERE date_embauche BETWEEN '2015-01-01' AND '2022-03-21';

+-------------+-----------+---------+------+--------------+---------------+---------+
| id_employes | prenom    | nom     | sexe | service      | date_embauche | salaire |
+-------------+-----------+---------+------+--------------+---------------+---------+
|         854 | Daniel    | Chevel  | m    | informatique | 2015-09-28    |    3100 |
|         876 | Nathalie  | Martin  | f    | juridique    | 2016-01-12    |    3550 |
|         900 | Benoit    | Lagarde | m    | production   | 2016-06-03    |    2550 |
|         933 | Emilie    | Sennard | f    | commercial   | 2017-01-11    |    1800 |
|         990 | Stephanie | Lafaye  | f    | assistant    | 2017-03-01    |    1775 |
+-------------+-----------+---------+------+--------------+---------------+---------+
5 rows in set (0.000 sec)

-- Fonction prédéfinie pour avoir la date du jour
-- CURDATE() 
-- permet d'avoir la date du jour : attention en SQL il faut toujours coller les parenthèses
SELECT CURDATE();

SELECT * FROM employes WHERE date_embauche BETWEEN '2013-01-01' AND CURDATE();

-- BETWEEN .... AND .... : entre ... et ....

+-------------+-----------+---------+------+---------------+---------------+---------+
| id_employes | prenom    | nom     | sexe | service       | date_embauche | salaire |
+-------------+-----------+---------+------+---------------+---------------+---------+
|         699 | Julien    | Cottet  | m    | secretariat   | 2013-01-05    |    1390 |
|         701 | Mathieu   | Vignal  | m    | informatique  | 2013-04-03    |    2500 |
|         739 | Thierry   | Desprez | m    | secretariat   | 2013-07-17    |    1500 |
|         780 | Amandine  | Thoyer  | f    | communication | 2014-01-23    |    2100 |
|         802 | Damien    | Durand  | m    | informatique  | 2014-07-05    |    2250 |
|         854 | Daniel    | Chevel  | m    | informatique  | 2015-09-28    |    3100 |
|         876 | Nathalie  | Martin  | f    | juridique     | 2016-01-12    |    3550 |
|         900 | Benoit    | Lagarde | m    | production    | 2016-06-03    |    2550 |
|         933 | Emilie    | Sennard | f    | commercial    | 2017-01-11    |    1800 |
|         990 | Stephanie | Lafaye  | f    | assistant     | 2017-03-01    |    1775 |
+-------------+-----------+---------+------+---------------+---------------+---------+
10 rows in set (0.000 sec)

-- LIKE -- la valeur approchante
-- Affichage des employes ayant un prénom qui commence par la lettre s
-- % représente ce quon ne connait pas :
-- Dans l'exemple ici on lui demande les prénoms qui commence par s et après on ne sait pas

SELECT prenom FROM employes WHERE prenom LIKE 's%';

+-----------+
| prenom    |
+-----------+
| Stephanie |
+-----------+
1 row in set (0.000 sec)

-- Affichage des employes ayant un prénom qui finit par ie :

SELECT prenom FROM employes WHERE prenom LIKE '%ie';

+-----------+
| prenom    |
+-----------+
| Elodie    |
| Melanie   |
| Nathalie  |
| Emilie    |
| Stephanie |
+-----------+
5 rows in set (0.000 sec)

-- Affichage des employes ayant un prénom qui contient ie (début, fin ou milieu):

SELECT prenom FROM employes WHERE prenom LIKE '%ie%';

+-------------+
| prenom      |
+-------------+
| Jean-pierre |
| Elodie      |
| Melanie     |
| Julien      |
| Mathieu     |
| Thierry     |
| Damien      |
| Daniel      |
| Nathalie    |
| Emilie      |
| Stephanie   |
+-------------+
11 rows in set (0.001 sec)

-- Affichage des employes ayant un prénom qui finit par ie :

SELECT prenom FROM employes WHERE prenom LIKE '%ie';

+-----------+
| prenom    |
+-----------+
| Elodie    |
| Melanie   |
| Nathalie  |
| Emilie    |
| Stephanie |
+-----------+
5 rows in set (0.000 sec)

-- Affichage des employes ayant un prénom qui contient ie (début, fin ou milieu):

SELECT prenom FROM employes WHERE prenom LIKE '%ie%';

+-------------+
| prenom      |
+-------------+
| Jean-pierre |
| Elodie      |
| Melanie     |
| Julien      |
| Mathieu     |
| Thierry     |
| Damien      |
| Daniel      |
| Nathalie    |
| Emilie      |
| Stephanie   |
+-------------+
11 rows in set (0.001 sec)

-- Exclusion
-- Nous voulons tous les employés sauf ceux du service 'informatique'

SELECT * FROM employes WHERE service != 'informatique';

+-------------+-------------+----------+------+---------------+---------------+---------+
| id_employes | prenom      | nom      | sexe | service       | date_embauche | salaire |
+-------------+-------------+----------+------+---------------+---------------+---------+
|         350 | Jean-pierre | Laborde  | m    | direction     | 2010-12-09    |    5000 |
|         388 | Clement     | Gallet   | m    | commercial    | 2010-12-15    |    2300 |
|         415 | Thomas      | Winter   | m    | commercial    | 2011-05-03    |    3550 |
|         417 | Chloe       | Dubar    | f    | production    | 2011-09-05    |    1900 |
|         491 | Elodie      | Fellier  | f    | secretariat   | 2011-11-22    |    1600 |
|         509 | Fabrice     | Grand    | m    | comptabilite  | 2011-12-30    |    2900 |
|         547 | Melanie     | Collier  | f    | commercial    | 2012-01-08    |    3100 |
|         592 | Laura       | Blanchet | f    | direction     | 2012-05-09    |    4500 |
|         627 | Guillaume   | Miller   | m    | commercial    | 2012-07-02    |    1900 |
|         655 | Celine      | Perrin   | f    | commercial    | 2012-09-10    |    2700 |
|         699 | Julien      | Cottet   | m    | secretariat   | 2013-01-05    |    1390 |
|         739 | Thierry     | Desprez  | m    | secretariat   | 2013-07-17    |    1500 |
|         780 | Amandine    | Thoyer   | f    | communication | 2014-01-23    |    2100 |
|         876 | Nathalie    | Martin   | f    | juridique     | 2016-01-12    |    3550 |
|         900 | Benoit      | Lagarde  | m    | production    | 2016-06-03    |    2550 |
|         933 | Emilie      | Sennard  | f    | commercial    | 2017-01-11    |    1800 |
|         990 | Stephanie   | Lafaye   | f    | assistant     | 2017-03-01    |    1775 |
+-------------+-------------+----------+------+---------------+---------------+---------+

SELECT nom, prenom, service FROM employes WHERE service != 'commercial';

+----------+-------------+
| nom      | prenom      |
+----------+-------------+
| Laborde  | Jean-pierre |
| Dubar    | Chloe       |
| Fellier  | Elodie      |
| Grand    | Fabrice     |
| Blanchet | Laura       |
| Cottet   | Julien      |
| Vignal   | Mathieu     |
| Desprez  | Thierry     |
| Thoyer   | Amandine    |
| Durand   | Damien      |
| Chevel   | Daniel      |
| Martin   | Nathalie    |
| Lagarde  | Benoit      |
| Lafaye   | Stephanie   |
+----------+-------------+

-- Opérateur de comparaison
-- >   Strictement supérieur à 
-- <   Strictement inférieur à
-- >=  Supérieur ou égal à
-- <=  Inférieur ou égal à
-- =   Est égal à
-- !=  Est différent de 

-- Affichage des employés ayant été embauché entre le 01 janvier 2015 et aujourd'hui
SELECT * FROM employes WHERE date_embauche >= '2015-01-01';

+-------------+-----------+---------+------+--------------+---------------+---------+
| id_employes | prenom    | nom     | sexe | service      | date_embauche | salaire |
+-------------+-----------+---------+------+--------------+---------------+---------+
|         854 | Daniel    | Chevel  | m    | informatique | 2015-09-28    |    3100 |
|         876 | Nathalie  | Martin  | f    | juridique    | 2016-01-12    |    3550 |
|         900 | Benoit    | Lagarde | m    | production   | 2016-06-03    |    2550 |
|         933 | Emilie    | Sennard | f    | commercial   | 2017-01-11    |    1800 |
|         990 | Stephanie | Lafaye  | f    | assistant    | 2017-03-01    |    1775 |
+-------------+-----------+---------+------+--------------+---------------+---------+
5 rows in set (0.000 sec)

SELECT * FROM employes WHERE date_embauche >= '2015-01-01' AND date_embauche <= '2016-02-01';

+-------------+----------+--------+------+--------------+---------------+---------+
| id_employes | prenom   | nom    | sexe | service      | date_embauche | salaire |
+-------------+----------+--------+------+--------------+---------------+---------+
|         854 | Daniel   | Chevel | m    | informatique | 2015-09-28    |    3100 |
|         876 | Nathalie | Martin | f    | juridique    | 2016-01-12    |    3550 |
+-------------+----------+--------+------+--------------+---------------+---------+
2 rows in set (0.001 sec)

-- Affichage des salaires supérieur à 3000

SELECT * FROM employes WHERE salaire > 3000;

+-------------+-------------+----------+------+--------------+---------------+---------+
| id_employes | prenom      | nom      | sexe | service      | date_embauche | salaire |
+-------------+-------------+----------+------+--------------+---------------+---------+
|         350 | Jean-pierre | Laborde  | m    | direction    | 2010-12-09    |    5000 |
|         415 | Thomas      | Winter   | m    | commercial   | 2011-05-03    |    3550 |
|         547 | Melanie     | Collier  | f    | commercial   | 2012-01-08    |    3100 |
|         592 | Laura       | Blanchet | f    | direction    | 2012-05-09    |    4500 |
|         854 | Daniel      | Chevel   | m    | informatique | 2015-09-28    |    3100 |
|         876 | Nathalie    | Martin   | f    | juridique    | 2016-01-12    |    3550 |
+-------------+-------------+----------+------+--------------+---------------+---------+
6 rows in set (0.000 sec)

-- ORDER BY -- Pour ordonner les résultats
-- Affichage des employes classés selon leur nom en ordre alphabétique

SELECT nom FROM employes ORDER BY nom ASC;  -- ASC pour ascendant (si non précisé, c'est ASC par défaut)

+----------+
| nom      |
+----------+
| Blanchet |
| Chevel   |
| Collier  |
| Cottet   |
| Desprez  |
| Dubar    |
| Durand   |
| Fellier  |
| Gallet   |
| Grand    |
| Laborde  |
| Lafaye   |
| Lagarde  |
| Martin   |
| Miller   |
| Perrin   |
| Sennard  |
| Thoyer   |
| Vignal   |
| Winter   |
+----------+
20 rows in set (0.000 sec)

-- ordre inversé -- DESC pour descendant

SELECT nom FROM employes ORDER BY nom DESC;

+----------+
| nom      |
+----------+
| Winter   |
| Vignal   |
| Thoyer   |
| Sennard  |
| Perrin   |
| Miller   |
| Martin   |
| Lagarde  |
| Lafaye   |
| Laborde  |
| Grand    |
| Gallet   |
| Fellier  |
| Durand   |
| Dubar    |
| Desprez  |
| Cottet   |
| Collier  |
| Chevel   |
| Blanchet |
+----------+
20 rows in set (0.000 sec)

-- Pour ordonner sur une seule colonne
SELECT nom, prenom, salaire FROM employes ORDER BY salaire DESC; 

+----------+-------------+---------+
| nom      | prenom      | salaire |
+----------+-------------+---------+
| Laborde  | Jean-pierre |    5000 |
| Blanchet | Laura       |    4500 |
| Martin   | Nathalie    |    3550 |
| Winter   | Thomas      |    3550 |
| Chevel   | Daniel      |    3100 |
| Collier  | Melanie     |    3100 |
| Grand    | Fabrice     |    2900 |
| Perrin   | Celine      |    2700 |
| Lagarde  | Benoit      |    2550 |
| Vignal   | Mathieu     |    2500 |
| Gallet   | Clement     |    2300 |
| Durand   | Damien      |    2250 |
| Thoyer   | Amandine    |    2100 |
| Dubar    | Chloe       |    1900 |
| Miller   | Guillaume   |    1900 |
| Sennard  | Emilie      |    1800 |
| Lafaye   | Stephanie   |    1775 |
| Fellier  | Elodie      |    1600 |
| Desprez  | Thierry     |    1500 |
| Cottet   | Julien      |    1390 |
+----------+-------------+---------+
20 rows in set (0.000 sec)

-- Pour ordonner sur plusieurs colonnes.
SELECT nom, prenom, salaire FROM employes ORDER BY salaire ASC, prenom DESC; -- si certains salaire sont similaire

+----------+-------------+---------+
| nom      | prenom      | salaire |
+----------+-------------+---------+
| Cottet   | Julien      |    1390 |
| Desprez  | Thierry     |    1500 |
| Fellier  | Elodie      |    1600 |
| Lafaye   | Stephanie   |    1775 |
| Sennard  | Emilie      |    1800 |
| Miller   | Guillaume   |    1900 |
| Dubar    | Chloe       |    1900 |
| Thoyer   | Amandine    |    2100 |
| Durand   | Damien      |    2250 |
| Gallet   | Clement     |    2300 |
| Vignal   | Mathieu     |    2500 |
| Lagarde  | Benoit      |    2550 |
| Perrin   | Celine      |    2700 |
| Grand    | Fabrice     |    2900 |
| Collier  | Melanie     |    3100 |
| Chevel   | Daniel      |    3100 |
| Winter   | Thomas      |    3550 |
| Martin   | Nathalie    |    3550 |
| Blanchet | Laura       |    4500 |
| Laborde  | Jean-pierre |    5000 |
+----------+-------------+---------+
20 rows in set (0.000 sec)

-- LIMIT -- Pour limiter le nombre de résultat 
-- exemple (cas de pagination)

SELECT * FROM employes ORDER BY prenom LIMIT 0, 3;

+-------------+----------+---------+------+---------------+---------------+---------+
| id_employes | prenom   | nom     | sexe | service       | date_embauche | salaire |
+-------------+----------+---------+------+---------------+---------------+---------+
|         780 | Amandine | Thoyer  | f    | communication | 2014-01-23    |    2100 |
|         900 | Benoit   | Lagarde | m    | production    | 2016-06-03    |    2550 |
|         655 | Celine   | Perrin  | f    | commercial    | 2012-09-10    |    2700 |
+-------------+----------+---------+------+---------------+---------------+---------+
3 rows in set (0.000 sec)

-- LIMIT -- position_de_depart, nb_de_ligne

SELECT * FROM employes ORDER BY prenom LIMIT 3, 3;

+-------------+---------+--------+------+--------------+---------------+---------+
| id_employes | prenom  | nom    | sexe | service      | date_embauche | salaire |
+-------------+---------+--------+------+--------------+---------------+---------+
|         417 | Chloe   | Dubar  | f    | production   | 2011-09-05    |    1900 |
|         388 | Clement | Gallet | m    | commercial   | 2010-12-15    |    2300 |
|         802 | Damien  | Durand | m    | informatique | 2014-07-05    |    2250 |
+-------------+---------+--------+------+--------------+---------------+---------+
3 rows in set (0.000 sec)

SELECT * FROM employes ORDER BY prenom LIMIT 6, 3;

+-------------+--------+---------+------+--------------+---------------+---------+
| id_employes | prenom | nom     | sexe | service      | date_embauche | salaire |
+-------------+--------+---------+------+--------------+---------------+---------+
|         854 | Daniel | Chevel  | m    | informatique | 2015-09-28    |    3100 |
|         491 | Elodie | Fellier | f    | secretariat  | 2011-11-22    |    1600 |
|         933 | Emilie | Sennard | f    | commercial   | 2017-01-11    |    1800 |
+-------------+--------+---------+------+--------------+---------------+---------+
3 rows in set (0.000 sec)

-- Affichage du salaire annuel 

SELECT nom, salaire * 12 FROM employes;

+----------+--------------+
| nom      | salaire * 12 |
+----------+--------------+
| Laborde  |        60000 |
| Gallet   |        27600 |
| Winter   |        42600 |
| Dubar    |        22800 |
| Fellier  |        19200 |
| Grand    |        34800 |
| Collier  |        37200 |
| Blanchet |        54000 |
| Miller   |        22800 |
| Perrin   |        32400 |
| Cottet   |        16680 |
| Vignal   |        30000 |
| Desprez  |        18000 |
| Thoyer   |        25200 |
| Durand   |        27000 |
| Chevel   |        37200 |
| Martin   |        42600 |
| Lagarde  |        30600 |
| Sennard  |        21600 |
| Lafaye   |        21300 |
+----------+--------------+
20 rows in set (0.000 sec)

-- même chose en donnatn un alias a une colonne :

SELECT nom, salaire * 12 AS "salaire annuel" FROM employes;

+----------+----------------+
| nom      | salaire annuel |
+----------+----------------+
| Laborde  |          60000 |
| Gallet   |          27600 |
| Winter   |          42600 |
| Dubar    |          22800 |
| Fellier  |          19200 |
| Grand    |          34800 |
| Collier  |          37200 |
| Blanchet |          54000 |
| Miller   |          22800 |
| Perrin   |          32400 |
| Cottet   |          16680 |
| Vignal   |          30000 |
| Desprez  |          18000 |
| Thoyer   |          25200 |
| Durand   |          27000 |
| Chevel   |          37200 |
| Martin   |          42600 |
| Lagarde  |          30600 |
| Sennard  |          21600 |
| Lafaye   |          21300 |
+----------+----------------+
20 rows in set (0.000 sec)

-- AS permet de donner un alias (surnom) aux colonnes :

-- SUM() -- La somme
-- Affichage de la masse salarial annuelle de l'entreprise
SELECT SUM(salaire*12) AS masse_salariale FROM employes;

+-----------------+
| masse_salariale |
+-----------------+
|          623580 |
+-----------------+
1 row in set (0.000 sec)

-- AVG() -- la moyenne
-- Affichage du salaire moyen de l'entreprise
SELECT AVG(salaire) AS salaire_moyen FROM employes;

+---------------+
| salaire_moyen |
+---------------+
|     2598.2500 |
+---------------+
1 row in set (0.000 sec)

-- Affichage du salaire moyen des informaticiens de l'entreprise :
SELECT AVG(salaire) AS salaire_moyen_informaticien FROM employes WHERE service = 'informatique';
+-----------------------------+
| salaire_moyen_informaticien |
+-----------------------------+
|                   2616.6667 |
+-----------------------------+
1 row in set (0.000 sec)

-- Pour arrondir 
-- ROUND(valeur) -- arrondi à l'entier
-- ROUND(valeur, 2) arrondi avec 2 décimales acceptées
SELECT ROUND(AVG(salaire)) AS salaire_moyen_arrondi FROM employes WHERE service = 'commercial';
+-----------------------+
| salaire_moyen_arrondi |
+-----------------------+
|                  2558 |
+-----------------------+
1 row in set (0.000 sec)

SELECT ROUND(AVG(salaire), 2) AS salaire_moyen_arrondi FROM employes WHERE service = 'commercial';

+-----------------------+
| salaire_moyen_arrondi |
+-----------------------+
|               2558.33 |
+-----------------------+
1 row in set (0.000 sec)

SELECT AVG(salaire) AS salaire_femme FROM employes WHERE sexe = 'f';

+---------------+
| salaire_femme |
+---------------+
|     2558.3333 |
+---------------+
1 row in set (0.000 sec)

SELECT AVG(salaire) AS salaire_homme FROM employes WHERE sexe = 'm' AND id_employes != 350;

+---------------+
| salaire_homme |
+---------------+
|     2394.0000 |
+---------------+
1 row in set (0.000 sec)0

-- COUNT() -- Pour connaitre le nombre de ligne
-- Afficher le nombre de femme de l'entreprise
-- il est important de mettre * pour être sur d'avoir toutes les lignes car si il y a une valeur NULL on pourrait la rater

SELECT COUNT(*) FROM employes WHERE sexe = 'f';

+----------+
| COUNT(*) |
+----------+
|        9 |
+----------+
1 row in set (0.000 sec)

-- MIN() & MAX()

SELECT MIN(salaire) FROM employes;
SELECT MAX(salaire) FROM employes;

-- EXERCICE : afficher le salaire minimum ainsi que le nom et prenom

SELECT MIN(salaire), nom, prenom FROM employes;

+--------------+---------+-------------+
| MIN(salaire) | nom     | prenom      |
+--------------+---------+-------------+
|         1390 | Laborde | Jean-pierre |
+--------------+---------+-------------+
1 row in set (0.000 sec)

-- ICI on a une incohérence du langage
-- le Langage récupère le premier nom et prénom qu'il trouve dans la table et MIN renvoi un seul résultat et bloque la requête

SELECT salaire, nom, prenom FROM employes ORDER BY salaire LIMIT 0, 1;

-- Requête imbriquée
SELECT salaire, nom, prenom FROM employes WHERE salaire = (SELECT MIN(salaire) FROM employes);

+---------+--------+--------+
| salaire | nom    | prenom |
+---------+--------+--------+
|    1390 | Cottet | Julien |
+---------+--------+--------+
1 row in set (0.001 sec)

-- IN ou NOT IN -- pour comparer plusieurs valeurs
-- IN n'est pas une fonction on peut donc mettre un espace avec les parenthèses
-- Quand on veux comparer plusieurs valeur d'un coup IN me permet d'inclure un ensemble de valeur
-- Affichage des employes des services informatique, commercial, assistant

SELECT nom, prenom, service FROM employes WHERE service IN ('informatique', 'commercial', 'assistant');

+---------+-----------+--------------+
| nom     | prenom    | service      |
+---------+-----------+--------------+
| Gallet  | Clement   | commercial   |
| Winter  | Thomas    | commercial   |
| Collier | Melanie   | commercial   |
| Miller  | Guillaume | commercial   |
| Perrin  | Celine    | commercial   |
| Vignal  | Mathieu   | informatique |
| Durand  | Damien    | informatique |
| Chevel  | Daniel    | informatique |
| Sennard | Emilie    | commercial   |
| Lafaye  | Stephanie | assistant    |
+---------+-----------+--------------+
10 rows in set (0.000 sec)

SELECT nom, prenom, service FROM employes WHERE service NOT IN ('informatique', 'commercial', 'assistant');

+----------+-------------+---------------+
| nom      | prenom      | service       |
+----------+-------------+---------------+
| Laborde  | Jean-pierre | direction     |
| Dubar    | Chloe       | production    |
| Fellier  | Elodie      | secretariat   |
| Grand    | Fabrice     | comptabilite  |
| Blanchet | Laura       | direction     |
| Cottet   | Julien      | secretariat   |
| Desprez  | Thierry     | secretariat   |
| Thoyer   | Amandine    | communication |
| Martin   | Nathalie    | juridique     |
| Lagarde  | Benoit      | production    |
+----------+-------------+---------------+    
10 rows in set (0.000 sec)

-- Plusieurs conditions -- AND
-- Affichage des employes du service commercial, ayant un salaire inférieur ou égal à 2000 et ayant été embauché après 2016-01-01

SELECT * FROM employes WHERE service = 'commercial' AND salaire <= 2000 AND date_embauche > '2016-01-01';

SELECT *
FROM employes
WHERE service = 'commercial'
AND salaire <= 2000
AND date_embauche > '2016-01-01';

 +-------------+--------+---------+------+------------+---------------+---------+
| id_employes | prenom | nom     | sexe | service    | date_embauche | salaire |
+-------------+--------+---------+------+------------+---------------+---------+
|         933 | Emilie | Sennard | f    | commercial | 2017-01-11    |    1800 |
+-------------+--------+---------+------+------------+---------------+---------+
1 row in set (0.000 sec)

-- L'une ou l'autre d'un ensemble de condition -- OR
SELECT * FROM employes WHERE service = 'production' AND salaire = 1900 OR salaire = 2300;
-- ERREUR car APRES LE OR on a une recherche d'un salaire de 2300

+-------------+---------+--------+------+------------+---------------+---------+
| id_employes | prenom  | nom    | sexe | service    | date_embauche | salaire |
+-------------+---------+--------+------+------------+---------------+---------+
|         388 | Clement | Gallet | m    | commercial | 2010-12-15    |    2300 |
|         417 | Chloe   | Dubar  | f    | production | 2011-09-05    |    1900 |
+-------------+---------+--------+------+------------+---------------+---------+
2 rows in set (0.000 sec)

SELECT * FROM employes WHERE service = 'production' AND (salaire = 1900 OR salaire = 2300);
+-------------+--------+-------+------+------------+---------------+---------+
| id_employes | prenom | nom   | sexe | service    | date_embauche | salaire |
+-------------+--------+-------+------+------------+---------------+---------+
|         417 | Chloe  | Dubar | f    | production | 2011-09-05    |    1900 |
+-------------+--------+-------+------+------------+---------------+---------+
1 row in set (0.000 sec)

-- GROUP BY
-- permet de regrouper un résultat selon une / des colonne(s)
-- Affichage du nombre d'employes par service : 
-- Pour connaitre le nombre d'employes COUNT()

SELECT service, COUNT(*) AS nombre_employes_par_service FROM employes GROUP BY service; 

+---------------+-----------------------------+
| service       | nombre_employes_par_service |
+---------------+-----------------------------+
| assistant     |                           1 |
| commercial    |                           6 |
| communication |                           1 |
| comptabilite  |                           1 |
| direction     |                           2 |
| informatique  |                           3 |
| juridique     |                           1 |
| production    |                           2 |
| secretariat   |                           3 |
+---------------+-----------------------------+
9 rows in set (0.000 sec)

-- Pour mettre une condition sur le GROUP BY : HAVING
-- Affichage du nombre d'employes par service s'il y a au moins 2 personnes

SELECT service, COUNT(*) AS nombre FROM employes GROUP BY service HAVING COUNT(*) >= 2;

+--------------+--------+
| service      | nombre |
+--------------+--------+
| commercial   |      6 |
| direction    |      2 |
| informatique |      3 |
| production   |      2 |
| secretariat  |      3 |
+--------------+--------+
5 rows in set (0.000 sec)


----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
-- REQUETES D'INSERTION : INSERT INTO (action)
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

-- On liste tous les champs, et on donne toutes les valeurs correspondantes sauf la primaire : NULL
INSERT INTO employes (id_employes, prenom, nom, sexe, service, date_embauche, salaire) VALUES (NULL, 'Julien', 'Lebron', 'm', 'Web', CURDATE(), 3000);

-- Même chose sans préciser la clé primaire
INSERT INTO employes (prenom, nom, sexe, service, date_embauche, salaire) VALUES ('Julien', 'Lebron', 'm', 'Web', CURDATE(), 3000);

INSERT INTO employes (nom, prenom, sexe, service, salaire, date_embauche) VALUES ('Lebron', 'Julien', 'm', 'Web', 3000, CURDATE());

-- on ne liste pas les colonnes de la table, en revanche il faut obligatoirement respecter le nombre et l'ordre des colonnes qui doit être le même ordre que sur la table

INSERT INTO employes VALUES (NULL, 'Adriana', 'Gonzalez', 'f', 'Enfance', CURDATE(), 2500);

SELECT * FROM employes;

+-------------+-------------+----------+------+---------------+---------------+---------+
| id_employes | prenom      | nom      | sexe | service       | date_embauche | salaire |
+-------------+-------------+----------+------+---------------+---------------+---------+
|         350 | Jean-pierre | Laborde  | m    | direction     | 2010-12-09    |    5000 |
|         388 | Clement     | Gallet   | m    | commercial    | 2010-12-15    |    2300 |
|         415 | Thomas      | Winter   | m    | commercial    | 2011-05-03    |    3550 |
|         417 | Chloe       | Dubar    | f    | production    | 2011-09-05    |    1900 |
|         491 | Elodie      | Fellier  | f    | secretariat   | 2011-11-22    |    1600 |
|         509 | Fabrice     | Grand    | m    | comptabilite  | 2011-12-30    |    2900 |
|         547 | Melanie     | Collier  | f    | commercial    | 2012-01-08    |    3100 |
|         592 | Laura       | Blanchet | f    | direction     | 2012-05-09    |    4500 |
|         627 | Guillaume   | Miller   | m    | commercial    | 2012-07-02    |    1900 |
|         655 | Celine      | Perrin   | f    | commercial    | 2012-09-10    |    2700 |
|         699 | Julien      | Cottet   | m    | secretariat   | 2013-01-05    |    1390 |
|         701 | Mathieu     | Vignal   | m    | informatique  | 2013-04-03    |    2500 |
|         739 | Thierry     | Desprez  | m    | secretariat   | 2013-07-17    |    1500 |
|         780 | Amandine    | Thoyer   | f    | communication | 2014-01-23    |    2100 |
|         802 | Damien      | Durand   | m    | informatique  | 2014-07-05    |    2250 |
|         854 | Daniel      | Chevel   | m    | informatique  | 2015-09-28    |    3100 |
|         876 | Nathalie    | Martin   | f    | juridique     | 2016-01-12    |    3550 |
|         900 | Benoit      | Lagarde  | m    | production    | 2016-06-03    |    2550 |
|         933 | Emilie      | Sennard  | f    | commercial    | 2017-01-11    |    1800 |
|         990 | Stephanie   | Lafaye   | f    | assistant     | 2017-03-01    |    1775 |
|         991 | Julien      | Lebron   | m    | Web           | 0000-00-00    |    3000 |
|         992 | Julien      | Lebron   | m    | Web           | 0000-00-00    |    3000 |
|         993 | Julien      | Lebron   | m    | Web           | 0000-00-00    |    3000 |
|         994 | Julien      | Lebron   | m    | Web           | 0000-00-00    |    3000 |
|         995 | Julien      | Lebron   | m    | Web           | 0000-00-00    |    3000 |
|         996 | Julien      | Lebron   | m    | Web           | 0000-00-00    |    3000 |
|         997 | Julien      | Lebron   | m    | Web           | 2022-03-22    |    3000 |
|         998 | Julien      | Lebron   | m    | Web           | 2022-01-01    |    3000 |
|         999 | Julien      | Lebron   | m    | Web           | 2022-03-22    |    3000 |
|        1000 | Adriana     | Gonzalez | f    | Enfance       | 2022-03-22    |    2500 |
+-------------+-------------+----------+------+---------------+---------------+---------+
30 rows in set (0.000 sec)c)

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
-- REQUETES DE MODIFICATION : UPDATE (action)
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

UPDATE employes SET service = 'Web2.0', salaire = 2500 WHERE id_employes = 991;

UPDATE employes SET service = 'developpeur web', salaire = 3500, date_embauche = '2022-03-01' WHERE id_employes IN (992, 993, 994, 995);
+-------------+-------------+----------+------+-----------------+---------------+---------+
| id_employes | prenom      | nom      | sexe | service         | date_embauche | salaire |
+-------------+-------------+----------+------+-----------------+---------------+---------+
|         350 | Jean-pierre | Laborde  | m    | direction       | 2010-12-09    |    5000 |
|         388 | Clement     | Gallet   | m    | commercial      | 2010-12-15    |    2300 |
|         415 | Thomas      | Winter   | m    | commercial      | 2011-05-03    |    3550 |
|         417 | Chloe       | Dubar    | f    | production      | 2011-09-05    |    1900 |
|         491 | Elodie      | Fellier  | f    | secretariat     | 2011-11-22    |    1600 |
|         509 | Fabrice     | Grand    | m    | comptabilite    | 2011-12-30    |    2900 |
|         547 | Melanie     | Collier  | f    | commercial      | 2012-01-08    |    3100 |
|         592 | Laura       | Blanchet | f    | direction       | 2012-05-09    |    4500 |
|         627 | Guillaume   | Miller   | m    | commercial      | 2012-07-02    |    1900 |
|         655 | Celine      | Perrin   | f    | commercial      | 2012-09-10    |    2700 |
|         699 | Julien      | Cottet   | m    | secretariat     | 2013-01-05    |    1390 |
|         701 | Mathieu     | Vignal   | m    | informatique    | 2013-04-03    |    2500 |
|         739 | Thierry     | Desprez  | m    | secretariat     | 2013-07-17    |    1500 |
|         780 | Amandine    | Thoyer   | f    | communication   | 2014-01-23    |    2100 |
|         802 | Damien      | Durand   | m    | informatique    | 2014-07-05    |    2250 |
|         854 | Daniel      | Chevel   | m    | informatique    | 2015-09-28    |    3100 |
|         876 | Nathalie    | Martin   | f    | juridique       | 2016-01-12    |    3550 |
|         900 | Benoit      | Lagarde  | m    | production      | 2016-06-03    |    2550 |
|         933 | Emilie      | Sennard  | f    | commercial      | 2017-01-11    |    1800 |
|         990 | Stephanie   | Lafaye   | f    | assistant       | 2017-03-01    |    1775 |
|         991 | Julien      | Lebron   | m    | Web2.0          | 0000-00-00    |    2500 |
|         992 | Julien      | Lebron   | m    | developpeur web | 2022-03-01    |    3500 |
|         993 | Julien      | Lebron   | m    | developpeur web | 2022-03-01    |    3500 |
|         994 | Julien      | Lebron   | m    | developpeur web | 2022-03-01    |    3500 |
|         995 | Julien      | Lebron   | m    | developpeur web | 2022-03-01    |    3500 |
|         996 | Julien      | Lebron   | m    | Web             | 0000-00-00    |    3000 |
|         997 | Julien      | Lebron   | m    | Web             | 2022-03-22    |    3000 |
|         998 | Julien      | Lebron   | m    | Web             | 2022-01-01    |    3000 |
|         999 | Julien      | Lebron   | m    | Web             | 2022-03-22    |    3000 |
|        1000 | Adriana     | Gonzalez | f    | Enfance         | 2022-03-22    |    2500 |
+-------------+-------------+----------+------+-----------------+---------------+---------+
30 rows in set (0.000 sec)

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
-- REQUETES DE SUPPRESSION: DELETE (action)
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

-- DELETE FROM employes; 
-- Supprime toutes les données de la table, la structure de est conservée.
-- Equivalent à faire un TRUNCATE employes;

DELETE FROM employes WHERE id_employes = 999;

DELETE FROM employes WHERE id_employes > 997;

DELETE FROM employes WHERE prenom = 'Julien' AND nom = 'Lebron' AND id_employes != 991; 



----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
-- EXERCICES
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

-- 01 - Afficher la profession de l'employe ayant l'id_employes 547
SELECT service FROM employes WHERE id_employes = 547;
+------------+
| service    |
+------------+
| commercial |
+------------+
1 row in set (0.000 sec)

-- 02 - Afficher la date d'embauche d'Amandine
SELECT date_embauche FROM employes WHERE prenom = 'Amandine';
+---------------+
| date_embauche |
+---------------+
| 2014-01-23    |
+---------------+
1 row in set (0.000 sec)

-- 03 - Afficher le nom de famille de Guillaume
SELECT nom FROM employes WHERE prenom = 'Guillaume';
+--------+
| nom    |
+--------+
| Miller |
+--------+
1 row in set (0.000 sec)

-- 04 - Afficher le nombre de personne ayant un n° id_employes commançant par le chiffre 5
SELECT COUNT(*) FROM employes WHERE id_employes LIKE '5%';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.000 sec)

-- 05 - Afficher le nombre de commerciaux
SELECT COUNT(*) FROM employes WHERE service = 'commercial';
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.000 sec)

-- 06 - Afficher le salaire moyen des informaticiens
SELECT ROUND(AVG(salaire)) AS salaire_moyen_informaticien FROM employes WHERE service = 'informatique'; 
+-----------------------------+
| salaire_moyen_informaticien |
+-----------------------------+
|                        2617 |
+-----------------------------+
1 row in set (0.000 sec)

-- 07 - Afficher les 5 premiers employes après avoir classer leur nom de famille par ordre alphabétique
SELECT * FROM employes ORDER BY nom ASC LIMIT 0, 5;
+-------------+---------+----------+------+--------------+---------------+---------+
| id_employes | prenom  | nom      | sexe | service      | date_embauche | salaire |
+-------------+---------+----------+------+--------------+---------------+---------+
|         592 | Laura   | Blanchet | f    | direction    | 2012-05-09    |    4500 |
|         854 | Daniel  | Chevel   | m    | informatique | 2015-09-28    |    3100 |
|         547 | Melanie | Collier  | f    | commercial   | 2012-01-08    |    3100 |
|         699 | Julien  | Cottet   | m    | secretariat  | 2013-01-05    |    1390 |
|         739 | Thierry | Desprez  | m    | secretariat  | 2013-07-17    |    1500 |
+-------------+---------+----------+------+--------------+---------------+---------+
5 rows in set (0.000 sec)


-- 08 - Afficher le cout des commerciaux sur 1 année
SELECT SUM(salaire * 12) FROM employes WHERE service = 'commercial';
+-------------------+
| SUM(salaire * 12) |
+-------------------+
|            184200 |
+-------------------+
1 row in set (0.000 sec)

-- 09 - Afficher le salaire moyen par service
SELECT service, AVG(salaire) AS salaire_moyen_par_service FROM employes GROUP BY service;
+---------------+---------------------------+
| service       | salaire_moyen_par_service |
+---------------+---------------------------+
| assistant     |                 1775.0000 |
| commercial    |                 2558.3333 |
| communication |                 2100.0000 |
| comptabilite  |                 2900.0000 |
| direction     |                 4750.0000 |
| informatique  |                 2616.6667 |
| juridique     |                 3550.0000 |
| production    |                 2225.0000 |
| secretariat   |                 1496.6667 |
+---------------+---------------------------+
9 rows in set (0.000 sec)

-- 10 - Afficher le nombre de recutement sur l'année 2015
SELECT COUNT(*) AS nombre_recrutement_annee_2015 FROM employes WHERE date_embauche >= '2015-01-01' AND date_embauche <= '2015-12-31';
+-------------------------------+
| nombre_recrutement_annee_2015 |
+-------------------------------+
|                             1 |
+-------------------------------+
1 row in set (0.000 sec

-- 11 - Afficher le salaire moyen appliqué lors des recrutement sur la période allant de 2012 à 2014
SELECT AVG(salaire) AS salaire_moyen FROM employes WHERE date_embauche BETWEEN '2012-01-01' AND '2014-01-01';
+---------------+
| salaire_moyen |
+---------------+
|     2512.8571 |
+---------------+
1 row in set (0.000 sec)

-- 12 -- Afficher le nombre de service différent
SELECT COUNT(DISTINCT service) AS nb_service FROM employes;
+------------+
| nb_service |
+------------+
|          9 |
+------------+
1 row in set (0.000 sec)

-- 13 -- Afficher tous les employés (sauf ceux du service production et secrétariat)
SELECT * FROM employes WHERE service != 'production' AND service != 'secretariat';

+-------------+-------------+----------+------+---------------+---------------+---------+
| id_employes | prenom      | nom      | sexe | service       | date_embauche | salaire |
+-------------+-------------+----------+------+---------------+---------------+---------+
|         350 | Jean-pierre | Laborde  | m    | direction     | 2010-12-09    |    5000 |
|         388 | Clement     | Gallet   | m    | commercial    | 2010-12-15    |    2300 |
|         415 | Thomas      | Winter   | m    | commercial    | 2011-05-03    |    3550 |
|         509 | Fabrice     | Grand    | m    | comptabilite  | 2011-12-30    |    2900 |
|         547 | Melanie     | Collier  | f    | commercial    | 2012-01-08    |    3100 |
|         592 | Laura       | Blanchet | f    | direction     | 2012-05-09    |    4500 |
|         627 | Guillaume   | Miller   | m    | commercial    | 2012-07-02    |    1900 |
|         655 | Celine      | Perrin   | f    | commercial    | 2012-09-10    |    2700 |
|         701 | Mathieu     | Vignal   | m    | informatique  | 2013-04-03    |    2500 |
|         780 | Amandine    | Thoyer   | f    | communication | 2014-01-23    |    2100 |
|         802 | Damien      | Durand   | m    | informatique  | 2014-07-05    |    2250 |
|         854 | Daniel      | Chevel   | m    | informatique  | 2015-09-28    |    3100 |
|         876 | Nathalie    | Martin   | f    | juridique     | 2016-01-12    |    3550 |
|         933 | Emilie      | Sennard  | f    | commercial    | 2017-01-11    |    1800 |
|         990 | Stephanie   | Lafaye   | f    | assistant     | 2017-03-01    |    1775 |
+-------------+-------------+----------+------+---------------+---------------+---------+
15 rows in set (0.000 sec)

-- 14 -- Afficher conjoitement le nombre d'homme et de femme dans l'entreprise
SELECT sexe, COUNT(*) AS nombre FROM employes GROUP BY sexe;
+------+--------+
| sexe | nombre |
+------+--------+
| m    |     11 |
| f    |      9 |
+------+--------+
2 rows in set (0.000 sec)

-- 15 -- Afficher les commerciaux ayant été recrutés avant 2015 de sexe masculin et gagnant un salaire supérieur a 2500 €
SELECT * 
FROM employes
WHERE date_embauche < '2015-01-01'
AND sexe = 'm'
AND service = 'commercial'
AND salaire > 2500;

+-------------+--------+--------+------+------------+---------------+---------+
| id_employes | prenom | nom    | sexe | service    | date_embauche | salaire |
+-------------+--------+--------+------+------------+---------------+---------+
|         415 | Thomas | Winter | m    | commercial | 2011-05-03    |    3550 |
+-------------+--------+--------+------+------------+---------------+---------+
1 row in set (0.000 sec)