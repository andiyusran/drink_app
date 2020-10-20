import 'package:drink_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String _link = 'http://jbskr.000webhostapp.com/drink_app/';
  final String _drink = 'minuman.php';

  Future<List<Drink>> getDrink() async {
    var map = Map<String, dynamic>();
    map['aksi'] = "get_minuman";
    final response = await http.post(_link + _drink, body: map);
    // final response = await http.get(_link);
    print("Mengambil data: ${response.body}");
    if (response.statusCode == 200) {
      return drinkFromJson(response.body);
    } else {
      return null;
    }
  }
}
