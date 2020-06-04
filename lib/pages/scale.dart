import 'package:flutter/material.dart';

class Scale extends StatefulWidget {

  ScaleState createState() => ScaleState();
}

class ScaleState extends State<Scale> {
  double touchStartX = 0;
  double touchStartY = 0;
  double width = 200;
  double height = 200;
  double left = 100;
  double top = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('scale and drag'),
      // ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: top,
              left: left,
              child: GestureDetector(
                // onPanUpdate: (DragUpdateDetails e) {
                //   //用户手指滑动时，更新偏移，重新构建
                //   setState(() {
                //     left += e.delta.dx;
                //     top += e.delta.dy;
                //   });
                // },
                onScaleStart: (ScaleStartDetails details) {
                  print(details.focalPoint);
                  touchStartX = details.focalPoint.dx - left;
                  touchStartY = details.focalPoint.dy - top;
                },
                onScaleUpdate: (ScaleUpdateDetails details) {
                  // print(details.focalPoint);
                  // print(details.verticalScale);
                  if(details.scale == 1.0) {
                      setState(() {
                        left = details.focalPoint.dx - touchStartX;
                        top = details.focalPoint.dy - touchStartY;
                      });
                  }else {
                    setState(() {
                      //缩放倍数在0.8到10倍之间
                      double scaleWidth = 200*details.scale;
                      double scaleHeight = 200*details.scale;
                      if(scaleWidth > 100 && scaleWidth < 1000) {
                        left -= (scaleWidth-width)/2;
                        width = scaleWidth;
                      }
                      if(scaleHeight > 100 && scaleHeight < 1000) {
                        top -= (scaleHeight-height)/2;
                        height = scaleHeight;
                      }
                    });
                  }
                },
                child: Container(
                  width: width,
                  height: height,
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        ),
        
      )
    );
  }
}
