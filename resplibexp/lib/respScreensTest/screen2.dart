// import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_framework.dart';
//
// class screen2 extends StatefulWidget {
//   const screen2({super.key});
//   @override
//   State<screen2> createState() => _screen2State();
// }
//
// class _screen2State extends State<screen2> {
//   @override
//   Widget build(BuildContext context) {
//     double? width=20;
//     return Container(
//       child: Column(
//         children: [
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ResponsiveScaledBox(
//                   autoCalculateMediaQueryData: true,
//                   width:null,
//                   child: Card(
//                     color: Colors.redAccent,
//                     elevation: 2,
//                     child: Padding(
//                       padding: const EdgeInsets.only(top:62.0,bottom: 62 ,left: 5 , right: 5 ),
//                       child: Column(
//                         children: [
//                           Icon(Icons.ac_unit_rounded,color: Colors.white),
//                           Text('datas sd csd csd csd  ',style: TextStyle(color: Colors.white),),
//                         ],
//                       ),
//                     ),
//                   ),
//               ),
//
//               ResponsiveScaledBox(
//                 autoCalculateMediaQueryData: true,
//                 width:null,
//                 child: Card(
//                   color: Colors.white,
//                   elevation: 2,
//                   child: ResponsiveScaledBox(
//                     autoCalculateMediaQueryData: true,
//                     width: null,
//                     child: Padding(
//                       padding: const EdgeInsets.only(top:62.0,bottom: 62 ,left: 5 , right: 5 ),
//                       child: Column(
//                         children: [
//                           Icon(Icons.ac_unit_rounded,color: Colors.black),
//                           Text('datas sd csd csd csd  ',style: TextStyle(color: Colors.white),),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//
//
//
//
//
//             ],
//           )
//
//         ],
//
//       ),
//     );
//   }
// }
