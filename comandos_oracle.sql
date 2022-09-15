--Relatório de departamentos
select sigla, nome 
 from brh.departamento 
 order by nome;


--Relatório de dependentes
select brh.colaborador.nome as colaborador, brh.dependente.nome as dependente, brh.dependente.data_nascimento, brh.dependente.parentesco 
 from brh.dependente, brh.colaborador
 where brh.dependente.colaborador = brh.colaborador.matricula 
 order by brh.colaborador.nome, brh.dependente.nome;
 
 
--Inserir novo colaborador

 insert into brh.papel (id, nome)
 values (8, 'Especialista de negócios');
 
 insert into brh.endereco
	(cep, uf, cidade, bairro, logradouro)
 values ('88888-100', 'DF', 'Brasília', 'Asa Norte', 'Avenida das Flores');

 insert into brh.colaborador 
	(matricula, nome, cpf, email_pessoal, email_corporativo, salario, departamento, cep, complemento_endereco)
 values ('FT01', 'Fulano de Tal', '000.000.000-99', 'fulano@email.com', 'fulano@corp.com', '5000', 'SEOPE', '88888-100', 'Fundos');

 insert into brh.telefone_colaborador 
	(colaborador, numero, tipo)
 values ('FT01', '(61) 99999-9999', 'M');

  insert into brh.projeto 
	(id, nome, responsavel, inicio, fim)
 values (9,'BI', 'J123', '25/08/2022', null);
       
  insert into brh.atribuicao
    (colaborador, projeto, papel)
 values ('FT01', 9, 8);
 
 
--Relatório de contatos
select brh.colaborador.nome, brh.colaborador.email_corporativo, brh.telefone_colaborador.numero
 from brh.telefone_colaborador, brh.colaborador
 where brh.telefone_colaborador.colaborador = brh.colaborador.matricula and brh.telefone_colaborador.tipo ='M';
 





