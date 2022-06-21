--SELECIONA TABELAS
SELECT * FROM person.Person;

SELECT Title FROM person.Person;

SELECT FirstName, LastName 
FROM person.Person;

--IGNORA VALORES DUPLICADOS
SELECT DISTINCT FirstName FROM person.Person;

--BUSCANDO DADOS A PARTIR DE UMA CONDIÇÃO
SELECT * FROM person.Person
WHERE LastName = 'miller';

SELECT * FROM person.Person
WHERE FirstName = 'anna' and LastName = 'miller';

SELECT * FROM production.Product;

SELECT * FROM production.Product
WHERE ListPrice > 2000 and ListPrice < 3000;

-- Simbolo de diferença é <>
SELECT * FROM production.Product
WHERE Color <> 'blue';

SELECT Name FROM production.Product
WHERE Weight > 500 and Weight < 700;

SELECT * FROM person.Person;

SELECT * FROM person.Person
WHERE FirstName = 'peter' and LastName = 'krebs';

SELECT * FROM person.EmailAddress
WHERE BusinessEntityID = 26;

--COUT CONTA QUANTIDADE DE TABELAS
SELECT COUNT(DISTINCT title) 
FROM person.Person;

SELECT COUNT(*) 
FROM production.Product;

SELECT COUNT(Size) 
FROM production.Product;

--TOP limita quantidade de retornos
SELECT TOP 10 * FROM
production.Product;

--ORDER BY 
SELECT TOP 10 FirstName, LastName, MiddleName
FROM person.Person
ORDER BY FirstName ASC;

-- BETWEEN
SELECT TOP 10 *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 and 2000;

SELECT TOP 10 *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 and 2000;

--IN SE USA JUNTO COM O WHERE PARA SABER SE UM VALOR CORRESPONDE COM OUTRO
SELECT * FROM Person.Person
WHERE BusinessEntityID in (1, 7, 13);

--LIKE SERVE PARA PROCURAR ALGO QUE NÃO SABE EXATAMENTE O NOME 
SELECT * FROM
person.Person 
WHERE FirstName LIKE 'ovi%';

SELECT * FROM
person.Person 
WHERE FirstName LIKE '%to';

SELECT * FROM
person.Person 
WHERE FirstName LIKE '%essa%';

--MIN MAX SUM AVG Funções que agregam ou combinam resultados de tabela em um resultado só
SELECT TOP 10 *
FROM Sales.SalesOrderDetail;

SELECT TOP 10 SUM (linetotal) AS "Soma"
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MIN (linetotal) AS "Soma"
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MAX (linetotal) AS "Soma"
FROM Sales.SalesOrderDetail;

SELECT TOP 10 AVG (linetotal) AS "Soma"
FROM Sales.SalesOrderDetail;

--O GROUP BY DIVIDE O VALOR DE SUA PESQUISA EM GRUPOS
SELECT * FROM
Sales.SalesOrderDetail;

SELECT SpecialOfferID, SUM (UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail 
GROUP BY SpecialOfferID;

--HAVING É TIPO UM WHETE, POREM ELE FAZ A CONDIÇÃO DEPOIS DOS DADOS JÁ AGRUPADOS
SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) < 10;

--JOINS JUNÇÃO DE TABELAS 3TIPOS INNER JOIN, OUTER JOIN E SELF-JOIN
--DESAFIO - PRECISO PEGAR O EntityID, FirstName, LastName, Email
SELECT TOP 10 *
FROM person.Person;

SELECT TOP 10 *
FROM person.EmailAddress;

SELECT  pe.EmailAddress,p.BusinessEntityID, p.FirstName, p.LastName
FROM Person.Person AS P
INNER JOIN Person.EmailAddress PE ON p.BusinessEntityID = pe.BusinessEntityID;

SELECT * FROM 
Production.Product;

SELECT 




SELECT FirstName, DATEDIFF(day, GETDATE(), GETDATE()/3600)
FROM person.Person;