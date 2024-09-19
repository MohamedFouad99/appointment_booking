import 'package:appointment_booking/core/di/dependency_injection.dart';
import 'package:appointment_booking/core/routing/routes.dart';
import 'package:appointment_booking/features/home/ui/home_screen.dart';
import 'package:appointment_booking/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment_booking/features/login/ui/login_screen.dart';
import 'package:appointment_booking/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      // case Routes.signUpScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<SignupCubit>(),
      //       child: const SignupScreen(),
      //     ),
      //   );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          //  BlocProvider(
          //   create: (context) => HomeCubit(getIt())..getSpecializations(),
          //   child: const HomeScreen(),
          // ),
        );
      default:
        return null;
    }
  }
}
