import 'dart:convert';
import 'package:training_app/core/service/shared_pref.dart';
import 'package:training_app/core/utils/backEndPoint.dart';
import 'package:training_app/features/auth/Data/Models/user_model.dart';
import 'package:training_app/features/auth/Domin/entities/user_entity.dart';

UserEntity getDatafromLocal() {
  var jsonString = SharedPref.getString(Backendpoint.getUserDatafromLocal);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString)).toEntity();
  return userEntity;
}
