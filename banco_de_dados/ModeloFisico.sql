CREATE TABLE Funcionario (
    IdSupervisor NUMBER,
    IdFuncionario NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT funcionario_pk PRIMARY KEY,
    CPF VARCHAR2(14) NOT NULL,
    Matricula VARCHAR2(7) NOT NULL,
    Nome VARCHAR2(80),
    DataNascimento date,
    TelefoneFixo VARCHAR2(15),
    TelefoneCelular VARCHAR2(15),
    CONSTRAINT funcionario_funcionario_fk FOREIGN KEY (IdSupervisor) REFERENCES Funcionario(IdFuncionario)
);

INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (NULL, DEFAULT, '123.456.789-01', '5376891', 'Renata Costa de Assis', TO_DATE('1974-06-27', 'yyyy-mm-dd'), '055081900000000', '055081900000000');
INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (1, DEFAULT, '123.456.789-01', '1234567', 'Francisco Paulo de Oliveira', TO_DATE('1982-12-13', 'yyyy-mm-dd'), '055081900000000', '055081900000000');
INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (1, DEFAULT, '123.456.789-01', '7654321', 'José Guedes Sales Laurentino', TO_DATE('1988-04-05', 'yyyy-mm-dd'), '055081900000000', '055081900000000');
INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (3, DEFAULT, '123.456.789-01', '0987654', 'Ricardo Marcoratti da Silva', TO_DATE('1994-01-05', 'yyyy-mm-dd'), '055081900000000', '055081900000000');
INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (3, DEFAULT, '123.456.789-01', '3627842', 'Tomas Roger de Carvalho', TO_DATE('1980-05-08', 'yyyy-mm-dd'), '055081900000000', '055081900000000');
INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (3, DEFAULT, '123.456.789-01', '4567890', 'Tarantino Garcia Martins', TO_DATE('1994-01-05', 'yyyy-mm-dd'), '055081900000000', '055081900000000');
INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (2, DEFAULT, '123.456.789-01', '1029384', 'Pedro Ambrosio Ferraz', TO_DATE('1992-07-05', 'yyyy-mm-dd'), '055081900000000', '055081900000000');
INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (6, DEFAULT, '123.456.789-01', '4839201', 'Lucas Gabriel de Souza', TO_DATE('1997-07-05', 'yyyy-mm-dd'), '055081900000000', '055081900000000');
INSERT INTO Funcionario (IdSupervisor, IdFuncionario, CPF, Matricula, Nome, DataNascimento, TelefoneFixo, TelefoneCelular) VALUES (7, DEFAULT, '123.456.789-01', '7239478', 'Gabriel de Aquino', TO_DATE('1995-07-05', 'yyyy-mm-dd'), '055081900000000', '055081900000000');


CREATE TABLE Conta (
    IdFuncionario NUMBER NOT NULL,
    IdConta NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT conta_pk PRIMARY KEY,
    DataCriacao date,
    Email VARCHAR2(50),
    Password varchar2(60),
    CONSTRAINT conta_funcionario_fk FOREIGN KEY (IdFuncionario) REFERENCES Funcionario(IdFuncionario)
);

INSERT INTO Conta VALUES (1, DEFAULT, DEFAULT, 'ranata.assis@exemplo.ifpe.edu.br', 'askj9YHIKJiuHK%JLhaosdf7hi&*l3qj');
INSERT INTO Conta VALUES (2, DEFAULT, DEFAULT, 'francisco.oliveira@exemplo.ifpe.edu.br', 'fasg@3wIUHAI$58dayshfiusadfa');
INSERT INTO Conta VALUES (3, DEFAULT, DEFAULT, 'jose.laurentino@exemplo.ifpe.edu.br', '#$ajosf4tmlqkaU89jojLKJFALSKNjadskf');
INSERT INTO Conta VALUES (4, DEFAULT, DEFAULT, 'ricardo.macoratti@exemplo.ifpe.edu.br', 'hu3bra7T8yiuhsdkAKJDSOKLJçjkdjakl');

