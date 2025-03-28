import 'package:bmi_calculator/BMI_screen2.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'constant/app_router.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const BMI(),
    ),
  );
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
        );
  }
}
