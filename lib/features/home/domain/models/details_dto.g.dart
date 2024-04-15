// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsDtoImpl _$$DetailsDtoImplFromJson(Map<String, dynamic> json) =>
    _$DetailsDtoImpl(
      name: json['name'] as String,
      valueType: $enumDecode(_$ValueTypeEnumMap, json['value_type']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$DetailsDtoImplToJson(_$DetailsDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value_type': _$ValueTypeEnumMap[instance.valueType]!,
      'value': instance.value,
    };

const _$ValueTypeEnumMap = {
  ValueType.text: 'text',
  ValueType.link: 'link',
  ValueType.phone: 'phone',
};
