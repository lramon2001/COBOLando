      ******************************************************************
      * Author: Lucas Ramon
      * Date: 19/11/2024
      * Purpose: Receber nome,ano de entrada na empresa,salario e apli-
      * car aumento progessivo pelo tempo de empresa ate 1 ano, não há
      * aumento, de 2 a 5 anos 5% de aumento, de 6 a 15 anos 10% de au-
      * mento e a mais de 15 anos 15%.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG09.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME        PIC X(15)   VALUES SPACES.
       77  WRK-ANO-ENTRADA PIC 9(4)    VALUES ZEROS.
       77  WRK-SALARIO     PIC 9(6)V99 VALUES ZEROS.
       77  WRK-TEMPO       PIC S9(2)    VALUES ZEROS.
       77  WRK-ANO-ATUAL   PIC 9(8)    VALUES ZEROS.
       77  WRK-MASC-DINHEIRO  PIC $ZZZ.ZZ9,99 VALUES ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-APRESENTAR.
           PERFORM 0400-FINALIZAR.

       0100-INICIALIZAR.
           DISPLAY 'ENTRE COM O NOME: '.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'ENTRE COM O ANO DE ENTRADA NA EMPRESA: '.
           ACCEPT WRK-ANO-ENTRADA FROM CONSOLE.
           DISPLAY 'ENTRE COM O SALARIO: '.
           ACCEPT WRK-SALARIO FROM CONSOLE.

           MOVE FUNCTION CURRENT-DATE(1:4) TO WRK-ANO-ATUAL.


       0200-PROCESSAR.
           SUBTRACT WRK-ANO-ENTRADA FROM WRK-ANO-ATUAL GIVING
           WRK-TEMPO.
           EVALUATE TRUE
               WHEN WRK-TEMPO <2 AND WRK-TEMPO > 0
                    COMPUTE WRK-SALARIO = WRK-SALARIO * 1
               WHEN WRK-TEMPO <= 5 AND WRK-TEMPO > 0
                    COMPUTE WRK-SALARIO = WRK-SALARIO * 1,05
               WHEN WRK-TEMPO > 5 AND WRK-TEMPO <16
                    COMPUTE WRK-SALARIO = WRK-SALARIO * 1,10
               WHEN WRK-TEMPO >= 16
                    COMPUTE WRK-SALARIO = WRK-SALARIO * 1,15
               WHEN WRK-TEMPO < 0
                    DISPLAY 'Voce nem trablhou e quer aumento'
                    ',meu chapa?'
                    PERFORM 0400-FINALIZAR
           END-EVALUATE.

       0300-APRESENTAR.
           MOVE WRK-SALARIO TO WRK-MASC-DINHEIRO.
           DISPLAY 'SALARIO COM AUMENTO: ' WRK-MASC-DINHEIRO.
       0400-FINALIZAR.
           STOP RUN.
       END PROGRAM PROG09.
