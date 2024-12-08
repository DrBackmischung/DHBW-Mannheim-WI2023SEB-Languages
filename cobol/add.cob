       IDENTIFICATION DIVISION.
       PROGRAM-ID. Add.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 num1     PIC 9 VALUE 5.
       01 num2     PIC 9 VALUE 7.
       01 sum      PIC 9.
       PROCEDURE DIVISION.
           CALL 'AddTwoNumbers' USING num1 num2 GIVING sum.
           DISPLAY "Sum: " sum.
           STOP RUN.
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AddTwoNumbers.
       DATA DIVISION.
       LINKAGE SECTION.
       01 a        PIC 9.
       01 b        PIC 9.
       PROCEDURE DIVISION USING a b.
           COMPUTE sum = a + b.
           GOBACK.
