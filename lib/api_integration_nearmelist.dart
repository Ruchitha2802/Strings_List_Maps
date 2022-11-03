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

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_api_listviewmodel/Nearme_Model.dart';
import 'package:flutter_application_api_listviewmodel/Nearme_Model.dart';
import 'package:flutter_application_api_listviewmodel/nearMe_list.dart';

import 'Nearme_Model.dart';

class NearMelist extends StatefulWidget {
  const NearMelist({super.key});

  @override
  State<NearMelist> createState() => _NearMelistState();
}

class _NearMelistState extends State<NearMelist> {
   late  NearMeDetails? _nearMeDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nearme List"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: ,
          itemBuilder: (context, index) {
          final nearMeData = _nearMeDetails?.ROW?[index];
          return NearMeList(details: nearMeData);
        },


        ),
      ),
    );
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchNearmeDetails();
  }
  
   fetchNearmeDetails() async{
    //Step 1:Create request URl
    final requestUrl = "https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/NearMeList"
    
    //Step 2:Create Payload
    final requestPayload ={
    "userid":"cgg@ghmc",
    "password":"ghmc@cgg@2018", 
    };
    //Create headers and Autherazation

    //dio or http package  to connect to server 

    final _dioObject=Dio();
    try{
      final _response =await _dioObject.post(requestUrl,data: requestPayload);
      //convet this response from json to modelclass
      final nearMeDetailsModel = NearMeDetails.fromJson(_response.data);
      setState(() {
        this._nearMeModel = nearMeDetailsModel;
      });
      print(_response);
    }
    
   }
}


