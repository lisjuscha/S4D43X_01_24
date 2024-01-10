@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 9: Path Expressions'
define view entity Z_18_DEMO09
  as select from Z_18_DEMO08
{
  key Carrid,
  key Connid,
      Cityfrom,
      Cityto,
      _Carrier.carrname as CarrierName,

      /* Associations */
      _Flights
}
