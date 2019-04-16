//import 'dart:mirrors';

import 'package:http/http.dart';

class BaseEntity {}

/// Wrapped Response Entity
class ApiResponse<T extends BaseEntity> {
  T entity;
  List<T> entities;
  int total;
  bool success;
  String message;

  Map<String, dynamic> jsonResponse;
  BaseResponse baseResponse;

  /// inner data entity fromJson method pass from resource
  BaseEntity Function(Object) fromJson;

  /// Constructor
  ApiResponse(
      {this.entity,
      this.entities,
      this.total,
      this.success,
      this.message,
      this.jsonResponse,
      this.fromJson});

  /// Factory Constructor from Json
  factory ApiResponse.fromJson(
      Map<String, dynamic> json, BaseEntity fromJson(Object o)) {
    if (json == null) return null;

    /// Check json data value is whether JSON Object or JSON Array ?
    var data = new List<dynamic>();

    /// if json array
    if (json["data"] is List<dynamic>) {
      data = json["data"] as List<dynamic>;
    } else {
      /// if json object then add directly to the list
      data.add(json["data"]);
    }

    var entities = List<T>.from(data.map((x) => fromJson(x)));

//    try {
//      ClassMirror mirror = reflectClass(T);
//      entities = data.map((a) {
//        return mirror.newInstance(const Symbol('fromJson'), [a]).reflectee as T;
//      }).toList();
//    } catch (e) {}

    /// Return ApiResponse object
    return new ApiResponse(
      entities: entities,
      entity: entities.isNotEmpty ? entities[0] : null,
      total: json["total"],
      success: json["success"],
      message: json["message"],
      jsonResponse: json,
      fromJson: fromJson,
    );
  }

  Map<String, dynamic> toJson() => {
        "data": entities,
        "total": total,
        "success": success,
        "message": message,
      };

  @override
  String toString() {
    return 'ApiResponse{jsonResponse: $jsonResponse}';
  }

//  List<T> createEntitiesFromJson<T>(List<dynamic> data) {
//    ClassMirror mirror = reflectClass(T);
//    return data.map((entity) {
//      return mirror.newInstance(const Symbol('fromJson'), [entity]).reflectee as T;
//    }).toList();
//  }
//
//  T createEntityFromJson<T>(Map<String, dynamic> data) {
//    ClassMirror mirror = reflectClass(T);
//    return mirror.newInstance(const Symbol('fromJson'), [data]).reflectee as T;
//  }

}
