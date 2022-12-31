import 'package:json_annotation/json_annotation.dart';
part 'users_model.g.dart';

@JsonSerializable()
class UsersModel {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? birthDate;
  String? image;
  int? height;
  double? weight;

  UsersModel({
    this.id,
    this.firstName,
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    this.birthDate,
    this.image,
    this.height,
    this.weight,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);
  Map<String, dynamic> toJson() => _$UsersModelToJson(this);
}
