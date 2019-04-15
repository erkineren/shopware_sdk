
[![pub package](https://img.shields.io/pub/v/shopware_sdk.svg)](https://pub.dartlang.org/packages/shopware_sdk)
[![Build Status](https://travis-ci.org/erkineren/shopware_sdk.svg?branch=master)](https://travis-ci.org/erkineren/shopware_sdk)

# shopware_sdk

Future-based Dart SDK for the Shopware 5 REST API.

## Usage

```dart
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
   
     // if api response successfully returned
     if (apiResponse.success) {
   
       var category = apiResponse.entity;
   
       print("${category.id} - ${category.name}");
   
       // you can direct access to json response returned from shopware api
       print(apiResponse.jsonResponse);
   
     } else {
       // print error message
       print(apiResponse.message);
       print(apiResponse.baseResponse.statusCode);
     }
   }
```


