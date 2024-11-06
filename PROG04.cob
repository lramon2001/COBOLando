      ******************************************************************
      * Author: Lucas Ramon
      * Date: 06/11/2024
      * Purpose: Ler um nome e um salário e exibir o salário formatado.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG04.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME          PIC X(20) VALUE SPACES.
       77  WRK-SALARIO       PIC 9(6)V99 VALUES ZEROS.
       77  WRK-MASC-DINHEIRO  PIC $ZZZ.ZZ9,99 VALUES ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WRK-NOME    FROM CONSOLE.
            ACCEPT WRK-SALARIO FROM CONSOLE.
            MOVE   WRK-SALARIO TO   WRK-MASC-DINHEIRO.
            DISPLAY WRK-NOME.
            DISPLAY WRK-MASC-DINHEIRO.
            STOP RUN.
       END PROGRAM PROG04.
