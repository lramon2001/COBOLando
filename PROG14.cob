      ******************************************************************
      * Author: Lucas Ramon
      * Date: 19/11/2024
      * Purpose: Usar o book com o comando COPY
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG14.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK.COB'.

       PROCEDURE DIVISION.
           DISPLAY WRK-FRASE.
            STOP RUN.
       END PROGRAM PROG14.
