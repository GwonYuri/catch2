import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';

import 'home.dart';

class CatchApp extends StatelessWidget {
  final List<CameraDescription> cameras;

  CatchApp(this.cameras);

  // @override
  // void dispose() {
  //   Hive.close();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home(cameras),
    );
    // return ScreenUtilInit(
    //   designSize: const Size(828, 1792),
    //   builder: () {
    //     return GetMaterialApp(
    //         // theme: AppTheme.regularTheme,
    //         title: 'Catch',
    //         debugShowCheckedModeBanner: false,
    //         home: home(cameras),
    //         // initialRoute: '/splash',
    //         routes: {
    //           // '/login': (context) => login(cameras),
    //           // '/splash': (context) => splash(cameras),
    //           // '/home2':(context)=>HomePage(cameras),
    //         }
    //
    //     );
    //   },
    // );
  }
}