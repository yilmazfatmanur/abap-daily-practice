CLASS  z_time_finder DEFINITION
PUBLIC 
FINAL
CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS  z_time_finder IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lv_timestamp) = utclong_current( ).

    CONVERT UTCLONG lv_timestamp
            TIME ZONE 'TURKEY'
            INTO DATE DATA(lv_date)
                 TIME DATA(lv_time).

    out->write( |Date: { lv_date DATE = ISO }| ).
    out->write( |Time: { lv_time TIME = ISO }| ).

  ENDMETHOD.

ENDCLASS.
