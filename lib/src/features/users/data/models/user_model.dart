import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_test_flutter/src/features/users/domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel extends Equatable {
  final int? id;
  final String? email;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? avatar;

  const UserModel({
    this.id,
    this.email,
    this.avatar,
    this.firstName,
    this.lastName,
  });

  @override
  List<Object?> get props => [
        id,
        email,
        firstName,
        lastName,
        avatar,
      ];

  User toEntity() => User(
        id: id,
        email: email,
        firstName: firstName,
        lastName: lastName,
        avatar: avatar,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
