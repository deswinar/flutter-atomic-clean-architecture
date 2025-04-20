import 'package:injectable/injectable.dart';
import '../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> fetchProducts();
  Future<ProductModel> fetchProductDetail(String id);
  Future<void> createProduct(ProductModel model);
  Future<void> updateProduct(ProductModel model);
  Future<void> deleteProduct(String id);
}

@LazySingleton(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  @override
  Future<List<ProductModel>> fetchProducts() async {
    // TODO: Implement actual API call
    return [];
  }
  @override
  Future<ProductModel> fetchProductDetail(String id) async {
    // TODO: Implement actual API call
    return ProductModel(id: 'defaultId', name: 'defaultName'); // Replace with real response
  }
  @override
  Future<void> createProduct(ProductModel model) async {
    // TODO: Implement actual API call
  }
  @override
  Future<void> updateProduct(ProductModel model) async {
    // TODO: Implement actual API call
  }
  @override
  Future<void> deleteProduct(String id) async {
    // TODO: Implement actual API call
  }
}
