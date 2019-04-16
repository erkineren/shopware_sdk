import 'package:http/http.dart';
import 'package:shopware_sdk/shopware_sdk.dart';

class CategoriesResource extends BaseResource<Category> {
  String queryPath = '/categories';

  CategoriesResource(BaseClient client) : super(client, (json) => Category.fromJson(json));
}