INSERT INTO Conta VALUES (5, DEFAULT, DEFAULT, 'tomas.carvalho@exemplo.ifpe.edu.br', 'hu3bra7T8yiuhsdkAKJDSOKLJçjkdjakl');
INSERT INTO Conta VALUES (6, DEFAULT, DEFAULT, 'tarantino.martins@exemplo.ifpe.edu.br', 'hu3bra7T8yiuhsdkAKJDSOKLJçjkdjakl');
INSERT INTO Conta VALUES (7, DEFAULT, DEFAULT, 'pedro.ferraz@exemplo.ifpe.edu.br', 'hu3bra7T8yiuhsdkAKJDSOKLJçjkdjakl');
INSERT INTO Conta VALUES (8, DEFAULT, DEFAULT, 'lucas.souza@exemplo.ifpe.edu.br', 'hu3bra7T8yiuhsdkAKJDSOKLJçjkdjakl');
INSERT INTO Conta VALUES (9, DEFAULT, DEFAULT, 'gabriel.aquino@exemplo.ifpe.edu.br', 'hu3bra7T8yiuhsdkAKJDSOKLJçjkdjakl');



CREATE TABLE Motorista (
    IdFuncionario NUMBER NOT NULL,
    IdMotorista NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT motorista_pk PRIMARY KEY,
    NumHab VARCHAR2(20) NOT NULL,
    CONSTRAINT funcionario_motorista_fk FOREIGN KEY (IdFuncionario) REFERENCES Funcionario(IdFuncionario)
);

INSERT INTO Motorista (IdFuncionario, IdMotorista, NumHab) VALUES (4, DEFAULT, '09876543210987654321');
INSERT INTO Motorista (IdFuncionario, IdMotorista, NumHab) VALUES (5, DEFAULT, '12345678901234567890');
INSERT INTO Motorista (IdFuncionario, IdMotorista, NumHab) VALUES (6, DEFAULT, '43214923847192374928');



CREATE TABLE Administrador (
    IdFuncionario NUMBER NOT NULL,
    IdAdministrador NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT administrador_pk PRIMARY KEY,
    CONSTRAINT funcionario_administrador_fk FOREIGN KEY (IdFuncionario) REFERENCES Funcionario(IdFuncionario)
);

INSERT INTO Administrador (IdFuncionario, IdAdministrador) VALUES (1, DEFAULT);
INSERT INTO Administrador (IdFuncionario, IdAdministrador) VALUES (2, DEFAULT);
INSERT INTO Administrador (IdFuncionario, IdAdministrador) VALUES (3, DEFAULT);



CREATE TABLE Veiculo (
    IdVeiculo NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT veiculo_pk PRIMARY KEY,
    Modelo VARCHAR2(20) NOT NULL,
    Cor VARCHAR2(20) NOT NULL,
    Tipo VARCHAR2(12) CHECK( Tipo IN (
        'carro',
        'onibus',
        'caminhao',
        'van',
        'caminhonete'
    ) ) NOT NULL,
    QtdAssentos NUMBER(3),
    Placa VARCHAR2(7) NOT NULL,
    Ano NUMBER(4) NOT NULL
);

INSERT INTO Veiculo (IdVeiculo, Modelo, Cor, Tipo, QtdAssentos, Placa, Ano) VALUES (DEFAULT, 'Mercedes-Benz', 'Verde e Branco', 'onibus', 36, '8ads8f3', 2013);
INSERT INTO Veiculo (IdVeiculo, Modelo, Cor, Tipo, QtdAssentos, Placa, Ano) VALUES (DEFAULT, 'Mercedes-Benz', 'Verde', 'onibus', 36, 'fjasod8', 2014);
INSERT INTO Veiculo (IdVeiculo, Modelo, Cor, Tipo, QtdAssentos, Placa, Ano) VALUES (DEFAULT, 'Mercedes-Benz', 'Verde', 'onibus', 36, 'jfaojo3', 2014);
INSERT INTO Veiculo (IdVeiculo, Modelo, Cor, Tipo, QtdAssentos, Placa, Ano) VALUES (DEFAULT, 'Nome de uma marca', 'Branca', 'van', 12, 'sdia324', 2016);



