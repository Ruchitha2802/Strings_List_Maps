import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NearMeList extends StatelessWidget {
  const NearMeList({super.key, required details});
  final ROWORDER? details;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [Text("ROWORDER:${details?.ROWORDER ?? 0}")],
      ),
    );
  }
}
