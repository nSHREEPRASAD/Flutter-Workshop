import 'package:flutter/material.dart';

class React extends StatelessWidget {
  const React({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("React Information"),
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
                backgroundImage: AssetImage("assets/images/React.png"),
              ),
            ),
            SizedBox(height: _mediaQuery.height*0.03,),
            Container(
              width: _mediaQuery.width*0.9,
              height: _mediaQuery.height*0.45,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("The React. js framework is an open-source JavaScript framework and library developed by Facebook. It's used for building interactive user interfaces and web applications quickly and efficiently with significantly less code than you would with vanilla JavaScript. The React. js framework is an open-source JavaScript framework and library developed by Facebook. It's used for building interactive user interfaces and web applications quickly and efficiently with significantly less code than you would with vanilla JavaScript. The React. js framework is an open-source JavaScript framework and library developed by Facebook. It's used for building interactive user interfaces and web applications quickly and efficiently with significantly less code than you would with vanilla JavaScript. The React. js framework is an open-source JavaScript framework and library developed by Facebook. It's used for building interactive user interfaces and web applications quickly and efficiently with significantly less code than you would with vanilla JavaScript. The React. js framework is an open-source JavaScript framework and library developed by Facebook. It's used for building interactive user interfaces and web applications quickly and efficiently with significantly less code than you would with vanilla JavaScript.")
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