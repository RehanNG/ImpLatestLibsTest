import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
const kTileHeight = 50.0;
// class ProgressTracking extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: TitleAppBar('Package Delivery Tracking'),
//       body:
//       Center(
//         child: ListView.builder(
//           itemCount: 1,
//           itemBuilder: (context, index) {
//             final data = _data(index + 1);
//             return Center(
//               child: Container(
//                 width: 360.0,
//                 child: Card(
//                   margin: EdgeInsets.all(20.0),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: _TrackingTitle(
//                           progressInfo: data,
//                         ),
//                       ),
//                       Divider(height: 1.0),
//                       _RequestProcesses(processes: data.requestProcesses),
//                       Divider(height: 1.0),
//                       Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: _OnTimeBar(driver: data.userInfo),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
class ProgressTracking extends StatelessWidget {
  final data = _data();
  @override
  Widget build(BuildContext context) {

    return Scaffold
      (


      body:
      Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 360.0,
                  child: Card(
                    margin: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: _TrackingTitle(
                            progressInfo: data,
                          ),
                        ),
                        Divider(height: 1.0),
                        _RequestProcesses(processes: data.requestProcesses),
                        Divider(height: 1.0),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: _OnTimeBar(driver: data.userInfo),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
      ,






    );
  }
}
class _TrackingTitle extends StatelessWidget {
  const _TrackingTitle({
    Key? key,
    required this.progressInfo,
  }) : super(key: key);

  final _ProgressInfo progressInfo;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Text(
          'Tracking id #F324-SNRTERFDG',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          '${progressInfo.date.day}/${progressInfo.date.month}/${progressInfo.date.year}',
          style: TextStyle(
            color: Color(0xffb6b2b2),
          ),
        ),
      ],
    );
  }
}

class _InnerTimeline extends StatelessWidget {
  const _InnerTimeline({
    required this.messages,
  });

  final List<_RequestMessage> messages;

  @override
  Widget build(BuildContext context) {
    bool isEdgeIndex(int index) {
      return index == 0 || index == messages.length + 1;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FixedTimeline.tileBuilder(

        theme: TimelineTheme.of(context).copyWith(
          nodePosition: 0,
          connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
            thickness: 1.0,
          ),
          indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
            size: 10.0,
            position: 0.5,
          ),
        ),
        builder: TimelineTileBuilder(
          indicatorBuilder: (_, index) => !isEdgeIndex(index) ? Indicator.outlined(borderWidth: 1.0) : null,
          startConnectorBuilder: (_, index) => Connector.solidLine(),
          endConnectorBuilder: (_, index) => Connector.solidLine(),
          contentsBuilder: (_, index) {
            if (isEdgeIndex(index)) {
              return null;
            }

            return Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(messages[index - 1].toString()),
            );
          },
          itemExtentBuilder: (_, index) => isEdgeIndex(index) ? 10.0 : 30.0,
          nodeItemOverlapBuilder: (_, index) => isEdgeIndex(index) ? true : null,
          itemCount: messages.length + 2,
        ),
      ),

    );
  }
}

class _RequestProcesses extends StatelessWidget {
  const _RequestProcesses({Key? key, required this.processes})
      : super(key: key);

  final List<_RequestProcess> processes;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: Color(0xff9b9b9b),
        fontSize: 12.5,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(
            nodePosition: 0,
            color: Color(0xff989898),
            indicatorTheme: IndicatorThemeData(
              position: 0,
              size: 20.0,
            ),
            connectorTheme: ConnectorThemeData(
              thickness: 2.5,
            ),
          ),
          builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: processes.length,
            contentsBuilder: (_, index) {
              if (processes[index].isCompleted) return null;

              return Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      processes[index].Title,
                      style: DefaultTextStyle.of(context).style.copyWith(
                        fontSize: 18.0,
                      ),
                    ),
                    _InnerTimeline(messages: processes[index].messages),
                  ],
                ),
              );
            },
            indicatorBuilder: (_, index) {
              if (processes[index].isCompleted) {
                return DotIndicator(
                  color: Color(0xff7192f6),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12.0,
                  ),
                );
              } else {
                return OutlinedDotIndicator(
                  borderWidth: 2.5,
                );
              }
            },
            connectorBuilder: (_, index, ___) => SolidLineConnector(
              color: processes[index].isCompleted ? Color(0xff7192f6) : null,
            ),
          ),
        ),
      ),
    );
  }
}

class _OnTimeBar extends StatelessWidget {
  const _OnTimeBar({Key? key, required this.driver}) : super(key: key);

  final _UserInfo driver;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('On-time!'),
              ),
            );
          },
          elevation: 0,
          shape: StadiumBorder(),
          color: Color(0xff7192f6),
          textColor: Colors.white,
          child: Text('On-time'),
        ),
        Spacer(),
        Text(
          'Driver\n${driver.name}',
          textAlign: TextAlign.center,
        ),
        SizedBox(width: 12.0),
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                driver.thumbnailUrl,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// data k nam sa aik method bnao jis ke type _ProgressInfo ha
_ProgressInfo _data() => _ProgressInfo(

  // Trackingid: 2,
  date: DateTime.now(),
  userInfo: _UserInfo(
    name: 'Philipe',
    thumbnailUrl:
    'https://i.pinimg.com/originals/08/45/81/084581e3155d339376bf1d0e17979dc6.jpg',
  ),




  requestProcesses: [


    _RequestProcess(
      'Initialization',
      messages: [
        _RequestMessage('8:30am'),
        _RequestMessage('11:30am'),
      ],
    ),


    _RequestProcess(
      'Manager: Jon',
      messages: [
        _RequestMessage('13:00pm'),
        _RequestMessage('11:35am'),
      ],
    ),
    _RequestProcess.complete(),
  ],
);

class _ProgressInfo {


  const _ProgressInfo({
    // required this.Trackingid,
    required this.date,
    required this.userInfo,
    required this.requestProcesses,
  });

  // final int Trackingid;
  final DateTime date;
  final _UserInfo userInfo;
  final List<_RequestProcess> requestProcesses;
}

class _UserInfo {
  const _UserInfo({
    required this.name,
    required this.thumbnailUrl,
  });

  final String name;
  final String thumbnailUrl;
}

class _RequestProcess {
  const _RequestProcess(
      this.Title,
      {
        this.messages = const [],
      });

  const _RequestProcess.complete()
      : this.Title = 'Done',
        this.messages = const [];

  final String Title;
  final List<_RequestMessage> messages;

  bool get isCompleted => Title == 'Done';
}
// ya wo ha jehan mera pas data a k gir reha ha jehan hum data fetdch kar k display kryain ga

class _RequestMessage {
  const _RequestMessage(this.message);
  final String message;
   // final DateTime createdAt;


  @override
  String toString() {
    return ' $message';
  }
}
