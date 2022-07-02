import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:easy_nutrition/signup_model.dart';
import 'package:http/http.dart' as http;

Future<http.Response?> register(SignUpBody data) async {
  http.Response? response;
  try {
    response =
    await http.post(
        Uri.parse("https://easyn.azurewebsites.net/api/users"),

        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}