CLASS zcl_rap_eml_zfr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_zfr IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    " step 1 - READ
*    READ ENTITIES OF ZI_RAP_Travel_zfr
*      ENTITY travel
*        FROM VALUE #( ( TravelUUID = 'D2090420EBCE1F8E17000F0248EE98E2' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

    " Step 2 Read With Fields

*    READ ENTITIES OF ZI_RAP_Travel_zfr
*        ENTITY Travel
*        FIELDS ( AgencyID CustomerID )
*        WITH VALUE #( ( TravelUUID = 'D2090420EBCE1F8E17000F0248EE98E2' ) )
*        RESULT DATA(travels).
*
*     out->write( travels ).

    " Step 3 Read All Fields

*    READ ENTITIES OF zi_rap_travel_zfr
*        ENTITY Travel
*        ALL FIELDS WITH VALUE #( ( TravelUUID = 'D2090420EBCE1F8E17000F0248EE98E2') )
*        RESULT DATA(travels).
*
*    out->write( travels ).

    " Step 4 Read All Fields

*    READ ENTITIES OF zi_rap_travel_zfr
*        ENTITY Travel BY \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUUID = 'D2090420EBCE1F8E17000F0248EE98E2') )
*        RESULT DATA(bookings).
*
*    out->write( bookings ).

    " Step 5 Failure Handling

*    READ ENTITIES OF zi_rap_travel_zfr
*        ENTITY Travel BY \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUUID = 'Zafer') )
*        RESULT DATA(bookings)
*        FAILED DATA(failed)   " Complex structure should be check on debug mod
*        REPORTED DATA(reported).
*
*    out->write( bookings ).

    " step 6 - MODIFY Update

*    MODIFY ENTITIES OF zi_rap_travel_zfr
*     ENTITY Travel
*     UPDATE
*     SET FIELDS WITH VALUE #( ( TravelUUID  = 'D2090420EBCE1F8E17000F0248EE98E2' Description = 'I like RAP@openSAP' ) )
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    out->write( 'Update hope done' ).
*
*    COMMIT ENTITIES
*        RESPONSE OF zi_rap_travel_zfr
*        FAILED     DATA(failed_commit)
*        REPORTED   DATA(reported_commit).
*
*    READ ENTITIES OF ZI_RAP_Travel_zfr
*    ENTITY Travel
*    FIELDS ( AgencyID Description )
*    WITH VALUE #( ( TravelUUID = 'D2090420EBCE1F8E17000F0248EE98E2' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

    " step 7 - MODIFY Create
*    MODIFY ENTITIES OF ZI_RAP_Travel_zfr
*      ENTITY travel
*        CREATE
*          SET FIELDS WITH VALUE
*            #( ( %cid        = 'MyContentID_1'
*                 AgencyID    = '70012'
*                 CustomerID  = '14'
*                 BeginDate   = cl_abap_context_info=>get_system_date( )
*                 EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                 Description = 'I like RAP@openSAP' ) )
*
*     MAPPED DATA(mapped)
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_zfr
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Create done' ).

    " step 8 - MODIFY Delete
*    MODIFY ENTITIES OF zi_rap_travel_zfr
*    ENTITY Travel
*    DELETE FROM VALUE #( ( TravelUUID = '02CD4D9FE4421EDBA9FCEEA5A746053E ') )
*    FAILED DATA(failed)
*    REPORTED DATA(reported).
*
*    COMMIT ENTITIES
*    RESPONSE OF zi_rap_travel_zfr
*    FAILED DATA(failed_commit)
*    REPORTED DATA(reported_commit).


  ENDMETHOD.
ENDCLASS.
