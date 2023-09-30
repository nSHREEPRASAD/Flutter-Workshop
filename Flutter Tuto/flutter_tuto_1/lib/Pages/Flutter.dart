import 'package:flutter/material.dart';

class Flutter extends StatelessWidget {
  const Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Information"),
      ),
      body: Container(
        width: _mediaQuery.width,
        height: _mediaQuery.height,
        child: Column(
          children: [
            SizedBox(height: _mediaQuery.height*0.02,),
            Container(
              width: _mediaQuery.width*0.6,
              height: _mediaQuery.height*0.35,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Flutter.png"),
              ),
            ),
            SizedBox(height: _mediaQuery.height*0.03,),
            Container(
              width: _mediaQuery.width*0.9,
              height: _mediaQuery.height*0.45,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Flutter is an open-source software development kit which enables smooth and easy cross-platform mobile app development. You can build high quality natively compiled apps for iOS and Android quickly, without having to write the code for the two apps separately. All you need is one codebase for both platforms. Flutter is an open-source software development kit which enables smooth and easy cross-platform mobile app development. You can build high quality natively compiled apps for iOS and Android quickly, without having to write the code for the two apps separately. All you need is one codebase for both platforms. Flutter is an open-source software development kit which enables smooth and easy cross-platform mobile app development. You can build high quality natively compiled apps for iOS and Android quickly, without having to write the code for the two apps separately. All you need is one codebase for both platforms. Flutter is an open-source software development kit which enables smooth and easy cross-platform mobile app development. You can build high quality natively compiled apps for iOS and Android quickly, without having to write the code for the two apps separately. All you need is one codebase for both platforms.")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}