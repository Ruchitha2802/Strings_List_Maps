import 'package:flutter/material.dart';
import 'package:pqms/PqmsMobileLogin.dart';

class Pqms_CardView extends StatelessWidget {
  const Pqms_CardView({super.key, required this.details});
  final  UserData? details;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("userName:  ${details?.userName ?? ""}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("rolename:  ${details?.rolename ?? ""}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("clientId:  ${details?.clientId ?? ""}"),
          ),
        ],
      ),
    );
  }
}
