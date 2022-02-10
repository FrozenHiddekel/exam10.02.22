import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Object>> allStats(int id)  async {
  http.Response response = await http.get(Uri.parse(
      'https://pokeapi.co/api/v2/pokemon/$id/'));
  Map<String, dynamic> data = jsonDecode(response.body);
  //print(data);

  List<Object> listout=[];
  listout.add(data['stats'][0]['base_stat']);
  listout.add(data['stats'][1]['base_stat']);
  listout.add(data['stats'][2]['base_stat']);
  listout.add(data['stats'][3]['base_stat']);
  listout.add(data['stats'][4]['base_stat']);
  listout.add(data['stats'][5]['base_stat']);
  print(listout);
  // listout += data['stats']['base_stat'][0] + data['stats']['base_stat'][1] + data['stats']['base_stat'][2];
  // listout += data['stats']['base_stat'][3]+ data['stats']['base_stat'][4]+data['stats']['base_stat'][5];
  //print(listout);

  return listout;
}



