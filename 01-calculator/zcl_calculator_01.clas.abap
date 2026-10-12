"! Basit hesap makinesi - ABAP OOP örneği
"! Toplama, çıkarma, çarpma, bölme işlemleri
"! Çalıştırma: Eclipse ADT'de F9 (ABAP Application Console)
CLASS zcl_calculator_01 DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    METHODS:
      topla   IMPORTING s1 TYPE i s2 TYPE i EXPORTING sonuc TYPE i,
      cikart  IMPORTING s1 TYPE i s2 TYPE i EXPORTING sonuc TYPE i,
      carp    IMPORTING s1 TYPE i s2 TYPE i EXPORTING sonuc TYPE i,
      bol     IMPORTING s1 TYPE i s2 TYPE i EXPORTING sonuc TYPE i
              RAISING cx_sy_zerodivide.
ENDCLASS.

CLASS zcl_calculator_01 IMPLEMENTATION.

  METHOD topla.   sonuc = s1 + s2.  ENDMETHOD.
  METHOD cikart.  sonuc = s1 - s2.  ENDMETHOD.
  METHOD carp.    sonuc = s1 * s2.  ENDMETHOD.

  METHOD bol.
    IF s2 = 0.
      RAISE EXCEPTION TYPE cx_sy_zerodivide.
    ENDIF.
    sonuc = s1 / s2.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA: hesap  TYPE REF TO zcl_calculator_01,
          sonuc2 TYPE i.

    CREATE OBJECT hesap.

    hesap->topla(
      EXPORTING s1 = 12 s2 = 3
      IMPORTING sonuc = sonuc2 ).

    out->write( |Sonuc : { sonuc2 }| ).
  ENDMETHOD.

ENDCLASS.
