import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../repositories/product_repository.dart';
import '../entities/product_entity.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

@injectable
class UpdateProductUseCase implements UseCase<void, ProductParams> {
  final ProductRepository repository;

  UpdateProductUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(ProductParams params) async {
    return repository.updateProduct(params.entity);
  }
}

class ProductParams {
  final ProductEntity entity;

  ProductParams(this.entity);
}
