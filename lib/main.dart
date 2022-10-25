import 'package:flutter/material.dart';
import 'list_-builderItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final Statelist = [
      "Afghanistan",
      "Albania",
      "Algeria",
      "Andorra",
      "Angola",
      "Antigua",
      "Argentina",
      "Armenia",
      "Australia",
      "Austria",
      "Austrian",
      "Baden",
      "Bahamas",
      "Bahrain",
      "Bangladesh",
      "Barbados",
      "Bavaria",
      "Belarus",
      "Belgium",
      "Belize",
      "Benin",
      "Bosnia",
      "Bolivia",
      "Botswana",
      "Brunei",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.builder(
          itemCount: Statelist.length,
          itemBuilder: ((context, index) {
            final state = Statelist[index];
            return Container(
              child: Text(' $state'),
            );
          }),
        ),
      ),
    );
  }
}
