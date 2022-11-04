import 'package:flutter/material.dart';
import 'package:pqms/pqms_data.dart';
import 'package:pqms/routes/app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.PqmsData: (context) => const PqmsData(),
     
    };
  }
}