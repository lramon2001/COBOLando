      ******************************************************************
      * Author: Lucas Ramon
      * Date: 19/11/2024
      * Purpose: Usar o comando IF e ELSE para fazer a verificaçao de
      * aprovado, recuperação e reprovado.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG06.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA-1 PIC 9(2)V99 VALUE ZEROS.
       77  WRK-NOTA-2 PIC 9(2)V99 VALUE ZEROS.
       77  WRK-MEDIA  PIC 9(2)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Digite o valor da nota 1: "
            ACCEPT WRK-NOTA-1.
            DISPLAY "Digite o valor da nota 2: "
            ACCEPT WRK-NOTA-2.
            COMPUTE WRK-MEDIA = (WRK-NOTA-1 + WRK-NOTA-2) / 2.
            DISPLAY "MEDIA: " WRK-MEDIA.
            IF WRK-MEDIA < 6 THEN
                IF WRK-MEDIA < 2 THEN
                   DISPLAY 'REPROVADO'
                ELSE
                   DISPLAY 'RECUPERACAO'
                END-IF
            ELSE
                DISPLAY 'APROVADO'
            END-IF.
            STOP RUN.
       END PROGRAM PROG06.
