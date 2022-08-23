CREATE DATABASE PraticandoCyberSec
GO

USE PraticandoCyberSec
GO

CREATE TABLE Usuarios
(
	UsuarioId INT PRIMARY KEY IDENTITY, 
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR (50) NOT NULL,
)
GO

INSERT INTO Usuarios VALUES('teste@email.com', 1232)
INSERT INTO Usuarios VALUES('test2@email.com', 0011)
INSERT INTO Usuarios VALUES('test3@email.com', 1232)
GO

SELECT * FROM Usuarios
--* para mostrar todos os dados dentro da TABLE. É possível especificar o que quer que apareça colocando a chave que deseja consultar.

SELECT Email, HASHBYTES ('MD2', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, HASHBYTES ('MD4', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, HASHBYTES ('MD5', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, HASHBYTES ('SHA', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, HASHBYTES ('SHA1', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, HASHBYTES ('SHA2_256', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
SELECT Email, HASHBYTES ('SHA2_512', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioId = 1
