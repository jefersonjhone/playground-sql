/*mysql -p */
show databases;
use comercial;
show tables;


select * from comclien;
/* -->> seleciona todos os registros da tabela comclien*/
select n_numeclien, c_codiclien, c_razaclien from comclien where c_codiclien = '0001';
/* -->> seleciona somente o registro c_codiclien que for igual a '0001'*/


select n_numeclien, c_codiclien, c_razaclien
    from comclien
        where c_codiclien <> '0001';
/* -->> seleciona os registros especificados da tabela comclien com o campo codiclien diferente;*/


/* -->> operadores de comparacao 

> maior
< menor
>= maior ou igual
<= menor ou igual

*/

/* -->> para comparar uma string pode-se usar o like */

select n_numeclien, c_codiclien,c_razaclien 
    from comclien
        where c_razaclien like 'L%';
        /* -->> o simbolo % é um curinga no SQL, pode-se usar no começo, no meio e no fim de uma sring*/


select distinct n_numeclien from comvenda;
/* -->> nao seleciona registros duplicados*/

/*SUBQUERYS OU SUBCONSULTAS*/

/* -->> clausulas in e not in*/
select c_codiclien, c_razaclien from comclien where n_numeclien in (1,2);
select c_codiclien, c_razaclien from comclien where n_numeclien not in (1,2);

select c_razaclien from comclien where n_numeclien in (select n_numeclien from comvenda where n_numeclien);

select c_razaclien from comclien where n_numeclien not in (select n_numeclien from comvenda);
