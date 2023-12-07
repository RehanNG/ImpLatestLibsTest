import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
class EasyWayOfMakingTimeline extends StatefulWidget {
  const EasyWayOfMakingTimeline({super.key});
  @override
  State<EasyWayOfMakingTimeline> createState() => _EasyWayOfMakingTimelineState();
}

class _EasyWayOfMakingTimelineState extends State<EasyWayOfMakingTimeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context,index){
            return FixedTimeline.tileBuilder(
                builder:
                TimelineTileBuilder(
                  startConnectorBuilder: (_,index)=> Connector.solidLine(),
                  endConnectorBuilder: (_,index)=>Connector.solidLine(),
                  indicatorBuilder: (_,index)=> Indicator.outlined(borderWidth: 1.0),
                  itemCount: 2,
                  contentsBuilder: (_,index)=> Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Contents Builder Text"),
                  ),
                  itemExtentBuilder: (_, index) =>10.0,
                  nodeItemOverlapBuilder: (_, index) => true,
                ));
          },

        ),
      ),
    );
  }
  // bool isEdgeIndex(int index) {
  //   return index == 0 || index == messages.length + 1;
  // }
}
