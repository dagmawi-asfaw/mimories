import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mimories/models/location_model.dart';

part 'address_model.freezed.dart';

part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(name: 'street') required String street,
    @JsonKey(name: 'suite') required String suite,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'zipcode') required String zipcode,
    @JsonKey(name: 'geo') required LocationModel location,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, Object?> json) =>
      _$AddressModelFromJson(json);
}
