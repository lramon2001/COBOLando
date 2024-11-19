      ******************************************************************
      * Author: Lucas Ramon
      * Date: 19/11/2024
      * Purpose: Usar o comando EVALUATE para fazer a verificaçao de
      * aprovado, recuperação e reprovado.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG07.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA-1 PIC 9(2)V99.
       77  WRK-NOTA-2 PIC 9(2)V99.
       77  WRK-MEDIA  PIC 9(2)V99.
       PROCEDURE DIVISION.

       DISPLAY 'DIGITE O VALOR DA NOTA 1: '.
       ACCEPT WRK-NOTA-1 FROM CONSOLE.
       DISPLAY 'DIGITE O VALOR DA NOTA 2: '.
       ACCEPT WRK-NOTA-2 FROM CONSOLE.

       COMPUTE WRK-MEDIA = (WRK-NOTA-1+WRK-NOTA-2)/2.

       EVALUATE TRUE
           WHEN WRK-MEDIA <2
                DISPLAY 'REPROVADO'
           WHEN WRK-MEDIA < 6
                DISPLAY 'RECUPERACAO'
           WHEN WRK-MEDIA >= 6
                DISPLAY 'APROVADO'
       END-EVALUATE.
            STOP RUN.
       END PROGRAM PROG07.
