      ******************************************************************
      * Author: Lucas Ramon
      * Date: 19/11/2024
      * Purpose: Criar uma lista de times do bem e exibi-la ao usuario.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG15.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-CTR PIC 9(02) VALUES ZEROS.
       01  WRK-LISTA.
           05 WRK-TIMES PIC X(20) OCCURS 13.
       PROCEDURE DIVISION.
       PERFORM 0100-INICIALIZAR.
       PERFORM 0200-PROPULAR.
       PERFORM 0300-EXIBIR-LISTA.
       PERFORM 0400-FINALIZAR.
       0100-INICIALIZAR.
           DISPLAY 'PREENCHA A LISTA DE 13 TIMES DO BEM.'.
       0200-PROPULAR.
           PERFORM VARYING WRK-CTR FROM 1 BY 1 UNTIL WRK-CTR = 13
               DISPLAY 'ENTRE COM O TIME N* 'WRK-CTR': '
               ACCEPT WRK-TIMES(WRK-CTR) FROM CONSOLE
               IF WRK-TIMES(WRK-CTR) = 'FLAMENGO' OR 'Flamengo' OR
                   'flamengo'
                  DISPLAY 'VOCE NAO EH DIGNO. ENCERRANDO...'
                  PERFORM 0400-FINALIZAR
               END-IF
           END-PERFORM.
       0300-EXIBIR-LISTA.
           MOVE 0 TO WRK-CTR.
           PERFORM VARYING WRK-CTR FROM 1 BY 1 UNTIL WRK-CTR = 13
              DISPLAY 'TIME: ' WRK-TIMES(WRK-CTR)
           END-PERFORM.
       0400-FINALIZAR.
           DISPLAY 'AO VASCO TUDO.'.
           STOP RUN.
       END PROGRAM PROG15.
