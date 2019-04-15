import 'package:shopware_sdk/shopware_sdk.dart';

import 'example-constants.dart';

main() async {
  // Create a new client
  var client = ShopwareClient(
      baseUrl: BASE_URL,
      username: USERNAME,
      apiToken: API_TOKEN
  );

  var categoryResource = new CategoriesResource(client);

  // Get category with id 39
  ApiResponse<Category> apiResponse = await categoryResource.findOne(39);

  if (apiResponse.success) {
    // if api response successfully returned

    var category = apiResponse.entity;

    print("${category.id} - ${category.name}");

    // print category entity
    print(category);

    // print returned api response
    print(apiResponse.jsonResponse);
  } else {
    // print error message

    print(apiResponse.message);
    print(apiResponse.baseResponse.statusCode);
  }
}
