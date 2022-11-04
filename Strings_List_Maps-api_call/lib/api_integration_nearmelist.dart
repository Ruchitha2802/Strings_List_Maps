/*
Base Url:https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/
endpoint : NearMeList
type: POST
headders:null
parameters:null
body: {
    "userid":"cgg@ghmc",
    "password":"ghmc@cgg@2018"
}
autherization: null
 */

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_api_listviewmodel/NearMeDetails.dart';
import 'package:flutter_application_api_listviewmodel/NearMeList.dart';


class NearMelist extends StatefulWidget {
  const NearMelist({super.key});

  @override
  State<NearMelist> createState() => _NearMelistState();
}

class _NearMelistState extends State<NearMelist> {
    NearMeDetails? _nearMeDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nearme List"),
      ),
      body: Container(
        color: Colors.grey,
        child: ListView.builder(
          itemCount: _nearMeDetails?.rOW?.length ?? 0,
          itemBuilder: (context, index) {
          final nearMeData = _nearMeDetails?.rOW?[index];
          return NearMeList(details: nearMeData);
        },


        ),
      ),
    );
  }
@override
  void initState() {
    super.initState();
    fetchNearmeDetails();
  }
  
   fetchNearmeDetails() async{
    //Step 1:Create request URl
    const requestUrl = "https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/NearMeList";
    
    //Step 2:Create Payload
    var requestPayload = {
    "userid":"cgg@ghmc",
    "password":"ghmc@cgg@2018", 
    };
    //Create headers and Autherazation

    //dio or http package  to connect to server 

    final dioObject=Dio();
    try{
      final response = await dioObject.post(requestUrl,
      data: requestPayload,
      // options: Options(
      //   headers: {
      //     HttpHeaders.contentTypeHeader:"application/json"
      //   }
      // )
      );
      //convet this response from json to modelclass
      final nearMeDetailsModel = NearMeDetails.fromJson(response.data,
      );
      setState(() {
        _nearMeDetails = nearMeDetailsModel;
      });
     // print(_response);
    }
    on DioError catch(e){
      if(e.response?.statusCode==400||e.response?.statusCode==500)
      {

      }
      print("error is $e");

    }
    
   }
}


