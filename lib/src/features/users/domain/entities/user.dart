import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  final int? id;
  final String? email;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  final String? avatar;

  const User({
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
}
