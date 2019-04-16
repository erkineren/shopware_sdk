import 'package:shopware_sdk/shopware_sdk.dart';


const String BASE_URL = 'http://shopware.dev/api/';
const String USERNAME = 'user';
const String API_TOKEN = 'api_key';

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

  // or use it with then
//  categoryResource.findOne(39).then((apiResponse) {
//    if (apiResponse.success) {
//      print(apiResponse.entity);
//    } else {
//      print(apiResponse.message);
//    }
//  });

  // if api response successfully returned
  if (apiResponse.success) {

    var category = apiResponse.entity;

    print("${category.id} - ${category.name}");

    // you can direct access to json response returned from shopware api
//    print(apiResponse.jsonResponse);

  } else {
    // print error message
    print(apiResponse.message);
    print(apiResponse.baseResponse.statusCode);
  }
}
