import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _fromController = TextEditingController();
  final _toController = TextEditingController();

  Currency? selectedFrom;
  Currency? selectedTo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('환율계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'source',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'source',
              style: TextStyle(fontSize: 40),
            ),
            Text('update date'),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: _fromController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '1',
                  ),
                )),
                DropdownMenu(
                  initialSelection: Currency.KRW,
                  requestFocusOnTap: true,
                  label: const Text('From'),
                  onSelected: (Currency? value) {
                    setState(() {
                      selectedFrom = value;
                    });
                  },
                  dropdownMenuEntries: Currency.values.map((e) {
                    return DropdownMenuEntry(value: e, label: e.label);
                  }).toList(),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: _toController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '1',
                  ),
                )),
                DropdownMenu(
                  initialSelection: Currency.USD,
                  requestFocusOnTap: true,
                  label: const Text('To'),
                  onSelected: (Currency? value) {
                    setState(() {
                      selectedFrom = value;
                    });
                  },
                  dropdownMenuEntries: Currency.values.map((e) {
                    return DropdownMenuEntry(value: e, label: e.label);
                  }).toList(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum Currency {
  USD('USD'),
  AED('AED'),
  AFN('AFN'),
  ALL('ALL'),
  AMD('AMD'),
  ANG('ANG'),
  AOA('AOA'),
  ARS('ARS'),
  AUD('AUD'),
  AWG('AWG'),
  AZN('AZN'),
  BAM('BAM'),
  BBD('BBD'),
  BDT('BDT'),
  BGN('BGN'),
  BHD('BHD'),
  BIF('BIF'),
  BMD('BMD'),
  BND('BND'),
  BOB('BOB'),
  BRL('BRL'),
  BSD('BSD'),
  BTN('BTN'),
  BWP('BWP'),
  BYN('BYN'),
  BZD('BZD'),
  CAD('CAD'),
  CDF('CDF'),
  CHF('CHF'),
  CLP('CLP'),
  CNY('CNY'),
  COP('COP'),
  CRC('CRC'),
  CUP('CUP'),
  CVE('CVE'),
  CZK('CZK'),
  DJF('DJF'),
  DKK('DKK'),
  DOP('DOP'),
  DZD('DZD'),
  EGP('EGP'),
  ERN('ERN'),
  ETB('ETB'),
  EUR('EUR'),
  FJD('FJD'),
  FKP('FKP'),
  FOK('FOK'),
  GBP('GBP'),
  GEL('GEL'),
  GGP('GGP'),
  GHS('GHS'),
  GIP('GIP'),
  GMD('GMD'),
  GNF('GNF'),
  GTQ('GTQ'),
  GYD('GYD'),
  HKD('HKD'),
  HNL('HNL'),
  HRK('HRK'),
  HTG('HTG'),
  HUF('HUF'),
  IDR('IDR'),
  ILS('ILS'),
  IMP('IMP'),
  INR('INR'),
  IQD('IQD'),
  IRR('IRR'),
  ISK('ISK'),
  JEP('JEP'),
  JMD('JMD'),
  JOD('JOD'),
  JPY('JPY'),
  KES('KES'),
  KGS('KGS'),
  KHR('KHR'),
  KID('KID'),
  KMF('KMF'),
  KRW('KRW'),
  KWD('KWD'),
  KYD('KYD'),
  KZT('KZT'),
  LAK('LAK'),
  LBP('LBP'),
  LKR('LKR'),
  LRD('LRD'),
  LSL('LSL'),
  LYD('LYD'),
  MAD('MAD'),
  MDL('MDL'),
  MGA('MGA'),
  MKD('MKD'),
  MMK('MMK'),
  MNT('MNT'),
  MOP('MOP'),
  MRU('MRU'),
  MUR('MUR'),
  MVR('MVR'),
  MWK('MWK'),
  MXN('MXN'),
  MYR('MYR'),
  MZN('MZN'),
  NAD('NAD'),
  NGN('NGN'),
  NIO('NIO'),
  NOK('NOK'),
  NPR('NPR'),
  NZD('NZD'),
  OMR('OMR'),
  PAB('PAB'),
  PEN('PEN'),
  PGK('PGK'),
  PHP('PHP'),
  PKR('PKR'),
  PLN('PLN'),
  PYG('PYG'),
  QAR('QAR'),
  RON('RON'),
  RSD('RSD'),
  RUB('RUB'),
  RWF('RWF'),
  SAR('SAR'),
  SBD('SBD'),
  SCR('SCR'),
  SDG('SDG'),
  SEK('SEK'),
  SGD('SGD'),
  SHP('SHP'),
  SLE('SLE'),
  SLL('SLL'),
  SOS('SOS'),
  SRD('SRD'),
  SSP('SSP'),
  STN('STN'),
  SYP('SYP'),
  SZL('SZL'),
  THB('THB'),
  TJS('TJS'),
  TMT('TMT'),
  TND('TND'),
  TOP('TOP'),
  TRY('TRY'),
  TTD('TTD'),
  TVD('TVD'),
  TWD('TWD'),
  TZS('TZS'),
  UAH('UAH'),
  UGX('UGX'),
  UYU('UYU'),
  UZS('UZS'),
  VES('VES'),
  VND('VND'),
  VUV('VUV'),
  WST('WST'),
  XAF('XAF'),
  XCD('XCD'),
  XDR('XDR'),
  XOF('XOF'),
  XPF('XPF'),
  YER('YER'),
  ZAR('ZAR'),
  ZMW('ZMW'),
  ZWL('ZWL');

  const Currency(this.label);

  final String label;
}
