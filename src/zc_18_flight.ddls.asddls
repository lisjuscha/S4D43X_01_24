@EndUserText.label: 'Flight'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_18_Flight
  as projection on ZI_18_Flight
{
      @Consumption.valueHelpDefinition: [{ entity:{ name: 'ZI_18_CarrierVH', element: 'Carrid' } }]
  key CarrierID,
  key ConnectionID,
  key FlightDate,
      FlightPrice,
      @Consumption.valueHelpDefinition: [{ entity:{ name: 'I_CURRENCYSTDVH', element: 'Currency' } }]
      CurrencyCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      PlaneType,
      MaximumSeatsEconomyClass,
      OccupiedSeatsEconomyClass,
      PaymentSum,
      MaximumSeatsBusinessClass,
      OccupiedSeatsBusinessClass,
      MaximumSeatsFirstClass,
      OccupiedSeatsFirstClass,

      CarrierName,
      FlightDateCriticality,

      _Bookings : redirected to composition child ZC_18_Booking
}
