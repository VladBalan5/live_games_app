import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;

const String apiUrl =
    'https://test-micros1.play-online.com/missions/tournaments/list?tenant_id=2';

Future getTournaments() async {
  print('Send request to: $apiUrl');
  var response = await http
      .get(
        Uri.parse('$apiUrl'),
      )
      .timeout(const Duration(
        milliseconds: 50000,
      ));
  print("RESPONSE STATUS: ${response.statusCode}");

  if (response.statusCode == 200) {
    var responseDecoded = jsonDecode(response.body)[0]["tournaments"];
    print("RESPONSE BODY: $responseDecoded");
    return responseDecoded;
  } else {
    throw Exception('error');
  }
}
