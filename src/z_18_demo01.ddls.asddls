@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 1: Projections'
define view entity Z_18_Demo01
  as select from sflight
{
  key carrid    as CarrierId,
  key connid    as ConnectionId,
  key fldate    as FlightDate,
      price     as FlightPrice,
      currency  as Currency,
      planetype as Planetype
}
