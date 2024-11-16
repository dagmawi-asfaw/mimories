// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      email: json['email'] as String?,
      zipcode: json['zipcode'] as String,
      location: LocationModel.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'email': instance.email,
      'zipcode': instance.zipcode,
      'geo': instance.location,
    };
