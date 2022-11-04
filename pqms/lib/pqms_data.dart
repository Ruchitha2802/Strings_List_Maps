/*
Base Url: https://pqms-uat.cgg.gov.in/pqms/
endpoint : mobileLogin
type: POST
headders: clientId:Client123Cgg
parameters:null
body: {
    "mobileno":"9985074116",
    "password":"ghmc@cgg@2018",
    "userid":"cgg@ghmc"
}
autherization: null
 */

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pqms/ApiConstants/constants.dart';
import 'package:pqms/PqmsMobileLogin.dart';

class PqmsData extends StatefulWidget {
  const PqmsData({super.key});

  @override
  State<PqmsData> createState() => _PqmsDataState();
}

class _PqmsDataState extends State<PqmsData> {
  //creating a variable for grievance model class GrievanceData
  PqmsMobileLogin? _pqmsMobileLogin;
  UserData? _userdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("userName:  ${_userdata?.userName ?? ""}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("rolename:  ${_userdata?.rolename ?? ""}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("clientId:  ${_userdata?.clientId ?? ""}"),
          ),
        ],
      ),
      
    );
  }

  @override
  void initState() {
    super.initState();
    loginDetails();
  }

  loginDetails() async {
    //creating request url with base url and endpoint
    final requesturl = ApiConstants.baseurl + ApiConstants.endpoint;

    //creating payload because request type is POST
    var requestPayload = {
      "mobileno": "9985074116",
      "password": "ghmc@cgg@2018",
      "userid": "cgg@ghmc"
    };

    //no headers and authorization

    //creating dio object in order to connect package to server
    final dioObject = Dio();

    try {
      final response = await dioObject.post(
        requesturl,
        data: requestPayload,
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          "clientId": "Client123Cgg",
        }),
      );

      //converting response from String to json
      final data = PqmsMobileLogin.fromJson(response.data);
      setState(() {
        _pqmsMobileLogin = data;
        // print("${_grievanceData!.viewGrievances!.length}");
        // print("lavanya ${_grie/vanceData.viewGrievances}");
      });
    } on DioError catch (e) {
      if (e.response?.statusCode == 400 || e.response?.statusCode == 500) {
        //final errorMessage = e.response?.data["message"];
        // showAlert(errorMessage);
      }
      print("error is $e");

      //print("status code is ${e.response?.statusCode}");
    }
// step 5: print the response
  }
}
