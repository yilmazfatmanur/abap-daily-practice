CLASS z_month_finder DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_month_finder IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lv_tarih  TYPE d,
          lv_yil    TYPE n LENGTH 4,
          lv_ay     TYPE n LENGTH 2,
          lv_gun    TYPE n LENGTH 2,
          lv_ay_ad  TYPE string,
          lv_mevsim TYPE string.

    lv_tarih = cl_abap_context_info=>get_system_date( ).
    lv_yil   = lv_tarih+0(4).
    lv_ay    = lv_tarih+4(2).
    lv_gun   = lv_tarih+6(2).

    CASE lv_ay.
      WHEN '01'. lv_ay_ad = 'Ocak'.
      WHEN '02'. lv_ay_ad = 'Şubat'.
      WHEN '03'. lv_ay_ad = 'Mart'.
      WHEN '04'. lv_ay_ad = 'Nisan'.
      WHEN '05'. lv_ay_ad = 'Mayıs'.
      WHEN '06'. lv_ay_ad = 'Haziran'.
      WHEN '07'. lv_ay_ad = 'Temmuz'.
      WHEN '08'. lv_ay_ad = 'Ağustos'.
      WHEN '09'. lv_ay_ad = 'Eylül'.
      WHEN '10'. lv_ay_ad = 'Ekim'.
      WHEN '11'. lv_ay_ad = 'Kasım'.
      WHEN '12'. lv_ay_ad = 'Aralık'.
      WHEN OTHERS. lv_ay_ad = 'Geçersiz ay'.
    ENDCASE.

    IF lv_ay BETWEEN 3 AND 5.
      lv_mevsim = 'İlkbahar'.
    ELSEIF lv_ay BETWEEN 6 AND 8.
      lv_mevsim = 'Yaz'.
    ELSEIF lv_ay BETWEEN 9 AND 11.
      lv_mevsim = 'Sonbahar'.
    ELSEIF lv_ay = 12 OR lv_ay = 1 OR lv_ay = 2.
      lv_mevsim = 'Kış'.
    ELSE.
      lv_mevsim = 'Geçersiz ay'.
    ENDIF.

    out->write( |Tarih: { lv_gun }.{ lv_ay }.{ lv_yil }| ).
    out->write( |Ay no: { lv_ay }| ).
    out->write( |Ay adı: { lv_ay_ad }| ).
    out->write( |Mevsim: { lv_mevsim }| ).

  ENDMETHOD.

ENDCLASS.
