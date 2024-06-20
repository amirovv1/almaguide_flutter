// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      id: json['id'] as int,
      currency: json['currency'] as String,
      rate: json['rate'] as String,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'rate': instance.rate,
    };
