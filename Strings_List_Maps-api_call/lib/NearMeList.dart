import 'package:flutter/material.dart';

import 'NearMeDetails.dart';


class NearMeList extends StatelessWidget {
  const NearMeList({super.key, required this.details });
  final CustomRow? details;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20)),
      
        child: Column(
         
          children: [
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("ROWORDER :",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${details?.rOWORDER ?? 0}"),
                )
                 
              ],
            ),),
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("GRIEVANCE ID :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${details?.gRIEVANCEID ?? 0}"),
                )
                 
              ],
            ),),
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Category :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${details?.cNAME ?? 0}"),
                )
                 
              ],
            ),),
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" "),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network("${details?.iURL}",
                  color: Colors.black,),
                )
                 
              ],
            ),),
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("ORDER :"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${details?.oRDER1 ?? 0}"),
                )
                 
              ],
            ),),
          ],
           
        ),
      ),
    );
  }
}
