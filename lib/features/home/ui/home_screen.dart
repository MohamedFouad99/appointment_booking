import 'package:appointment_booking/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const HomeTopBar(),
              // const DoctorsBlueContainer(),
              // verticalSpace(24),
              // const DoctorsSpecialitySeeAll(),
              // verticalSpace(18),
              // const SpecializationsBlocBuilder(),
              // verticalSpace(8),
              // const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
