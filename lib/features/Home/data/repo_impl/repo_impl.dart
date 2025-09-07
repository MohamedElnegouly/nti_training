import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:training_app/core/errors/failure.dart';
import 'package:training_app/core/service/ApiService.dart';
import 'package:training_app/features/Home/data/models/porduct_model/porduct_model.dart';
import 'package:training_app/features/Home/domin/entities/product_entity.dart';
import 'package:training_app/features/Home/domin/repo/productRepo.dart';

class RepoImpl implements Productrepo {
final  Apiservice apiservice;
  RepoImpl(this.apiservice);

 
  @override
  Future<Either<Failure, List<ProductEntity>>> getproduct()async {
    try {// list هنا برجع كل المنتجات بس لازم اخليها ترجع ك
      var data = await apiservice.get(endPoint: 'products') as List<dynamic>;
      // .map list لوحده من ال product  عشان يجيبلى كل
      //as Map<String, dynamic>
      final  products = data.map((e) => PorductModel.fromJson(e)).toList();
      final productsEntity = products.map((e) => e.toEntity()).toList();
      return right(productsEntity);
    } catch (e) {
      log('Api ${e.toString()}');
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(message: "Something went wrong"));
     }
}

  }
}
