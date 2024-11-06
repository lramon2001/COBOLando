      ******************************************************************
      * Author: Lucas Ramon
      * Date: 05/11/2024
      * Purpose: Receber um nome e informar a data atual.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG03.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME PIC X(20) VALUES SPACES.
       01  WRK-DATA.
           02 WRK-ANO PIC 9(4) VALUES ZEROS.
           02 WRK-MES PIC 9(2) VALUES ZEROS.
           02 WRK-DIA PIC 9(2) VALUES ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WRK-NOME FROM CONSOLE.
            ACCEPT WRK-DATA FROM DATE YYYYMMDD.
            DISPLAY 'Ola senhor(a)' WRK-NOME ', HOJE EH DIA '
            WRK-DATA.
            STOP RUN.
       END PROGRAM PROG03.
