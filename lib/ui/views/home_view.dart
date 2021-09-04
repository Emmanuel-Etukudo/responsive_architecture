import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return base widget to monitor screen changes
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 150,
                margin: EdgeInsets.all(200),
                color: Colors.amber,
                //base widget as child to monitor widget
                child: BaseWidget(builder: (context, sizingInfo) => Text(sizingInfo.toString())),
              ),
              Text(sizingInformation.toString()),
            ],
          ),
        ),
      );
    });
  }
}
