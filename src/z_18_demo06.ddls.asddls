@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 6: Nested Views'
define view entity Z_18_Demo06
  as select from Z_18_Demo05
{
  count(*) as NumberOfCarriersWithMoreThan4MRevenue
}
