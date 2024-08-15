import 'package:appointment_booking/core/routing/app_router.dart';
import 'package:appointment_booking/core/routing/routes.dart';
import 'package:appointment_booking/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocAPP extends StatelessWidget {
  final AppRouter appRouter;
  const DocAPP({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Appointment Booking',
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
