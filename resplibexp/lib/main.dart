import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resplibexp/respScreensTest/screen4.dart';
import 'package:resplibexp/respScreensTest/screen5.dart';
import 'package:responsive_framework/responsive_framework.dart';
void main() {



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) {
        return  ResponsiveWrapper.builder(ClampingScrollWrapper.builder(context, widget!) ,
        defaultScale: true,
          maxWidth: 1280,
          minWidth: 280,
          breakpoints: [
          ResponsiveBreakpoint.resize(350,name: MOBILE),
          ResponsiveBreakpoint.resize(280,name: MOBILE),
          ResponsiveBreakpoint.autoScale(600,name : TABLET),
          ResponsiveBreakpoint.resize(800,name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700,name:'XL')
        ],
        );

        // ResponsiveBreakpoints(
        //     breakpoints: [
        //
        //         const Breakpoint(start: 0, end: 450,name: MOBILE),
        //         const Breakpoint(start: 451, end:800 , name : TABLET),
        //         const Breakpoint(start: 801, end: 1920,name:DESKTOP),
        //         const Breakpoint(start: 280 , end: 375),
        //         const Breakpoint(start: 1921, end: double.infinity,name :'4K'),
        //
        //
        //     ],
        //     child: screen3(),
        // );

      //     ResponsiveBreakpoints.builder(child: child!, breakpoints: [
      //
      //      
      //   const Breakpoint(start: 0, end: 450,name: MOBILE),
      //   const Breakpoint(start: 451, end:800 , name : TABLET),
      //   const Breakpoint(start: 801, end: 1920,name:DESKTOP),
      //   const Breakpoint(start: 280 , end: 375),
      //   const Breakpoint(start: 1921, end: double.infinity,name :'4K'),
      //
      // ]
      //
      // );


        },
      initialRoute: "/",
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: screen5(),
    );
  }
}

