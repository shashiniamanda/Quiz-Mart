import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/view/signup.dart';

import '../widgets/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Form(
        key: _formKey,
        child : Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
           children: [
            const Spacer(),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email"
              ),
              onChanged: (val){
                email = val;
              },
            ),
            const SizedBox(height: 6,),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Password"
              ),
              onChanged: (val){
                password = val;
              },
            ),
            const SizedBox(height: 24,),
            Container(
             height: 50,
             padding: const EdgeInsets.symmetric(vertical: 16),
             decoration: BoxDecoration(
               color: Colors.blue,
               borderRadius: BorderRadius.circular(38),
             ),
             alignment: Alignment.center,
             width: MediaQuery.of(context).size.width - 48,
             child: const Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 16),
    ),
            ),
            const SizedBox(height: 18,),
             Row(
               mainAxisAlignment:MainAxisAlignment.center,
               children: [
                 const Text("Don't have an account?",style: TextStyle(fontSize: 15.5),),
                 GestureDetector(
                     onTap: (){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  SignUp(key: _formKey,)
                       ));
                     },
                     child: const Text(" Sign Up",style: TextStyle(fontSize: 15.5,decoration: TextDecoration.underline),)),
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
