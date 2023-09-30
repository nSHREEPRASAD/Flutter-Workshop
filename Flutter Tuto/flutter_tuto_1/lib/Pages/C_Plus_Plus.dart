import 'package:flutter/material.dart';

class C_Plus_Plus extends StatelessWidget {
  const C_Plus_Plus({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("C++ Information"),
      ),
      body: Container(
        width: _mediaQuery.width,
        height: _mediaQuery.height,
        child: Column(
          children: [
            SizedBox(height: _mediaQuery.height*0.02,),
            Container(
              width: _mediaQuery.width*0.8,
              height: _mediaQuery.height*0.35,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/C++.png"),
              ),
            ),
            SizedBox(height: _mediaQuery.height*0.03,),
            Container(
              width: _mediaQuery.width*0.9,
              height: _mediaQuery.height*0.45,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs. C++ is portable and can be used to develop applications that can be adapted to multiple platforms. C++ is fun and easy to learn! C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs. C++ is portable and can be used to develop applications that can be adapted to multiple platforms. C++ is fun and easy to learn! C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs. C++ is portable and can be used to develop applications that can be adapted to multiple platforms. C++ is fun and easy to learn! C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs. C++ is portable and can be used to develop applications that can be adapted to multiple platforms. C++ is fun and easy to learn! C++ is an object-oriented programming language which gives a clear structure to programs and allows code to be reused, lowering development costs. C++ is portable and can be used to develop applications that can be adapted to multiple platforms. C++ is fun and easy to learn!")
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