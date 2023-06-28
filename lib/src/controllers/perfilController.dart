import 'package:arearestrita/helpers/db.dart';
import 'package:arearestrita/src/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PerfilController extends GetxController {
  var objetoUsuarioPrincipal = {};
  var users = [];
  Future getUserList() async {
    var url = 'https://dummyapi.io/data/v1/user?limit=4';
    var headers = {'app-id': '649a177f9e572103f90774d9'};

    var res = await http.get(Uri.parse(url), headers: headers);

    Map<String, dynamic> json = jsonDecode(res.body);
    List<dynamic> userList = json['data'];

    if (userList.isNotEmpty) {
      users = userList;
      getPrincipalUser(userList);
    }
  }

  getPrincipalUser(userList) {
    objetoUsuarioPrincipal = userList[0];
  }
}
