      ******************************************************************
      * Author: Lucas Ramon
      * Date: 19/11/2024
      * Purpose: Printar o contador em um la�o de 10 repeti��es.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG10.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-CONTADOR  PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM 10 TIMES
               ADD 1 TO WRK-CONTADOR
               DISPLAY 'CONTADOR: ' WRK-CONTADOR
            END-PERFORM.
            STOP RUN.
       END PROGRAM PROG10.
