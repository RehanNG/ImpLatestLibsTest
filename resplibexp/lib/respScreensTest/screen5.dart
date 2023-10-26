import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';
class screen5 extends StatefulWidget {
  const screen5({super.key});
  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  @override
  Widget build(BuildContext context) {
    // the reason I am using Single child ScrollView
    // because if I will use List view here
    // so after that I would not be
    // able to create ListView's in internal
    // column or rows , It will not allow to create nested List Views

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          ResponsiveRowColumn(
            // rowVerticalDirection: VerticalDirection.down,
            // columnVerticalDirection: VerticalDirection.down,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
              rowPadding: EdgeInsets.only( top:30,left:30,right: 30 , bottom: 5 ),
              columnPadding: EdgeInsets.only( top:30,left:30,right: 30 , bottom: 5 ),
              // layout:ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW ,
              layout:ResponsiveRowColumnType.COLUMN  ,
              children: [
                //     1 row 2 colum
                ResponsiveRowColumnItem(

                  rowFlex: 1,
                    // columnOrder: 1,
                    // 1 row
                    child: ResponsiveRowColumn(

                      rowMainAxisAlignment: MainAxisAlignment.center,
                      columnCrossAxisAlignment: CrossAxisAlignment.center,
                  // rowVerticalDirection: VerticalDirection.down,
                  // columnVerticalDirection: VerticalDirection.down,

                  layout: ResponsiveRowColumnType.ROW,

                      children: [
                      //  2 column
                      //   1st column
                        ResponsiveRowColumnItem(
                            rowFlex: 1,
                            child: ResponsiveRowColumn(
                              layout:ResponsiveRowColumnType.COLUMN,
                            children: [
                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: Container(
                                width: 150,
                                height: 150,
                                color: Colors.blueAccent,
                              )
                              ) ,

                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: SizedBox(
                                    height: 5,
                                  )
                              ) ,

                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    color: Colors.blueAccent,
                                  )
                              ) ,

                            ],
                            )
                        ),

                        ResponsiveRowColumnItem(child: SizedBox(width: 5,)),
                        ResponsiveRowColumnItem(
                            rowFlex:1,
                            child: ResponsiveRowColumn(
                              layout: ResponsiveRowColumnType.COLUMN,
                              children:[
                                ResponsiveRowColumnItem(
                                  child: Container(
                                    height: 305,
                                      width: 145,
                                      color: Colors.redAccent,
                                      child: Container(

                                          child: ListView(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      width:120,
                                                      height: 120,
                                                      child:Card(
                                                        elevation: 12,
                                                        color: Colors.white,
                                                      ) ,
                                                    ),

                                                    SizedBox(
                                                      width:120,
                                                      height: 120,
                                                      child:Card(
                                                        elevation: 12,
                                                        color: Colors.white,
                                                      ) ,
                                                    ),


                                                    SizedBox(
                                                      width:120,
                                                      height: 120,
                                                      child:Card(
                                                        elevation: 12,
                                                        color: Colors.white,
                                                      ) ,
                                                    ),

                                                    SizedBox(
                                                      width:120,
                                                      height: 120,
                                                      child:Card(
                                                        elevation: 12,
                                                        color: Colors.white,
                                                      ) ,
                                                    ),

                                                  ],
                                                ),
                                              ),
                                            ]


                                          ),
                                        ),
                                  ),
                                ),



                              ],
                            )
                        ),

                        //  banner container



                      ],
                )
                ),

               ],

          ),

          ResponsiveRowColumn(
            rowPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5 ),
            columnPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5 ),
            layout: ResponsiveRowColumnType.ROW ,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,

          children: [
            ResponsiveRowColumnItem(
                // columnOrder: 3,
                rowFlex: 1,
                child: Container(
                  width: 303,
                  height: 120,
                  color: Colors.amberAccent,
                ),
            ),
          ],
          ),


          ResponsiveRowColumn(
            rowPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5 ),
            columnPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5 ),
            layout: ResponsiveRowColumnType.ROW ,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,

            children: [
              ResponsiveRowColumnItem(
                // columnOrder: 3,
                rowFlex: 1,
                child: Container(
                  width: 303,
                  height: 120,
                  color: Colors.deepOrangeAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [

                        SizedBox(
                          width:120,
                          height: 120,
                          child:Card(
                            elevation: 12,
                            color: Colors.white,
                          ) ,
                        ),

                        SizedBox(
                          width:120,
                          height: 120,
                          child:Card(
                            elevation: 12,
                            color: Colors.white,
                          ) ,
                        ),

                        SizedBox(
                          width:120,
                          height: 120,
                          child:Card(
                            elevation: 12,
                            color: Colors.white,
                          ) ,
                        ),


                        SizedBox(
                          width:120,
                          height: 120,
                          child:Card(
                            elevation: 12,
                            color: Colors.white,
                          ) ,
                        ),


                        SizedBox(
                          width:120,
                          height: 120,
                          child:Card(
                            elevation: 12,
                            color: Colors.white,
                          ) ,
                        ),



                        SizedBox(
                          width:120,
                          height: 120,
                          child:Card(
                            elevation: 12,
                            color: Colors.white,
                          ) ,
                        ),



                        SizedBox(
                          width:120,
                          height: 120,
                          child:Card(
                            elevation: 12,
                            color: Colors.white,
                          ) ,
                        ),

                      ],


                    ),
                  ),
                ),
              ),
            ],
          ),


        //   text with some text

          ResponsiveRowColumn(
            // rowVerticalDirection: VerticalDirection.down,
            // columnVerticalDirection: VerticalDirection.down,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            rowPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5  ),
            columnPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5  ),
            // layout:ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW ,
            layout:ResponsiveRowColumnType.COLUMN  ,
            children: [
              //     1 row 2 colum
              ResponsiveRowColumnItem(

                  rowFlex: 1,
                  // columnOrder: 1,
                  // 1 row
                  child: ResponsiveRowColumn(

                    rowMainAxisAlignment: MainAxisAlignment.center,
                    columnCrossAxisAlignment: CrossAxisAlignment.center,
                    // rowVerticalDirection: VerticalDirection.down,
                    // columnVerticalDirection: VerticalDirection.down,

                    layout: ResponsiveRowColumnType.ROW,

                    children: [
                      //  2 column
                      //   1st column
                      ResponsiveRowColumnItem(
                          rowFlex: 1,
                          child: ResponsiveRowColumn(
                            layout:ResponsiveRowColumnType.COLUMN,
                            children: [
                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: Container(
                                    width: 149,
                                    height: 150,
                                    color: Colors.blueAccent,
                                  )
                              ) ,

                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: SizedBox(
                                    height: 5,
                                  )
                              ) ,

                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: Container(
                                    width: 149,
                                    height: 150,
                                    color: Colors.blueAccent,
                                  )
                              ) ,

                            ],
                          )
                      ),

                      ResponsiveRowColumnItem(child: SizedBox(width: 5,)),
                      ResponsiveRowColumnItem(
                          rowFlex: 1,
                          child: ResponsiveRowColumn(
                            layout:ResponsiveRowColumnType.COLUMN,
                            children: [
                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: Container(
                                    width: 149,
                                    height: 150,
                                    color: Colors.blueAccent,
                                  )
                              ) ,

                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: SizedBox(
                                    height: 5,
                                  )
                              ) ,

                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: Container(
                                    width: 149,
                                    height: 150,
                                    color: Colors.blueAccent,
                                  )
                              ) ,

                            ],
                          )
                      ),


                      //  banner container



                    ],
                  )
              ),

            ],

          ),

        //   banner option
          ResponsiveRowColumn(
            rowPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5 ),
            columnPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5 ),
            layout: ResponsiveRowColumnType.ROW ,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,

            children: [
              ResponsiveRowColumnItem(
                // columnOrder: 3,
                rowFlex: 1,
                child: Container(
                  width: 303,
                  height: 120,
                  color: Colors.amberAccent,
                ),
              ),
            ],

          ),




        //   column with buttons

          ResponsiveRowColumn(
            // rowVerticalDirection: VerticalDirection.down,
            // columnVerticalDirection: VerticalDirection.down,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            rowPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5 ),
            columnPadding: EdgeInsets.only( left:30,right: 30 , bottom: 5 ),
            // layout:ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW ,
            layout:ResponsiveRowColumnType.COLUMN  ,
            children: [
              //     1 row 2 colum
              ResponsiveRowColumnItem(

                  rowFlex: 1,
                  // columnOrder: 1,
                  // 1 row
                  child: ResponsiveRowColumn(

                    rowMainAxisAlignment: MainAxisAlignment.center,
                    columnCrossAxisAlignment: CrossAxisAlignment.center,
                    // rowVerticalDirection: VerticalDirection.down,
                    // columnVerticalDirection: VerticalDirection.down,

                    layout: ResponsiveRowColumnType.ROW,

                    children: [
                      //  2 column
                      //   1st column
                      ResponsiveRowColumnItem(
                          rowFlex: 1,
                          child: ResponsiveRowColumn(
                            layout:ResponsiveRowColumnType.COLUMN,
                            children: [
                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    color: Colors.blueAccent,
                                  )
                              ) ,

                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: SizedBox(
                                    width: 5,
                                  )
                              ) ,

                            ],
                          )
                      ),

                      ResponsiveRowColumnItem(child: SizedBox(width: 5,)),
                      ResponsiveRowColumnItem(
                          rowFlex:1,
                          child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.COLUMN,
                            children:[
                              ResponsiveRowColumnItem(
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  color: Colors.redAccent,
                                ),
                              ),



                            ],
                          )
                      ),

                      //  banner container



                    ],
                  )
              ),

            ],

          ),


          
        ],
      ),
    );

  }
}
