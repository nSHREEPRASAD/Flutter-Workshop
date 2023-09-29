import 'package:flutter/material.dart';
import 'package:flutter_tuto_1/Pages/Flutter.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Workshop",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                  color: Colors.purple
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 220,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            suffixIcon: IconButton(
                              onPressed: (){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Flutter Workshop is Searched"),
                                    backgroundColor: Colors.green,
                                    duration: Duration(seconds: 1),
                                  )
                                );
                              }, 
                              icon: Icon(Icons.search)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2
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
                width: double.infinity,
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 150,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 60,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          CircleAvatar(
                            child: Icon(Icons.category),
                          ),
                          SizedBox(width: 70,),
                          CircleAvatar(
                            child: Icon(Icons.class_),
                          ),
                          SizedBox(width: 70,),
                          CircleAvatar(
                            child: Icon(Icons.pedal_bike),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 300,
                      height: 60,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          CircleAvatar(
                            child: Icon(Icons.laptop),
                          ),
                          SizedBox(width: 70,),
                          CircleAvatar(
                            child: Icon(Icons.cabin),
                          ),
                          SizedBox(width: 70,),
                          CircleAvatar(
                            child: Icon(Icons.chair),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Text("Courses",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontStyle: FontStyle.italic),)
                  ],
                ),
              ),SizedBox(height:10,),
              Container(
                width: 320,
                height: 400,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 190,
                      child: Row(
                        children: [
                          InkWell(
                            child: Card(
                              color: Colors.grey,
                              elevation: 20,
                              child: Container(
                                width: 150,
                                height: 190,
                                child: Column(
                                  children: [
                                    SizedBox(height: 5,),
                                    Image.asset("assets/images/Flutter.png",height: 120),
                                    SizedBox(height: 10,),
                                    Text("Flutter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Flutter()));
                            },
                          ),
                          Card(
                            color: Colors.grey,
                            elevation: 20,
                            child: Container(
                              width: 150,
                              height: 190,
                              child: Column(
                                children: [
                                  SizedBox(height: 5,),
                                  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png",height: 120,),
                                  SizedBox(height: 10,),
                                  Text("React",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 190,
                      child: Row(
                        children: [
                          Card(
                            color: Colors.grey,
                            elevation: 20,
                            child: Container(
                              width: 150,
                              height: 190,
                              child: Column(
                                children: [
                                  SizedBox(height: 5,),
                                  Image.network("https://logos-world.net/wp-content/uploads/2022/07/Java-Logo.jpg",height: 120,),
                                  SizedBox(height: 10,),
                                  Text("Java",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.grey,
                            elevation: 20,
                            child: Container(
                              width: 150,
                              height: 190,
                              child: Column(
                                children: [
                                  SizedBox(height: 5,),
                                  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Python.svg/1200px-Python.svg.png",height: 120,),
                                  SizedBox(height: 10,),
                                  Text("Python",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      )
    );
  }
}
