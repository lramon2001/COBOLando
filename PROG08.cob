      ******************************************************************
      * Author: Lucas Ramon
      * Date: 19/11/2024
      * Purpose: Ler uma variavel e atribuir um nivel logico a ela usan-
      * do variáveis níveis 88.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG08.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-USUARIO PIC X(15).
       77  WRK-NIVEL   PIC 9(02).
           88 ADM VALUE 01.
           88 GUEST VALUE 02.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY 'Entre com o nome do usuário: '.
            ACCEPT WRK-USUARIO FROM CONSOLE.
            DISPLAY 'Entre com o nivel do usuário: '.
            ACCEPT WRK-NIVEL FROM CONSOLE.

           IF ADM
               DISPLAY 'ADMINISTRADOR'
           ELSE
               IF GUEST
               DISPLAY 'GUEST'
               ELSE
               DISPLAY 'NAO AUTORIZADO'
           END-IF.


            STOP RUN.
       END PROGRAM PROG08.
