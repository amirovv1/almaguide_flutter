// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      fullName: json['full_name'] as String?,
      phone: json['phone_number'] as String?,
      email: json['email'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'phone_number': instance.phone,
      'email': instance.email,
      'photo': instance.photo,
    };
