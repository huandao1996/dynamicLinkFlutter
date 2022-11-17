import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'dynamic_link_service.dart';

void main() {
  initDynamicLinks();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text("test dynamic links"),
              const SizedBox(height: 15,),
              Container(
                height: 50,
                width: 100,
                // child: FutureBuilder<Uri>(
                //     future: dynamicLinkService.createDynamicLink(),
                //     builder: (context, snapshot) {
                //       if(snapshot.hasData) {
                //         Uri? uri = snapshot.data;
                //         return FlatButton(
                //           color: Colors.amber,
                //           onPressed: () => Share.share(uri.toString()),
                //           child: const Text('Share'),
                //         );
                //       } else {
                //         return Container();
                //       }
                //     }
                // ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
