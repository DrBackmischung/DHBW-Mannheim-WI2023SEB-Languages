METHOD add.
  result = a + b.
ENDMETHOD.

START-OF-SELECTION.

WRITE: 'Result: ', add( iv_first = 2 iv_second = 3 ).