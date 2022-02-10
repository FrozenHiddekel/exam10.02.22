import 'dart:convert';
import 'package:first_app/pockemon.dart';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;



Future<List> getAllPack()  async {
http.Response response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=1&limit=1118'));
Map<String, dynamic>  data = jsonDecode(response.body);

List<pockemon> sus = [];
List sas = data['results'];

sas.map((e) => pockemon.fromJson(e)).toList().forEach((element) {sus.add(element);});

print(sus);
return sus;
}
