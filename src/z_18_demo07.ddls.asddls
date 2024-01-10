@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo7: Outer Joins'
define view entity Z_18_DEMO07
  as select from    spfli   as Connection
    left outer join scarr   as Carrier on Carrier.carrid = Connection.carrid
    left outer join sflight as Flight  on  Flight.carrid = Connection.carrid
                                       and Flight.connid = Connection.connid

{
  key Connection.carrid   as Carrid,
  key Connection.connid   as Connid,
  key Flight.fldate       as Fldate,
      Carrier.carrname    as Carrname,
      Connection.cityfrom as Cityfrom,
      Connection.cityto   as Cityto
}
