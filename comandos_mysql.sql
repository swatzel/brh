##Relatório de departamentos
select sigla, nome 
 from departamento 
 order by nome;


##Relatório de dependentes
select colaborador.nome as colaborador, dependente.nome as dependente, dependente.data_nascimento, dependente.parentesco 
 from dependente, colaborador
 where dependente.colaborador = colaborador.matricula 
 order by colaborador.nome;
 
 
##Inserir novo colaborador
 insert into papel (nome)
 values ('Especialista de negócios');
 
 insert into endereco
	(cep, uf, cidade, bairro, logradouro)
 values ('88888-100', 'DF', 'Brasília', 'Asa Norte', 'Avenida das Flores');

 insert into colaborador 
	(matricula, nome, cpf, email_pessoal, email_corporativo, salario, departamento, cep, complemento_endereco)
 values ('FT01', 'Fulano de Tal', '000.000.000-99', 'fulano@email.com', 'fulano@corp.com', '5000', 'SEOPE', '88888-100', 'Fundos');
    
 insert into telefone_colaborador 
	(colaborador, numero, tipo)
 values ('FT01', '(61) 99999-9999', 'M');
    
 insert into projeto 
	(nome, responsavel, inicio, fim)
 values ('BI', 'J123', '2022-08-25', null);
       
 insert into atribuicao
 (colaborador, projeto, papel)
 values ('FT01', 5, 8);


##Excluir departamento Secap
delete from atribuicao 
 where colaborador in ('H123', 'M123', 'R123', 'W123');
  
delete from telefone_colaborador 
 where colaborador in ('H123', 'M123', 'R123', 'W123');
  
delete from dependente
 where colaborador in ('H123', 'M123', 'R123', 'W123');

update departamento 
   set chefe = 'A123'
 where sigla = 'SECAP';
 
delete from colaborador 
 where departamento = 'SECAP';
 
delete from departamento 
 where sigla = 'SECAP';

select * from departamento;






