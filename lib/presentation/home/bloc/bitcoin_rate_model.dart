class BitcoinRateModel {
  final String updated;
  final String disclaimer;
  final String chartName;
  final Map<String, CurrencyInfo> bpi;

  BitcoinRateModel({
    required this.updated,
    required this.disclaimer,
    required this.chartName,
    required this.bpi,
  });

  factory BitcoinRateModel.fromJson(Map<String, dynamic> json) {
    return BitcoinRateModel(
      updated: json['time']['updated'],
      disclaimer: json['disclaimer'],
      chartName: json['chartName'],
      bpi: Map.from(json['bpi']).map(
        (key, value) => MapEntry(key, CurrencyInfo.fromJson(value)),
      ),
    );
  }
}

class CurrencyInfo {
  final String code;
  final String symbol;
  final String rate;
  final String description;
  final double rateFloat;

  CurrencyInfo({
    required this.code,
    required this.symbol,
    required this.rate,
    required this.description,
    required this.rateFloat,
  });

  factory CurrencyInfo.fromJson(Map<String, dynamic> json) {
    return CurrencyInfo(
      code: json['code'],
      symbol: json['symbol'],
      rate: json['rate'],
      description: json['description'],
      rateFloat: json['rate_float'].toDouble(),
    );
  }
}
