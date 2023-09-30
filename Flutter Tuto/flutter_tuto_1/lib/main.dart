import 'package:flutter/material.dart';
import 'package:flutter_tuto_1/Pages/C_Plus_Plus.dart';
import 'package:flutter_tuto_1/Pages/Flutter.dart';
import 'package:flutter_tuto_1/Pages/Python.dart';
import 'package:flutter_tuto_1/Pages/React.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var _mediaQuery= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Workshop",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: _mediaQuery.height*0.1,
            ),
            Card(
              elevation: 10,
              child: Container(
                height: _mediaQuery.height*0.08,
                child: Row(
                  children: [
                    SizedBox(width: _mediaQuery.width*0.03,),
                    Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                height: _mediaQuery.height*0.08,
                child: Row(
                  children: [
                    SizedBox(width: _mediaQuery.width*0.03,),
                    Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                height: _mediaQuery.height*0.08,
                child: Row(
                  children: [
                    SizedBox(width: _mediaQuery.width*0.03,),
                    Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Close Drawer")
            )
          ],
        ),
      ),
      body: Container(
        width: _mediaQuery.width,
        height: _mediaQuery.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: _mediaQuery.width,
                height: _mediaQuery.height*0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                  color: Colors.purple
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: _mediaQuery.height*0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: _mediaQuery.width*0.6,
                        height: _mediaQuery.height*0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            suffixIcon: IconButton(
                              onPressed: (){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Welcome To Flutter Workshop !"),
                                    backgroundColor: Colors.green,
                                    duration: Duration(seconds: 3),
                                  )
                                );
                              }, 
                              icon: Icon(Icons.search)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: _mediaQuery.width*0.005
                              ),
                            )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _mediaQuery.height*0.03,
              ),
              Container(
                width: _mediaQuery.width,
                height: _mediaQuery.height*0.22,
                child: Column(
                  children: [
                    SizedBox(
                      height: _mediaQuery.height*0.01,
                    ),
                    Container(
                      width: _mediaQuery.width*0.82,
                      height: _mediaQuery.height*0.09 ,
                      child: Row(
                        children: [
                          SizedBox(width:_mediaQuery.width*0.025,),
                          CircleAvatar(
                            child: Icon(Icons.category),
                          ),
                          SizedBox(width: _mediaQuery.width*0.2,),
                          CircleAvatar(
                            child: Icon(Icons.class_),
                          ),
                          SizedBox(width: _mediaQuery.width*0.2,),
                          CircleAvatar(
                            child: Icon(Icons.pedal_bike),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: _mediaQuery.height*0.01,),
                    Container(
                      width: _mediaQuery.width*0.82,
                      height: _mediaQuery.height*0.09,
                      child: Row(
                        children: [
                          SizedBox(width:_mediaQuery.width*0.025,),
                          CircleAvatar(
                            child: Icon(Icons.laptop),
                          ),
                          SizedBox(width: _mediaQuery.width*0.2,),
                          CircleAvatar(
                            child: Icon(Icons.cabin),
                          ),
                          SizedBox(width: _mediaQuery.width*0.2,),
                          CircleAvatar(
                            child: Icon(Icons.chair),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: _mediaQuery.height*0.01,),
              Container(
                width: _mediaQuery.width,
                height: _mediaQuery.height*0.08,
                child: Row(
                  children: [
                    SizedBox(width: _mediaQuery.width*0.07,),
                    Text("Courses",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontStyle: FontStyle.italic),)
                  ],
                ),
              ),SizedBox(height:_mediaQuery.height*0.01,),
              Container(
                width: _mediaQuery.width*0.9,
                height: _mediaQuery.height*0.65,
                child: Column(
                  children: [
                    Container(
                      width: _mediaQuery.width,
                      height: _mediaQuery.height*0.3,
                      child: Row(
                        children: [
                          InkWell(
                            child: Card(
                              color: Colors.grey,
                              elevation: 20,
                              child: Container(
                                width: _mediaQuery.width*0.42,
                                height: _mediaQuery.height*0.282,
                                child: Column(
                                  children: [
                                    SizedBox(height: _mediaQuery.height*0.003,),
                                    Image.asset("assets/images/Flutter.png",height: _mediaQuery.height*0.18),
                                    SizedBox(height: _mediaQuery.height*0.015,),
                                    Text("Flutter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Flutter()));
                            },
                          ),
                          InkWell(
                            child: Card(
                              color: Colors.grey,
                              elevation: 20,
                              child: Container(
                                width: _mediaQuery.width*0.42,
                                height: _mediaQuery.height*0.282,
                                child: Column(
                                  children: [
                                    SizedBox(height: _mediaQuery.height*0.003,),
                                    Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png",height: _mediaQuery.height*0.18),
                                    SizedBox(height: _mediaQuery.height*0.015,),
                                    Text("React",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>React()));
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: _mediaQuery.height*0.01,),
                    Container(
                      width: _mediaQuery.width,
                      height: _mediaQuery.height*0.3,
                      child: Row(
                        children: [
                          InkWell(
                            child: Card(
                              color: Colors.grey,
                              elevation: 20,
                              child: Container(
                                width: _mediaQuery.width*0.42,
                                height: _mediaQuery.height*0.282,
                                child: Column(
                                  children: [
                                    SizedBox(height: _mediaQuery.height*0.003,),
                                    Image.network("https://freepngimg.com/thumb/c++/2-2-c++-png-clipart.png",height: _mediaQuery.height*0.18),
                                    SizedBox(height: _mediaQuery.height*0.015,),
                                    Text("C++",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>C_Plus_Plus()));
                            },
                          ),
                          InkWell(
                            child: Card(
                              color: Colors.grey,
                              elevation: 20,
                              child: Container(
                                width: _mediaQuery.width*0.42,
                                height: _mediaQuery.height*0.282,
                                child: Column(
                                  children: [
                                    SizedBox(height: _mediaQuery.height*0.003,),
                                    Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Python.svg/1200px-Python.svg.png",height: _mediaQuery.height*0.18),
                                    SizedBox(height: _mediaQuery.height*0.015,),
                                    Text("Python",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Python()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: _mediaQuery.height*0.01,)
            ],
          ),
        ),
      )
    );
  }
}
