import 'package:doc_appointment/cors/Routing/app_router.dart';
import 'package:doc_appointment/cors/Routing/routes.dart';
import 'package:doc_appointment/cors/Themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        title: 'First Method',
        theme: ThemeData(
          primaryColor: ColorsManager.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute:
            appRouter.generateRoute, // Assigning the appRouter here
      ),
    );
  }
}
