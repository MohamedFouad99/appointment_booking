import 'package:appointment_booking/core/di/dependency_injection.dart';
import 'package:appointment_booking/core/routing/app_router.dart';
import 'package:appointment_booking/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocAPP(
    appRouter: AppRouter(),
  ));
}
