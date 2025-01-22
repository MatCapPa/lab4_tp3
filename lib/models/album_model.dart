import 'dart:convert';

import 'package:flutter_tp3/helpers/album.dart';

List<Album> albumFromJson(String str) {
  final jsonData = json.decode(str); // Decodifica el JSON a un Map
  final items = jsonData['data']['items'] as List; // Extrae la lista de 'items'
  return items.map((item) => Album.fromJson(item as Map<String, dynamic>)).toList();
}

//String AlbumToJson(List<Album> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));