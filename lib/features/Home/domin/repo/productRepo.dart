import 'package:dartz/dartz.dart';
import 'package:training_app/core/errors/failure.dart';
import '../entities/product_entity.dart';

abstract class Productrepo  {

  Future <Either <Failure , List<ProductEntity>>> getproduct() ;

}