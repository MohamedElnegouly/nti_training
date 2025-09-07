import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:training_app/core/service/ApiService.dart';
import 'package:training_app/core/service/dataBaseService.dart';
import 'package:training_app/core/service/fireStoreService.dart';
import 'package:training_app/core/service/firebase_auth.dart';
import 'package:training_app/features/Home/data/repo_impl/repo_impl.dart';
import 'package:training_app/features/Home/domin/repo/productRepo.dart';
import 'package:training_app/features/auth/Data/Models/repo/auth_repo_implements.dart';
import 'package:training_app/features/auth/Domin/repo/auth_repo.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<Databaseservice>(Firestoreservice());
   getIt.registerSingleton<Apiservice>(Apiservice(Dio()));

  getIt.registerSingleton<Productrepo>(RepoImpl(
      apiservice: getIt<Apiservice>()));

  getIt.registerSingleton<AuthRepo>(AuthRepoImplements(
     getIt<FirebaseAuthService>() , getIt<Databaseservice>(),
  ));

}