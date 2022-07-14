import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/view/signin.dart';

import '../widgets/widgets.dart';


class SignUp extends StatefulWidget {
  const SignUp({required Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  late String name, email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:appBar(context) ,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Form(
        key: formKey,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children:[
              const Spacer(),
              TextFormField(
                onChanged: (val){
                  name=val;
                },
                decoration: const InputDecoration(
                    hintText: 'Name'
                ),

              ),
              const SizedBox(height: 6,),
              TextFormField(
                onChanged: (val){
                  email=val;
                },
                decoration: const InputDecoration(
                    hintText: 'Email'
                ),

              ),
              const SizedBox(height: 6,),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password'
                ),
                onChanged: (val){
                  password=val;
                },
              ),
              const SizedBox(height:24 ,),

              GestureDetector(
                onTap: (){

                },
                child: Container(

                  padding: const EdgeInsets.symmetric(vertical: 18),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(38)
                  ),

                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 48,
                  child: const Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 16),),


                ),
              ),
              const SizedBox(height: 18,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",style: TextStyle(fontSize: 15.5),),
                  GestureDetector(
                      onTap: (){

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignIn()
                        ));
                      },
                      child: const Text("Sign In",style: TextStyle(fontSize: 15.5,decoration: TextDecoration.underline),)),
                ],
              ),
              const SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}
