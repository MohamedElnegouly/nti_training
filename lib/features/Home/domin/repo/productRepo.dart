import 'package:dartz/dartz.dart';
import 'package:training_app/core/errors/failure.dart';
import 'package:training_app/features/Home/domin/entities/product_entity.dart';

abstract class Productrepo  {

  Future <Either <Failure , List<ProductEntity>>> getproduct() ;

}