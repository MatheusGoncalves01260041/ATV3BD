
/*trabalho*/

/*1º questão*/ 
delimiter $$ 
create procedure insert_aluno (mat_aluno integer, cod_curso integer, dat_nasc date,
	tot_cred integer, mgp double, nom_alun varchar (60), email varchar (30))
    deterministic 
    begin 
    insert into Aluno values (mat_aluno, cod_curso, dat_nasc, tot_cred, mgp, nom_alun,email);
    select nom_alun as Nome from Aluno order by mat_aluno desc limit 1;
    end $$
   delimiter ;
   
  /*2º questão*/ 
  delimiter $$
  create procedure contador_com_while (limite tinyint unsigned)
  begin
	declare contador int;
    declare resultado varchar(30);
		set contador = 1;
        set resultado = ' ';
        while contador <= 5 do 
			set result = concat(resultado, contador, ',');
            set contador = contador + 1;
		end while;
	select resultado;
  end $$
  
   delimiter ;
   
    /*3º questão*/
   delimiter $$
  create procedure contador_com_repeat (limite tinyint unsigned)
  begin
	declare contador int;
    declare resultado varchar(30);
		set contador = 1;
        set resultado = ' ';
        repeat        
			set result = concat(resultado, contador, ',');
            set contador = contador + 1;
            until cont = 10
		end repeat;
	select resultado;
		
	select resultado;
  end $$
  
delimiter ;
  
    
        
   

   

   
   
    