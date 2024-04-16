class ExchangeDto {
  String? result;
  String? documentation;
  String? termsOfUse;
  num? timeLastUpdateUnix;
  String? timeLastUpdateUtc;
  num? timeNextUpdateUnix;
  String? timeNextUpdateUtc;
  String? baseCode;
  ConversionRateDto? conversionRateDto;

  ExchangeDto({
    this.result,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.baseCode,
    this.conversionRateDto,
  });

  ExchangeDto.fromJson(dynamic json) {
    result = json['result'];
    documentation = json['documentation'];
    termsOfUse = json['terms_of_use'];
    timeLastUpdateUnix = json['time_last_update_unix'];
    timeLastUpdateUtc = json['time_last_update_utc'];
    timeNextUpdateUnix = json['time_next_update_unix'];
    timeNextUpdateUtc = json['time_next_update_utc'];
    baseCode = json['base_code'];
    conversionRateDto = json['conversion_rates'] != null
        ? ConversionRateDto.fromJson(json['conversion_rates'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = result;
    map['documentation'] = documentation;
    map['terms_of_use'] = termsOfUse;
    map['time_last_update_unix'] = timeLastUpdateUnix;
    map['time_last_update_utc'] = timeLastUpdateUtc;
    map['time_next_update_unix'] = timeNextUpdateUnix;
    map['time_next_update_utc'] = timeNextUpdateUtc;
    map['base_code'] = baseCode;
    if (conversionRateDto != null) {
      map['conversion_rates'] = conversionRateDto?.toJson();
    }
    return map;
  }
}

class ConversionRateDto {
  num? USD;
  num? AED;
  num? AFN;
  num? ALL;
  num? AMD;
  num? ANG;
  num? AOA;
  num? ARS;
  num? AUD;
  num? AWG;
  num? AZN;
  num? BAM;
  num? BBD;
  num? BDT;
  num? BGN;
  num? BHD;
  num? BIF;
  num? BMD;
  num? BND;
  num? BOB;
  num? BRL;
  num? BSD;
  num? BTN;
  num? BWP;
  num? BYN;
  num? BZD;
  num? CAD;
  num? CDF;
  num? CHF;
  num? CLP;
  num? CNY;
  num? COP;
  num? CRC;
  num? CUP;
  num? CVE;
  num? CZK;
  num? DJF;
  num? DKK;
  num? DOP;
  num? DZD;
  num? EGP;
  num? ERN;
  num? ETB;
  num? EUR;
  num? FJD;
  num? FKP;
  num? FOK;
  num? GBP;
  num? GEL;
  num? GGP;
  num? GHS;
  num? GIP;
  num? GMD;
  num? GNF;
  num? GTQ;
  num? GYD;
  num? HKD;
  num? HNL;
  num? HRK;
  num? HTG;
  num? HUF;
  num? IDR;
  num? ILS;
  num? IMP;
  num? INR;
  num? IQD;
  num? IRR;
  num? ISK;
  num? JEP;
  num? JMD;
  num? JOD;
  num? JPY;
  num? KES;
  num? KGS;
  num? KHR;
  num? KID;
  num? KMF;
  num? KRW;
  num? KWD;
  num? KYD;
  num? KZT;
  num? LAK;
  num? LBP;
  num? LKR;
  num? LRD;
  num? LSL;
  num? LYD;
  num? MAD;
  num? MDL;
  num? MGA;
  num? MKD;
  num? MMK;
  num? MNT;
  num? MOP;
  num? MRU;
  num? MUR;
  num? MVR;
  num? MWK;
  num? MXN;
  num? MYR;
  num? MZN;
  num? NAD;
  num? NGN;
  num? NIO;
  num? NOK;
  num? NPR;
  num? NZD;
  num? OMR;
  num? PAB;
  num? PEN;
  num? PGK;
  num? PHP;
  num? PKR;
  num? PLN;
  num? PYG;
  num? QAR;
  num? RON;
  num? RSD;
  num? RUB;
  num? RWF;
  num? SAR;
  num? SBD;
  num? SCR;
  num? SDG;
  num? SEK;
  num? SGD;
  num? SHP;
  num? SLE;
  num? SLL;
  num? SOS;
  num? SRD;
  num? SSP;
  num? STN;
  num? SYP;
  num? SZL;
  num? THB;
  num? TJS;
  num? TMT;
  num? TND;
  num? TOP;
  num? TRY;
  num? TTD;
  num? TVD;
  num? TWD;
  num? TZS;
  num? UAH;
  num? UGX;
  num? UYU;
  num? UZS;
  num? VES;
  num? VND;
  num? VUV;
  num? WST;
  num? XAF;
  num? XCD;
  num? XDR;
  num? XOF;
  num? XPF;
  num? YER;
  num? ZAR;
  num? ZMW;
  num? ZWL;

  ConversionRateDto({
    this.USD,
    this.AED,
    this.AFN,
    this.ALL,
    this.AMD,
    this.ANG,
    this.AOA,
    this.ARS,
    this.AUD,
    this.AWG,
    this.AZN,
    this.BAM,
    this.BBD,
    this.BDT,
    this.BGN,
    this.BHD,
    this.BIF,
    this.BMD,
    this.BND,
    this.BOB,
    this.BRL,
    this.BSD,
    this.BTN,
    this.BWP,
    this.BYN,
    this.BZD,
    this.CAD,
    this.CDF,
    this.CHF,
    this.CLP,
    this.CNY,
    this.COP,
    this.CRC,
    this.CUP,
    this.CVE,
    this.CZK,
    this.DJF,
    this.DKK,
    this.DOP,
    this.DZD,
    this.EGP,
    this.ERN,
    this.ETB,
    this.EUR,
    this.FJD,
    this.FKP,
    this.FOK,
    this.GBP,
    this.GEL,
    this.GGP,
    this.GHS,
    this.GIP,
    this.GMD,
    this.GNF,
    this.GTQ,
    this.GYD,
    this.HKD,
    this.HNL,
    this.HRK,
    this.HTG,
    this.HUF,
    this.IDR,
    this.ILS,
    this.IMP,
    this.INR,
    this.IQD,
    this.IRR,
    this.ISK,
    this.JEP,
    this.JMD,
    this.JOD,
    this.JPY,
    this.KES,
    this.KGS,
    this.KHR,
    this.KID,
    this.KMF,
    this.KRW,
    this.KWD,
    this.KYD,
    this.KZT,
    this.LAK,
    this.LBP,
    this.LKR,
    this.LRD,
    this.LSL,
    this.LYD,
    this.MAD,
    this.MDL,
    this.MGA,
    this.MKD,
    this.MMK,
    this.MNT,
    this.MOP,
    this.MRU,
    this.MUR,
    this.MVR,
    this.MWK,
    this.MXN,
    this.MYR,
    this.MZN,
    this.NAD,
    this.NGN,
    this.NIO,
    this.NOK,
    this.NPR,
    this.NZD,
    this.OMR,
    this.PAB,
    this.PEN,
    this.PGK,
    this.PHP,
    this.PKR,
    this.PLN,
    this.PYG,
    this.QAR,
    this.RON,
    this.RSD,
    this.RUB,
    this.RWF,
    this.SAR,
    this.SBD,
    this.SCR,
    this.SDG,
    this.SEK,
    this.SGD,
    this.SHP,
    this.SLE,
    this.SLL,
    this.SOS,
    this.SRD,
    this.SSP,
    this.STN,
    this.SYP,
    this.SZL,
    this.THB,
    this.TJS,
    this.TMT,
    this.TND,
    this.TOP,
    this.TRY,
    this.TTD,
    this.TVD,
    this.TWD,
    this.TZS,
    this.UAH,
    this.UGX,
    this.UYU,
    this.UZS,
    this.VES,
    this.VND,
    this.VUV,
    this.WST,
    this.XAF,
    this.XCD,
    this.XDR,
    this.XOF,
    this.XPF,
    this.YER,
    this.ZAR,
    this.ZMW,
    this.ZWL,
  });

  ConversionRateDto.fromJson(dynamic json) {
    USD = json['USD'];
    AED = json['AED'];
    AFN = json['AFN'];
    ALL = json['ALL'];
    AMD = json['AMD'];
    ANG = json['ANG'];
    AOA = json['AOA'];
    ARS = json['ARS'];
    AUD = json['AUD'];
    AWG = json['AWG'];
    AZN = json['AZN'];
    BAM = json['BAM'];
    BBD = json['BBD'];
    BDT = json['BDT'];
    BGN = json['BGN'];
    BHD = json['BHD'];
    BIF = json['BIF'];
    BMD = json['BMD'];
    BND = json['BND'];
    BOB = json['BOB'];
    BRL = json['BRL'];
    BSD = json['BSD'];
    BTN = json['BTN'];
    BWP = json['BWP'];
    BYN = json['BYN'];
    BZD = json['BZD'];
    CAD = json['CAD'];
    CDF = json['CDF'];
    CHF = json['CHF'];
    CLP = json['CLP'];
    CNY = json['CNY'];
    COP = json['COP'];
    CRC = json['CRC'];
    CUP = json['CUP'];
    CVE = json['CVE'];
    CZK = json['CZK'];
    DJF = json['DJF'];
    DKK = json['DKK'];
    DOP = json['DOP'];
    DZD = json['DZD'];
    EGP = json['EGP'];
    ERN = json['ERN'];
    ETB = json['ETB'];
    EUR = json['EUR'];
    FJD = json['FJD'];
    FKP = json['FKP'];
    FOK = json['FOK'];
    GBP = json['GBP'];
    GEL = json['GEL'];
    GGP = json['GGP'];
    GHS = json['GHS'];
    GIP = json['GIP'];
    GMD = json['GMD'];
    GNF = json['GNF'];
    GTQ = json['GTQ'];
    GYD = json['GYD'];
    HKD = json['HKD'];
    HNL = json['HNL'];
    HRK = json['HRK'];
    HTG = json['HTG'];
    HUF = json['HUF'];
    IDR = json['IDR'];
    ILS = json['ILS'];
    IMP = json['IMP'];
    INR = json['INR'];
    IQD = json['IQD'];
    IRR = json['IRR'];
    ISK = json['ISK'];
    JEP = json['JEP'];
    JMD = json['JMD'];
    JOD = json['JOD'];
    JPY = json['JPY'];
    KES = json['KES'];
    KGS = json['KGS'];
    KHR = json['KHR'];
    KID = json['KID'];
    KMF = json['KMF'];
    KRW = json['KRW'];
    KWD = json['KWD'];
    KYD = json['KYD'];
    KZT = json['KZT'];
    LAK = json['LAK'];
    LBP = json['LBP'];
    LKR = json['LKR'];
    LRD = json['LRD'];
    LSL = json['LSL'];
    LYD = json['LYD'];
    MAD = json['MAD'];
    MDL = json['MDL'];
    MGA = json['MGA'];
    MKD = json['MKD'];
    MMK = json['MMK'];
    MNT = json['MNT'];
    MOP = json['MOP'];
    MRU = json['MRU'];
    MUR = json['MUR'];
    MVR = json['MVR'];
    MWK = json['MWK'];
    MXN = json['MXN'];
    MYR = json['MYR'];
    MZN = json['MZN'];
    NAD = json['NAD'];
    NGN = json['NGN'];
    NIO = json['NIO'];
    NOK = json['NOK'];
    NPR = json['NPR'];
    NZD = json['NZD'];
    OMR = json['OMR'];
    PAB = json['PAB'];
    PEN = json['PEN'];
    PGK = json['PGK'];
    PHP = json['PHP'];
    PKR = json['PKR'];
    PLN = json['PLN'];
    PYG = json['PYG'];
    QAR = json['QAR'];
    RON = json['RON'];
    RSD = json['RSD'];
    RUB = json['RUB'];
    RWF = json['RWF'];
    SAR = json['SAR'];
    SBD = json['SBD'];
    SCR = json['SCR'];
    SDG = json['SDG'];
    SEK = json['SEK'];
    SGD = json['SGD'];
    SHP = json['SHP'];
    SLE = json['SLE'];
    SLL = json['SLL'];
    SOS = json['SOS'];
    SRD = json['SRD'];
    SSP = json['SSP'];
    STN = json['STN'];
    SYP = json['SYP'];
    SZL = json['SZL'];
    THB = json['THB'];
    TJS = json['TJS'];
    TMT = json['TMT'];
    TND = json['TND'];
    TOP = json['TOP'];
    TRY = json['TRY'];
    TTD = json['TTD'];
    TVD = json['TVD'];
    TWD = json['TWD'];
    TZS = json['TZS'];
    UAH = json['UAH'];
    UGX = json['UGX'];
    UYU = json['UYU'];
    UZS = json['UZS'];
    VES = json['VES'];
    VND = json['VND'];
    VUV = json['VUV'];
    WST = json['WST'];
    XAF = json['XAF'];
    XCD = json['XCD'];
    XDR = json['XDR'];
    XOF = json['XOF'];
    XPF = json['XPF'];
    YER = json['YER'];
    ZAR = json['ZAR'];
    ZMW = json['ZMW'];
    ZWL = json['ZWL'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['USD'] = USD;
    map['AED'] = AED;
    map['AFN'] = AFN;
    map['ALL'] = ALL;
    map['AMD'] = AMD;
    map['ANG'] = ANG;
    map['AOA'] = AOA;
    map['ARS'] = ARS;
    map['AUD'] = AUD;
    map['AWG'] = AWG;
    map['AZN'] = AZN;
    map['BAM'] = BAM;
    map['BBD'] = BBD;
    map['BDT'] = BDT;
    map['BGN'] = BGN;
    map['BHD'] = BHD;
    map['BIF'] = BIF;
    map['BMD'] = BMD;
    map['BND'] = BND;
    map['BOB'] = BOB;
    map['BRL'] = BRL;
    map['BSD'] = BSD;
    map['BTN'] = BTN;
    map['BWP'] = BWP;
    map['BYN'] = BYN;
    map['BZD'] = BZD;
    map['CAD'] = CAD;
    map['CDF'] = CDF;
    map['CHF'] = CHF;
    map['CLP'] = CLP;
    map['CNY'] = CNY;
    map['COP'] = COP;
    map['CRC'] = CRC;
    map['CUP'] = CUP;
    map['CVE'] = CVE;
    map['CZK'] = CZK;
    map['DJF'] = DJF;
    map['DKK'] = DKK;
    map['DOP'] = DOP;
    map['DZD'] = DZD;
    map['EGP'] = EGP;
    map['ERN'] = ERN;
    map['ETB'] = ETB;
    map['EUR'] = EUR;
    map['FJD'] = FJD;
    map['FKP'] = FKP;
    map['FOK'] = FOK;
    map['GBP'] = GBP;
    map['GEL'] = GEL;
    map['GGP'] = GGP;
    map['GHS'] = GHS;
    map['GIP'] = GIP;
    map['GMD'] = GMD;
    map['GNF'] = GNF;
    map['GTQ'] = GTQ;
    map['GYD'] = GYD;
    map['HKD'] = HKD;
    map['HNL'] = HNL;
    map['HRK'] = HRK;
    map['HTG'] = HTG;
    map['HUF'] = HUF;
    map['IDR'] = IDR;
    map['ILS'] = ILS;
    map['IMP'] = IMP;
    map['INR'] = INR;
    map['IQD'] = IQD;
    map['IRR'] = IRR;
    map['ISK'] = ISK;
    map['JEP'] = JEP;
    map['JMD'] = JMD;
    map['JOD'] = JOD;
    map['JPY'] = JPY;
    map['KES'] = KES;
    map['KGS'] = KGS;
    map['KHR'] = KHR;
    map['KID'] = KID;
    map['KMF'] = KMF;
    map['KRW'] = KRW;
    map['KWD'] = KWD;
    map['KYD'] = KYD;
    map['KZT'] = KZT;
    map['LAK'] = LAK;
    map['LBP'] = LBP;
    map['LKR'] = LKR;
    map['LRD'] = LRD;
    map['LSL'] = LSL;
    map['LYD'] = LYD;
    map['MAD'] = MAD;
    map['MDL'] = MDL;
    map['MGA'] = MGA;
    map['MKD'] = MKD;
    map['MMK'] = MMK;
    map['MNT'] = MNT;
    map['MOP'] = MOP;
    map['MRU'] = MRU;
    map['MUR'] = MUR;
    map['MVR'] = MVR;
    map['MWK'] = MWK;
    map['MXN'] = MXN;
    map['MYR'] = MYR;
    map['MZN'] = MZN;
    map['NAD'] = NAD;
    map['NGN'] = NGN;
    map['NIO'] = NIO;
    map['NOK'] = NOK;
    map['NPR'] = NPR;
    map['NZD'] = NZD;
    map['OMR'] = OMR;
    map['PAB'] = PAB;
    map['PEN'] = PEN;
    map['PGK'] = PGK;
    map['PHP'] = PHP;
    map['PKR'] = PKR;
    map['PLN'] = PLN;
    map['PYG'] = PYG;
    map['QAR'] = QAR;
    map['RON'] = RON;
    map['RSD'] = RSD;
    map['RUB'] = RUB;
    map['RWF'] = RWF;
    map['SAR'] = SAR;
    map['SBD'] = SBD;
    map['SCR'] = SCR;
    map['SDG'] = SDG;
    map['SEK'] = SEK;
    map['SGD'] = SGD;
    map['SHP'] = SHP;
    map['SLE'] = SLE;
    map['SLL'] = SLL;
    map['SOS'] = SOS;
    map['SRD'] = SRD;
    map['SSP'] = SSP;
    map['STN'] = STN;
    map['SYP'] = SYP;
    map['SZL'] = SZL;
    map['THB'] = THB;
    map['TJS'] = TJS;
    map['TMT'] = TMT;
    map['TND'] = TND;
    map['TOP'] = TOP;
    map['TRY'] = TRY;
    map['TTD'] = TTD;
    map['TVD'] = TVD;
    map['TWD'] = TWD;
    map['TZS'] = TZS;
    map['UAH'] = UAH;
    map['UGX'] = UGX;
    map['UYU'] = UYU;
    map['UZS'] = UZS;
    map['VES'] = VES;
    map['VND'] = VND;
    map['VUV'] = VUV;
    map['WST'] = WST;
    map['XAF'] = XAF;
    map['XCD'] = XCD;
    map['XDR'] = XDR;
    map['XOF'] = XOF;
    map['XPF'] = XPF;
    map['YER'] = YER;
    map['ZAR'] = ZAR;
    map['ZMW'] = ZMW;
    map['ZWL'] = ZWL;
    return map;
  }
}
