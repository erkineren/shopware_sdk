import 'package:shopware_sdk/shopware_sdk.dart';
import 'package:shopware_sdk/src/entities/api_response_model.dart';
import 'package:shopware_sdk/src/entities/category.dart';
import 'package:shopware_sdk/src/services/resources/base_resource.dart';

import 'example-constants.dart';

main() async {
  var client = ShopwareClient(
      baseUrl: BASE_URL, username: USERNAME, apiToken: API_TOKEN);

  var resource = new CategoriesResource(client);

  ApiResponse<Category> apiRes = await resource.findOne(39);

  if (apiRes.success) {
    print(apiRes.entity);
  } else {
    print(apiRes.message);
    print(apiRes.baseResponse.statusCode);
  }
}
