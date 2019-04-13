import 'dart:mirrors';

import 'package:http/http.dart';

abstract class Entity {
  Entity();

  factory Entity.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson();
}

class ApiResponse<T> {
  T entity;
  List<T> entities;
  int total;
  bool success;
  String message;

  Map<String, dynamic> jsonResponse;
  BaseResponse baseResponse;

  ApiResponse({this.entity, this.entities, this.total, this.success, this.message, this.jsonResponse});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;
    /**
     *
     * Check json data value is whether JSON Object or JSON Array ?
     *
     */
    var data = new List<dynamic>();
    // if json array
    if (json["data"] is List<dynamic>) {
      data = json["data"] as List<dynamic>;
    } else {
      // if json object then add directly to the list
      data.add(json["data"]);
    }

    /**
     *
     * Create all entities from json
     *
     */
    var entities = List<T>();

    try {
      ClassMirror mirror = reflectClass(T);
      entities = data.map((a) {
        return mirror.newInstance(const Symbol('fromJson'), [a]).reflectee as T;
      }).toList();
    } catch (e) {}

    /**
     *
     * Return ApiResponse object
     *
     */
    return new ApiResponse(
        entities: entities,
        entity: entities.length > 0 ? entities[0] : null,
        total: json["total"],
        success: json["success"],
        message: json["message"],
        jsonResponse: json);
  }

  Map<String, dynamic> toJson() => {
        "data": entities,
        "total": total,
        "success": success,
        "message": message,
      };

  List<T> createEntitiesFromJson<T>(List<dynamic> data) {
    ClassMirror mirror = reflectClass(T);
    return data.map((entity) {
      return mirror.newInstance(const Symbol('fromJson'), [entity]).reflectee as T;
    }).toList();
  }

  T createEntityFromJson<T>(Map<String, dynamic> data) {
    ClassMirror mirror = reflectClass(T);
    return mirror.newInstance(const Symbol('fromJson'), [data]).reflectee as T;
  }

  @override
  String toString() {
    return 'ApiResponse{data: $entities, total: $total, success: $success, message: $message}';
  }
}
