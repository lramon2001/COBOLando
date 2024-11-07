      ******************************************************************
      * Author: Lucas Ramon
      * Date: 07/11/2024
      * Purpose: Receber dois números e printar a soma,subtracao,multi-
      * plicação,divisão e média aritmética.
      *
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-OPERADOR01 PIC S9(2).
       77  WRK-OPERADOR02 PIC S9(2).
       77  WRK-RESULTADO  PIC S9(3).
       77  WRK-RESTO      PIC 9(1).
       77  WRK-MASC       PIC +ZZZZ9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY 'Digite o valor do operador 01.'.
            ACCEPT  WRK-OPERADOR01 FROM CONSOLE.
            DISPLAY 'Digite o valor do operador 02.'.
            ACCEPT  WRK-OPERADOR02 FROM CONSOLE.
            ADD WRK-OPERADOR01 WRK-OPERADOR02 TO WRK-RESULTADO.
            DISPLAY 'SOMA:          ' WRK-RESULTADO.
            SUBTRACT WRK-OPERADOR01 FROM WRK-OPERADOR02
            GIVING WRK-RESULTADO.
            DISPLAY 'SUBTRACAO:     '  WRK-RESULTADO.
            MULTIPLY WRK-OPERADOR01 BY WRK-OPERADOR02
            GIVING WRK-RESULTADO.
            DISPLAY 'MULTIPLICACAO: '  WRK-RESULTADO.
            DIVIDE  WRK-OPERADOR01 BY  WRK-OPERADOR02
            GIVING WRK-RESULTADO
            REMAINDER WRK-RESTO.
            DISPLAY 'DIVISAO:      '  WRK-RESULTADO.
            DISPLAY 'RESTO:        '  WRK-RESTO.
            COMPUTE WRK-RESULTADO =(WRK-OPERADOR01+WRK-OPERADOR02)/2.
            DISPLAY 'MEDIA:        ' WRK-RESULTADO.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
