--1. Criar procedure insere_projeto
CREATE OR REPLACE PROCEDURE brh.insere_projeto (
    p_nome        IN brh.projeto.nome%TYPE,
    p_responsavel IN brh.projeto.responsavel%TYPE) 
   IS
BEGIN
    INSERT INTO brh.projeto (
        nome,
        responsavel,
        inicio
     
    ) VALUES (
        p_nome,
        p_responsavel,
        sysdate
   
    );

END;


--2. Criar função calcula_idade
 CREATE OR REPLACE FUNCTION brh.calcula_idade 
(p_data_nascimento IN DATE ) 
   RETURN NUMBER 
IS
  BEGIN
   RETURN ( trunc((months_between(sysdate, p_data_nascimento) / 12)) );
END;


--Testando
select brh.calcula_idade (sysdate) from dual; 


--4. Criar function finaliza_projeto
create or replace function brh.finaliza_projeto 
(p_id in brh.projeto.id%type)
return brh.projeto.fim%type
is
    v_data_fim brh.projeto.fim%type;
begin
    v_data_fim := sysdate;
    update brh.projeto set fim = v_data_fim where id= p_id;
    
    return v_data_fim;
end;

--Testando
set serveroutput on
DECLARE
    v_data_fim DATE;
BEGIN
    v_data_fim := brh.finaliza_projeto(4);
    dbms_output.put_line(v_data_fim);
END;




