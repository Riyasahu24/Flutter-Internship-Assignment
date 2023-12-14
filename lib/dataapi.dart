import 'dart:convert';
import 'package:assignment/datamodel.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

Future<EmployeeDataModel> dataApi() async {
  final response = await http
      .get(Uri.parse("https://dummy.restapiexample.com/api/v1/employees"));
  var data = jsonDecode(response.body);
  return EmployeeDataModel.fromJson(data);
}
