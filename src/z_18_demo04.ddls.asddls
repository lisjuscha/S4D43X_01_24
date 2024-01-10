@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 4: Built-In Function'
define view entity Z_18_Demo04
  as select from sflight
{
  /* Numeric Functions */
  5.0 / 3.0                              as Divide1,
  division(5, 3, 2)                      as Division,
  price,
  currency,
  @Semantics.amount.currencyCode: 'currency'
  round(price, -1)                       as Round1,

  /* String Functions*/
  concat_with_space('Hello', 'World', 1) as Concatenation1,
  length('X  ')                          as LengthXSS,
  length('  X')                          as LenghtSSX,
  length('   ')                          as LengthSSS,

  /* Unit- and Currency Conversions */
  @Semantics.amount.currencyCode: 'currency'
  currency_conversion(
  amount => price,
  source_currency => currency,
  target_currency => cast('EUR' as abap.cuky),
  exchange_rate_date => fldate )         as ConvertedPrice,
  cast('EUR' as abap.cuky)               as ConvertedCurrencyCode,

  /* Date- and Time Functions */
  fldate,
  dats_add_days(fldate, 14, 'FAIL')      as DatsAddDays1

}
