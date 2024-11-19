      ******************************************************************
      * Author: Lucas Ramon
      * Date: 19/11/2024
      * Purpose: Receber um número e printar a tabuada dele usando VARY-
      * ING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG12.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM PIC 9(02) VALUES ZEROS.
       77  WRK-RES PIC 9(02) VALUES ZEROS.
       77  WRK-CON PIC 9(02) VALUES ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM 0100-INCIANILIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-ENCERRAR.

           0100-INCIANILIZAR.
               DISPLAY 'ENTRE COM O NUMERO QUE DESEJA SABER A TABUADA:'.
               ACCEPT WRK-NUM FROM CONSOLE.

           0200-PROCESSAR.
               PERFORM VARYING WRK-CON FROM 1 BY 1 UNTIL WRK-CON>10
                   COMPUTE WRK-RES = WRK-NUM * WRK-CON
                   DISPLAY WRK-CON ' X ' WRK-NUM ' = ' WRK-RES
               END-PERFORM.
           0300-ENCERRAR.
               STOP RUN.
       END PROGRAM PROG12.
