import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_online_shop/backend/config.dart';
import 'package:flutter_online_shop/models/customerModel.dart';
import 'package:flutter_online_shop/models/login_model.dart';

class APIService {
  Future<bool> creatCustomer(CustomerModel customerModel) async {
    var authToken = base64.encode(
      utf8.encode(Config.key + ":" + Config.secretKey),
    );
    bool ret = false;
    try {
      var response = await Dio().post(Config.url + Config.customerUrl,
          data: customerModel.toJson(),
          options: new Options(headers: {
            HttpHeaders.authorizationHeader: 'Basic $authToken',
            HttpHeaders.contentTypeHeader: "application/json"
          }));
      if (response.statusCode == 201) {
        ret = true;
      }
    } on DioError catch (error) {
      if (error.response.statusCode == 404) {
        ret = false;
      } else {
        ret = false;
      }
    }
    return ret;
  }

  Future<LoginResponseModel> loginCustomer(
      String email, String password) async {
    LoginResponseModel model;
    try {
      var response = await Dio().post(
        Config.tokenURL,
        data: {
          "email": email,
          "password": password,
        },
        options: new Options(headers: {
          HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded",
        }),
      );
      if (response.statusCode == 200) {
        model = LoginResponseModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      print(e.message);
    }
    return model;
  }
}
