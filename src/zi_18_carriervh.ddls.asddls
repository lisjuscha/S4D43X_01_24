@EndUserText.label: 'Value Help for Carrier'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZI_18_CarrierVH
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname
    
}
