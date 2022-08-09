import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:httpsample/result_resp/result_resp.dart';

Future<ResultResp> getresult({required String number}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final _bodyAsJson =   jsonDecode(_response.body)as Map<String,dynamic>;
  final _data = ResultResp.fromJson(_bodyAsJson);
  return _data;
}
