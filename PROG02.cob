      ******************************************************************
      * Author: Lucas Ramon e Felipe Alef
      * Date: 05/11/2024
      * Purpose: Ler uma variavel e printar na console
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG02.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-VARIAVEL PIC X(20) VALUES SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WRK-VARIAVEL FROM CONSOLE.
            DISPLAY WRK-VARIAVEL.
            STOP RUN.
       END PROGRAM PROG02.
