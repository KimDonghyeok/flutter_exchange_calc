import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversion_rate.freezed.dart';
part 'conversion_rate.g.dart';

@freezed
class ConversionRate with _$ConversionRate {
  const factory ConversionRate({
    required double USD,
    required double AED,
    required double AFN,
    required double ALL,
    required double AMD,
    required double ANG,
    required double AOA,
    required double ARS,
    required double AUD,
    required double AWG,
    required double AZN,
    required double BAM,
    required double BBD,
    required double BDT,
    required double BGN,
    required double BHD,
    required double BIF,
    required double BMD,
    required double BND,
    required double BOB,
    required double BRL,
    required double BSD,
    required double BTN,
    required double BWP,
    required double BYN,
    required double BZD,
    required double CAD,
    required double CDF,
    required double CHF,
    required double CLP,
    required double CNY,
    required double COP,
    required double CRC,
    required double CUP,
    required double CVE,
    required double CZK,
    required double DJF,
    required double DKK,
    required double DOP,
    required double DZD,
    required double EGP,
    required double ERN,
    required double ETB,
    required double EUR,
    required double FJD,
    required double FKP,
    required double FOK,
    required double GBP,
    required double GEL,
    required double GGP,
    required double GHS,
    required double GIP,
    required double GMD,
    required double GNF,
    required double GTQ,
    required double GYD,
    required double HKD,
    required double HNL,
    required double HRK,
    required double HTG,
    required double HUF,
    required double IDR,
    required double ILS,
    required double IMP,
    required double INR,
    required double IQD,
    required double IRR,
    required double ISK,
    required double JEP,
    required double JMD,
    required double JOD,
    required double JPY,
    required double KES,
    required double KGS,
    required double KHR,
    required double KID,
    required double KMF,
    required double KRW,
    required double KWD,
    required double KYD,
    required double KZT,
    required double LAK,
    required double LBP,
    required double LKR,
    required double LRD,
    required double LSL,
    required double LYD,
    required double MAD,
    required double MDL,
    required double MGA,
    required double MKD,
    required double MMK,
    required double MNT,
    required double MOP,
    required double MRU,
    required double MUR,
    required double MVR,
    required double MWK,
    required double MXN,
    required double MYR,
    required double MZN,
    required double NAD,
    required double NGN,
    required double NIO,
    required double NOK,
    required double NPR,
    required double NZD,
    required double OMR,
    required double PAB,
    required double PEN,
    required double PGK,
    required double PHP,
    required double PKR,
    required double PLN,
    required double PYG,
    required double QAR,
    required double RON,
    required double RSD,
    required double RUB,
    required double RWF,
    required double SAR,
    required double SBD,
    required double SCR,
    required double SDG,
    required double SEK,
    required double SGD,
    required double SHP,
    required double SLE,
    required double SLL,
    required double SOS,
    required double SRD,
    required double SSP,
    required double STN,
    required double SYP,
    required double SZL,
    required double THB,
    required double TJS,
    required double TMT,
    required double TND,
    required double TOP,
    required double TRY,
    required double TTD,
    required double TVD,
    required double TWD,
    required double TZS,
    required double UAH,
    required double UGX,
    required double UYU,
    required double UZS,
    required double VES,
    required double VND,
    required double VUV,
    required double WST,
    required double XAF,
    required double XCD,
    required double XDR,
    required double XOF,
    required double XPF,
    required double YER,
    required double ZAR,
    required double ZMW,
    required double ZWL,
  }) = _ConversionRate;

  factory ConversionRate.fromJson(Map<String, Object?> json) =>
      _$ConversionRateFromJson(json);
}