CREATE TABLE Endereco (
    IdEndereco NUMBER GENERATED ALWAYS as IDENTITY NOT NULL CONSTRAINT endereco_pk PRIMARY KEY,
    Estado VARCHAR2(30) NOT NULL,
    Cidade VARCHAR2(30) NOT NULL,
    Lagradrouro VARCHAR2(50) NOT NULL,
    CEP VARCHAR2(9),
    Numero NUMBER
);

INSERT INTO Endereco (IdEndereco, Estado, Cidade, Lagradrouro, CEP, Numero) VALUES (DEFAULT, 'Pernambuco', 'Recife', 'Rua Nome de Alguma Coisa', '50000-000', 10);
INSERT INTO Endereco (IdEndereco, Estado, Cidade, Lagradrouro, CEP, Numero) VALUES (DEFAULT, 'Pernambuco', 'Vitória de Santo Antão', 'Rua Outro Nome Aletório', '20000-000', 300);
INSERT INTO Endereco (IdEndereco, Estado, Cidade, Lagradrouro, CEP, Numero) VALUES (DEFAULT, 'Pernambuco', 'Caruaru', 'Rua Totalmente Aleatório', '10000-000', 100);
INSERT INTO Endereco (IdEndereco, Estado, Cidade, Lagradrouro, CEP, Numero) VALUES (DEFAULT, 'Pernambuco', 'Afogados da Ingazera', 'Rua Pseudo-Aleatória', '40000-000', 600);
INSERT INTO Endereco (IdEndereco, Estado, Cidade, Lagradrouro, CEP, Numero) VALUES (DEFAULT, 'Pernambuco', 'Paulista', 'Rua Pseudo-Aleatória', '40000-000', 106);
INSERT INTO Endereco (IdEndereco, Estado, Cidade, Lagradrouro, CEP, Numero) VALUES (DEFAULT, 'Pernambuco', 'Olinda', 'Rua Pseudo-Aleatória', '40000-000', 512);



CREATE TABLE Campus (
    IdCampus NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT campus_pk PRIMARY KEY,
    Nome VARCHAR2(35) NOT NULL,
    IdEndereco NUMBER NOT NULL,
    Status VARCHAR2(25) CHECK( Status IN ('habilitado', 'desabilitado') ),
    CONSTRAINT campus_endereco_fk FOREIGN KEY (IdEndereco) REFERENCES Endereco(IdEndereco)
);

INSERT INTO Campus (IdCampus, Nome, IdEndereco, Status) VALUES (DEFAULT, 'Recife', 1, 'habilitado');
INSERT INTO Campus (IdCampus, Nome, IdEndereco, Status) VALUES (DEFAULT, 'Vitória de Santo Antão', 2, 'habilitado');
INSERT INTO Campus (IdCampus, Nome, IdEndereco, Status) VALUES (DEFAULT, 'Caruaru', 3, 'habilitado');
INSERT INTO Campus (IdCampus, Nome, IdEndereco, Status) VALUES (DEFAULT, 'Afogados da Ingazera', 4, 'habilitado');
INSERT INTO Campus (IdCampus, Nome, IdEndereco, Status) VALUES (DEFAULT, 'Paulista', 5, 'habilitado');
INSERT INTO Campus (IdCampus, Nome, IdEndereco, Status) VALUES (DEFAULT, 'Olinda', 6, 'habilitado');
INSERT INTO Campus (IdCampus, Nome, IdEndereco, Status) VALUES (DEFAULT, 'Garanhuns', 6, 'desabilitado');



