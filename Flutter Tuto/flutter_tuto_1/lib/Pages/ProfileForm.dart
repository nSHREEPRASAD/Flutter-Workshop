import 'package:flutter/material.dart';
import 'package:flutter_tuto_1/Pages/UsersProfile.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _key1=GlobalKey<FormState>();
  final _key2=GlobalKey<FormState>();
  TextEditingController EmailAd = TextEditingController();
  TextEditingController Passwo = TextEditingController();
  bool _obscure=true;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Profile Form",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        height: _mediaQuery.height,
        width: _mediaQuery.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: _mediaQuery.height*0.02,),
              Container(
                width: _mediaQuery.width*0.6,
                height: _mediaQuery.height*0.3,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person,color: Colors.grey,size: _mediaQuery.height*0.25,),
                ),
              ),
              SizedBox(height: _mediaQuery.height*0.03,),
              Container(
                width: _mediaQuery.width*0.84,
                child: Form(
                  key: _key1,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if(value!.isNotEmpty){
                        return null;
                      }
                      else{
                        return "Please Enter Email";
                      }
                    },
                    controller: EmailAd,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      prefixIcon: Icon(Icons.email),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height*0.03,),
              Container(
                width: _mediaQuery.width*0.84,
                child: Form(
                  key: _key2,
                  child: TextFormField(
                    validator: (value) {
                      if(value!.isNotEmpty){
                        return null;
                      }
                      else{
                        return "Please Enter Password";
                      }
                    },
                    controller: Passwo,
                    obscureText: _obscure,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _obscure=!_obscure;
                          });
                        }, 
                        icon: Icon(_obscure==true?Icons.remove_red_eye:Icons.cancel),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height*0.05,),
              Container(
                width: _mediaQuery.width*0.84,
                height: _mediaQuery.height*0.07,
                child: ElevatedButton(
                  onPressed: (){
                    if(!_key1.currentState!.validate() || !_key2.currentState!.validate()){
                      return;
                    }
                    else{
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>UsersProfile(EmailAd.text.toString())));
                    }
                  }, 
                  child: Text("Sign Up",style: TextStyle(fontSize: 20),)
                ),
              )
            ]
          )
        )
      )
    );
  }
}