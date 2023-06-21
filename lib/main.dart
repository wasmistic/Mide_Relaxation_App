import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mide_store/pages/home/home_page.dart';

import 'Welcome.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
            statusBarColor: Colors.transparent
        )
    );
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder:(context, child){
          return GetMaterialApp(
            title: 'Flutter Chat UI',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(),
            initialRoute: '/',
            getPages: [
              GetPage(name: '/', page:()=>Welcomepage()),
              GetPage(name: '/home', page:()=>HomePage()),
              // GetPage(name: '/details', page:()=>DetailsPage())
            ],
          );
        });
  }
}


