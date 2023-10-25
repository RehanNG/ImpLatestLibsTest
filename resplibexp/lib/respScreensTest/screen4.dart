import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
class screen4 extends StatefulWidget {
  const screen4({super.key});

  @override
  State<screen4> createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          rowPadding: EdgeInsets.all(30),
          columnPadding: EdgeInsets.all(30),
          layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
          children: [


            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Container(
                  color: Colors.redAccent,
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text("123"
                  ,style: TextStyle(
                      fontSize: ResponsiveValue(context,defaultValue: 30.0 , valueWhen: [
                        Condition.smallerThan(name: MOBILE,value: 20.0),
                        Condition.largerThan(name:TABLET,value:40.0)
                      ]).value,
                    ),
                  ),
                )),


            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Container(
                  color: Colors.redAccent,
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text("123"
                    ,style: TextStyle(
                      fontSize: ResponsiveValue(context,defaultValue: 30.0 , valueWhen: [
                        Condition.smallerThan(name: MOBILE,value: 20.0),
                        Condition.largerThan(name:TABLET,value:40.0)
                      ]).value,
                    ),
                  ),
                )),


            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Container(
                  color: Colors.redAccent,
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text("123"
                    ,style: TextStyle(
                      fontSize: ResponsiveValue(context,defaultValue: 30.0 , valueWhen: [
                        Condition.smallerThan(name: MOBILE,value: 20.0),
                        Condition.largerThan(name:TABLET,value:40.0)
                      ]).value,
                    ),
                  ),
                )),


            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Container(
                  color: Colors.redAccent,
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text("123"
                    ,style: TextStyle(
                      fontSize: ResponsiveValue(context,defaultValue: 30.0 , valueWhen: [
                        Condition.smallerThan(name: MOBILE,value: 20.0),
                        Condition.largerThan(name:TABLET,value:40.0)
                      ]).value,
                    ),
                  ),
                )),


            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Container(
                  color: Colors.redAccent,
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text("123"
                    ,style: TextStyle(
                      fontSize: ResponsiveValue(context,defaultValue: 30.0 , valueWhen: [
                        Condition.smallerThan(name: MOBILE,value: 20.0),
                        Condition.largerThan(name:TABLET,value:40.0)
                      ]).value,
                    ),
                  ),
                )),

            ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Container(
                  color: Colors.redAccent,
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text("123"
                    ,style: TextStyle(
                      fontSize: ResponsiveValue(context,defaultValue: 30.0 , valueWhen: [
                        Condition.smallerThan(name: MOBILE,value: 20.0),
                        Condition.largerThan(name:TABLET,value:40.0)
                      ]).value,
                    ),
                  ),
                )),


          ],
        ),
      ]

    );
  }
}
