import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_dto.freezed.dart';
part 'exchange_dto.g.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    required int id,
    required String currency,
    required String rate,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);
}