CREATE TABLE Rota (
    IdOrigem NUMBER,
    IdDestino NUMBER,
    IdRota NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT rota_pk PRIMARY KEY,
    Nome VARCHAR2(20) NOT NULL,
    TempoEstimado NUMBER,
    Status VARCHAR2(25) CHECK( Status IN ('ativado', 'desativado') ),
    CONSTRAINT rota_origem_fk FOREIGN KEY (IdOrigem) REFERENCES Campus(IdCampus),
    CONSTRAINT rota_destino_fk FOREIGN KEY (IdDestino) REFERENCES Campus(IdCampus)
);

INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (1, 2, DEFAULT, 'REC > VIT', 60, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (1, 5, DEFAULT, 'REC > PAU', 20, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (1, 6, DEFAULT, 'REC > OLI', 10, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (6, 1, DEFAULT, 'OLI > REC', 10, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (6, 5, DEFAULT, 'OLI > PAU', 10, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (5, 1, DEFAULT, 'PAU > REC', 10, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (5, 6, DEFAULT, 'PAU > OLI', 10, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (2, 1, DEFAULT, 'VIT > REC', 100, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (2, 3, DEFAULT, 'VIT > CAR', 100, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (3, 4, DEFAULT, 'CAR > AFO', 120, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (3, 2, DEFAULT, 'CAR > VIT', 120, 'ativado');
INSERT INTO Rota (IdOrigem, IdDestino, IdRota, Nome, TempoEstimado, Status) VALUES (2, 3, DEFAULT, 'REC > CAR', 180, 'desativado');



CREATE TABLE Viagem (
    IdViagem NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT viagem_pk PRIMARY KEY,
    DataIda DATE NOT NULL,
    DataVolta DATE NOT NULL,
    Status VARCHAR2(25) CHECK( Status IN (
        'em_aprovacao',
        'aprovado',
        'em_curso',
        'concluido',
        'cancelado'
    ) ) NOT NULL
);

INSERT INTO Viagem (IdViagem, DataIda, DataVolta, Status) VALUES (DEFAULT, TO_DATE('2020-10-30 08:00', 'yyyy/mm/dd hh24:mi'), TO_DATE('2020-10-30 16:00', 'yyyy/mm/dd hh24:mi'), 'concluido');
INSERT INTO Viagem (IdViagem, DataIda, DataVolta, Status) VALUES (DEFAULT, TO_DATE('2020-10-30 10:00', 'yyyy/mm/dd hh24:mi'), TO_DATE('2020-11-04 10:00', 'yyyy/mm/dd hh24:mi'), 'em_curso');
INSERT INTO Viagem (IdViagem, DataIda, DataVolta, Status) VALUES (DEFAULT, TO_DATE('2020-12-01 05:00', 'yyyy/mm/dd hh24:mi'), TO_DATE('2020-12-02 22:00', 'yyyy/mm/dd hh24:mi'), 'em_aprovacao');



CREATE TABLE DocumentoExpedicao (
    IdViagem NUMBER NOT NULL,
    IdAdministrador NUMBER,
    IdDocumentoExpedicao NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT documentoexpedicao_pk PRIMARY KEY,
    Texto VARCHAR2(500),
    DataExpedida date default sysdate,
    Versao NUMBER(3),
    CONSTRAINT documentoexpedicao_viagem_fk FOREIGN KEY (IdViagem) REFERENCES Viagem(IdViagem),
    CONSTRAINT documentoexpedicao_administrador_fk FOREIGN KEY (IdAdministrador) REFERENCES Administrador(IdAdministrador)
);

INSERT INTO DocumentoExpedicao (IdViagem, IdAdministrador, IdDocumentoExpedicao, Texto, DataExpedida, Versao) VALUES (1, 1, DEFAULT, 'Esse é um documento oficial que comprova a viagem', TO_DATE('2020-10-16 17:59', 'yyyy/mm/dd hh24:mi'), 1);
INSERT INTO DocumentoExpedicao (IdViagem, IdAdministrador, IdDocumentoExpedicao, Texto, DataExpedida, Versao) VALUES (1, 1, DEFAULT, 'Esse é um documento oficial que comprova a viagem 2.0', TO_DATE('2020-10-21 10:13', 'yyyy/mm/dd hh24:mi'), 2);
INSERT INTO DocumentoExpedicao (IdViagem, IdAdministrador, IdDocumentoExpedicao, Texto, DataExpedida, Versao) VALUES (2, 2, DEFAULT, 'Esse é um documento oficial que comprova a viagem', TO_DATE('2020-10-22 11:34', 'yyyy/mm/dd hh24:mi'), 1);



CREATE TABLE Trajeto (
    IdViagem NUMBER NOT NULL,
    IdVeiculo NUMBER,
    IdMotorista NUMBER,
    IdCampus NUMBER,
    IdTrajeto NUMBER GENERATED ALWAYS AS IDENTITY NOT NULL CONSTRAINT trajeto_pk PRIMARY KEY,
    DataPrevista Date,
    DataEfetiva Date,
    Ordem INT,
    CONSTRAINT tajeto_viagem_fk FOREIGN KEY (IdViagem) REFERENCES Viagem(IdViagem),
    CONSTRAINT tajeto_veiculo_fk FOREIGN KEY (IdVeiculo) REFERENCES Veiculo(IdVeiculo),
    CONSTRAINT tajeto_motorista_fk FOREIGN KEY (IdMotorista) REFERENCES Motorista(IdMotorista),
    CONSTRAINT tajeto_campus_fk FOREIGN KEY (IdCampus) REFERENCES Campus(IdCampus)
);

-- Viagem 1
INSERT INTO Trajeto (IdTrajeto, IdViagem, IdVeiculo, IdMotorista, IdCampus, Ordem, DataPrevista, DataEfetiva) VALUES (DEFAULT, 1, 4, 2, 1, 1, TO_DATE('2020-10-16 17:30', 'yyyy/mm/dd hh24:mi'), TO_DATE('2020-10-16 17:45', 'yyyy/mm/dd hh24:mi'));
INSERT INTO Trajeto (IdTrajeto, IdViagem, IdVeiculo, IdMotorista, IdCampus, Ordem, DataPrevista, DataEfetiva) VALUES (DEFAULT, 1, 4, 2, 2, 6, TO_DATE('2020-10-16 18:00', 'yyyy/mm/dd hh24:mi'), TO_DATE('2020-10-16 18:22', 'yyyy/mm/dd hh24:mi'));

-- Viagem 2
INSERT INTO Trajeto (IdTrajeto, IdViagem, IdVeiculo, IdMotorista, IdCampus, Ordem, DataPrevista, DataEfetiva) VALUES (DEFAULT, 2, 2, 1, 1, 1, TO_DATE('2020-10-30 08:30', 'yyyy/mm/dd hh24:mi'), TO_DATE('2020-10-30 09:30', 'yyyy/mm/dd hh24:mi'));
INSERT INTO Trajeto (IdTrajeto, IdViagem, IdVeiculo, IdMotorista, IdCampus, Ordem, DataPrevista, DataEfetiva) VALUES (DEFAULT, 2, 2, 1, 2, 2, TO_DATE('2020-10-30 10:30', 'yyyy/mm/dd hh24:mi'), TO_DATE('2020-10-30 12:45', 'yyyy/mm/dd hh24:mi'));
INSERT INTO Trajeto (IdTrajeto, IdViagem, IdVeiculo, IdMotorista, IdCampus, Ordem, DataPrevista, DataEfetiva) VALUES (DEFAULT, 2, 2, 1, 3, 3, TO_DATE('2020-11-02 17:30', 'yyyy/mm/dd hh24:mi'), null);

-- Viagem 3
INSERT INTO Trajeto (IdTrajeto, IdViagem, IdVeiculo, IdMotorista, IdCampus, Ordem, DataPrevista, DataEfetiva) VALUES (DEFAULT, 3, 2, null, 4, 1, TO_DATE('2020-10-30 13:00', 'yyyy/mm/dd hh24:mi'), null);
INSERT INTO Trajeto (IdTrajeto, IdViagem, IdVeiculo, IdMotorista, IdCampus, Ordem, DataPrevista, DataEfetiva) VALUES (DEFAULT, 3, 2, null, 3, 2, TO_DATE('2020-10-30 13:20', 'yyyy/mm/dd hh24:mi'), null);



CREATE TABLE EmbarqueDesembarque (
    IdFuncionario NUMBER NOT NULL,
    IdTrajeto NUMBER NOT NULL,
    Tipo VARCHAR2(25) CHECK( Tipo IN (
        'embarque',
        'desembarque'
    ) ) NOT NULL,
    CONSTRAINT embarque_funcionario_fk FOREIGN KEY (IdFuncionario) REFERENCES Funcionario(IdFuncionario),
    CONSTRAINT embarque_trajeto_fk FOREIGN KEY (IdTrajeto) REFERENCES Trajeto(IdTrajeto)
);

-- Viagem 1
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (2, 1, 'embarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (7, 1, 'embarque');

INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (2, 2, 'desembarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (7, 2, 'desembarque');

-- Viagem 2
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (1, 3, 'embarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (3, 3, 'embarque');

INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (8, 4, 'embarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (9, 4, 'embarque');

INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (1, 5, 'desembarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (3, 5, 'desembarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (8, 5, 'desembarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (9, 5, 'desembarque');

-- Viagem 3
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (4, 6, 'embarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (3, 6, 'embarque');

INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (4, 7, 'desembarque');
INSERT INTO EmbarqueDesembarque (IdFuncionario, IdTrajeto, Tipo) VALUES (3, 7, 'desembarque');


/*
##################################
          Validar login

Valida se há um login com um determinado e-mail e senha (hash)
##################################
*/
SELECT 
    CASE
        WHEN EXISTS (
            SELECT
                C.Email
            FROM Conta C
            WHERE
                C.Email = 'ranata.assis@exemplo.ifpe.edu.br'
                AND C.Password = 'askj9YHIKJiuHK%JLhaosdf7hi&*l3qj'
        )
        THEN 'True'
        ELSE 'False'
    END Result
FROM DUAL
/*
##################################
##################################
*/

/*
##################################
       Campus disponiveis

Lista os campus disponiveis para poder se locomover
##################################
*/
SELECT *
FROM Campus
WHERE Status = 'habilitado'
/*
##################################
##################################
*/


/*
##################################
      Viagens Disponiveis

Retorna as viagens com o tempo previsto para o percurso e o já executado
##################################
*/
SELECT
    V.IdViagem
    , V.Status
    , to_char(V.DataIda, 'dd-mon-yy hh24:mi:ss') DataIda
    , to_char(V.DataVolta, 'dd-mon-yy hh24:mi:ss') DataVolta
    , TT.TempoTotalEstimado
    , TT.TempoTotalEfetivo
FROM
    Viagem V
    
    INNER JOIN (
        SELECT
            TT.IdViagem
            , ROUND((max(TT.DataPrevista) - min(TT.DataPrevista)) * 1440, 2) TempoTotalEstimado
            , ROUND((max(TT.DataEfetiva) - min(TT.DataEfetiva)) * 1440, 2) TempoTotalEfetivo
        FROM
            Trajeto TT
        GROUP BY
            TT.IdViagem
    ) TT
    ON TT.IdViagem = V.IdViagem
/*
##################################
##################################
*/


/*
##################################
        Viagens Aprovadas

Retorna as viagens com o tempo previsto para o percurso e o já executado
se conter os documentos de expedição
##################################
*/
-- Tipo 1
SELECT
    V.IdViagem
    , V.Status
    , to_char(V.DataIda, 'dd-mon-yy hh24:mi:ss') DataIda
    , to_char(V.DataVolta, 'dd-mon-yy hh24:mi:ss') DataVolta
    , TT.TempoTotalEstimado
    , TT.TempoTotalEfetivo
FROM
    Viagem V
    
    INNER JOIN (
        SELECT
            TT.IdViagem
            , ROUND((max(TT.DataPrevista) - min(TT.DataPrevista)) * 1440, 2) TempoTotalEstimado
            , ROUND((max(TT.DataEfetiva) - min(TT.DataEfetiva)) * 1440, 2) TempoTotalEfetivo
        FROM
            Trajeto TT
        GROUP BY
            TT.IdViagem
    ) TT
    ON TT.IdViagem = V.IdViagem
WHERE
    EXISTS (
        SELECT 1
        FROM DocumentoExpedicao DE
        WHERE DE.IdViagem = V.IdViagem
    );

-- Tipo 2
SELECT
    V.IdViagem
    , V.Status
    , to_char(V.DataIda, 'dd-mon-yy hh24:mi:ss') DataIda
    , to_char(V.DataVolta, 'dd-mon-yy hh24:mi:ss') DataVolta
    , TT.TempoTotalEstimado
    , TT.TempoTotalEfetivo
FROM
    Viagem V
    
    INNER JOIN (
        SELECT
            TT.IdViagem
            , ROUND((max(TT.DataPrevista) - min(TT.DataPrevista)) * 1440, 2) TempoTotalEstimado
            , ROUND((max(TT.DataEfetiva) - min(TT.DataEfetiva)) * 1440, 2) TempoTotalEfetivo
        FROM
            Trajeto TT
        GROUP BY
            TT.IdViagem
    ) TT
    ON TT.IdViagem = V.IdViagem
WHERE
    V.IdViagem IN (
        SELECT DE.IdViagem
        FROM DocumentoExpedicao DE
        GROUP BY DE.IdViagem
    )
/*
##################################
##################################
*/



/*
##################################
        Trajeto detalhado

Essa query tem o objetivo descrever quais será o percurso da viagem
detalhando qual será o motorista, origem e destino, quantos assentos há no veículo
e quantos ainda estão disponiveis, além do tipo do veículo
##################################
*/
SELECT
    TT.IdTrajeto
    , TT.Ordem
    , V.Tipo
    , V.QtdAssentos
    , PP.QtdPessoas
    , to_char(TT.DataPrevista, 'dd-mon-yy hh24:mi:ss') DataPrevista
    , to_char(TT.DataEfetiva, 'dd-mon-yy hh24:mi:ss') DataEfetiva
    , C.Nome Campus
    , CASE
        WHEN TT.IdMotorista IS NOT NULL
        THEN 'True'
        ELSE 'False'
    END AS MotoristaConfirmado
FROM
    Trajeto TT

    LEFT JOIN Veiculo V
    ON V.IdVeiculo = TT.IdVeiculo

    LEFT JOIN Campus C
    ON C.IdCampus = TT.IdCampus
    
    INNER JOIN (
        SELECT
            IdTrajeto
            , COUNT(0) QtdPessoas
        FROM
            EmbarqueDesembarque
        GROUP BY
            IdTrajeto
    ) PP
    ON PP.IdTrajeto = TT.IdTrajeto
ORDER BY
    TT.IdTrajeto
    , TT.Ordem
/*
##################################
##################################
*/



/*
##################################
        Último Documento

Essa query tem o objetivo de retornar o documento de expedição mais recente
##################################
*/
SELECT
    IdDocumentoExpedicao
    , Texto
    , DataExpedida
    , Versao
FROM
    DocumentoExpedicao DE
WHERE
    Versao = (
        SELECT MAX(Versao)
        FROM DocumentoExpedicao DD
        WHERE DD.IdViagem = DE.IdViagem
    )
/*
##################################
##################################
*/
