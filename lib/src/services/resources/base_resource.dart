import 'dart:convert';

import 'package:http/http.dart';

import '../../entities/api_response_model.dart';
import '../../entities/category.dart';

abstract class BaseResource<T> {
  BaseClient client;

  String _queryPath;

  String get queryPath => _queryPath;

  set queryPath(String queryPath) {
    _queryPath = queryPath;
  }

  BaseResource(this.client);

  /**
   * Finds all entities.
   */
  Future<ApiResponse<T>> findAll({Map<String, String> headers}) =>
      client.get(queryPath, headers: headers).then((response) {
        var apiResponse = ApiResponse<T>.fromJson(json.decode(response.body));
        apiResponse.baseResponse = response;
        return apiResponse;
      });

  /**
   * Finds entity by its id.
   *
   */
  Future<ApiResponse<T>> findOne(int id, {Map<String, String> headers}) =>
      client.get('$queryPath/$id', headers: headers).then((response) {
        var apiResponse = ApiResponse<T>.fromJson(json.decode(response.body));
        apiResponse.baseResponse = response;
        return apiResponse;
      });
}

class CategoriesResource extends BaseResource<Category> {
  String _queryPath = '/categories';

  CategoriesResource(BaseClient client) : super(client);
}
