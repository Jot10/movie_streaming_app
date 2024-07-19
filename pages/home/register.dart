import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';
// import 'package:movie_streaming/navscreen.dart';
import 'package:movie_streaming/routes.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool show = false;
  bool hide = false;
  String _password = ' ';
  String _confirmpassword = '';
  @override
  Widget build(BuildContext context) {
    var myheight= MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Container(
          height: myheight,
          width: mywidth,
          color: Colors.black,
          child: Column(
            children: [
              Container(
              height:myheight/11,
              width: mywidth,
              child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white,)),
                ),
              ],
            ), 
              ),
                Container(
            height: myheight/8,
            width: mywidth,
             child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image(image: AssetImage('assets/cinestream.png')),
              )
             ],),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Column(
                 children: [
                   Container(height: myheight/14,width: mywidth,
                   child: Text('Register', style: textStyleW700.copyWith(fontSize: 30)),),
                   Container(height: myheight/14,width: mywidth,
                   child: Text('Create your new account', style: textstylewhite),),
                 ],
               ),
             ),
               Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: whitecolor)),
                labelText: 'Display Name',
                
               ),
               style: TextStyle(color: Colors.white),
               ),
             ),
               Padding(
               padding: const EdgeInsets.only(left: 20, top: 10,right: 20),
               child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: whitecolor)),
                labelText: 'Your email',
                ),
                style: TextStyle(color: Colors.white),
                validator: (Email) {
                  if(Email!.isEmpty){
                    return 'Enter Your Email';
                  }
                   else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+") 
                          .hasMatch(Email)){
                   return 'Please Enter Valid Email';
                  }
                  else{
                      return null;
                  }
                },
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(left: 20, top: 10,right: 20),
               child: TextFormField(
                style: TextStyle(color: Colors.white),
                 onChanged: (password) {
                   _password = password;
                   },
                   controller: passwordController,
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: whitecolor)),
                hintText: 'Password',
                labelText: 'Password',
                suffixIcon: IconButton(onPressed:(){
              setState(() {
                show = !show;
              });
             }, icon: Icon(show ? Icons.visibility : Icons.visibility_off)),
                ),
                obscureText: !show,
                maxLength: 8,
                 validator: (password) {
                if(password!.isEmpty){
                  return 'Enter Your Password';
                } 
                else if(!RegExp(r'[0-9]') 
                            .hasMatch(password)){
                              return 'Please Enter Valid Password';
                }
                else{
                return null;
                }
                           }
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(left: 20, top: 10,right: 20),
               child: TextFormField(
                style: TextStyle(color: Colors.white),
                 onChanged: (confirmPassword) {
                   _confirmpassword = confirmPassword ;
                   },
                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: whitecolor)),
                hintText: 'Retype password',
                labelText: 'Retype password',
                suffixIcon: IconButton(onPressed:(){
              setState(() {
                hide = !hide;
              });
             }, icon: Icon(hide ? Icons.visibility : Icons.visibility_off)),
                ),
              autovalidateMode: AutovalidateMode.always,
               obscureText: !hide,
               validator: (confirmPassword) {
              if(confirmPassword==null){
                return 'Enter Your Confirm Password';
              }
              if(_confirmpassword != _password){
                return 'Password not matching';
              }
              else{
              return null;
              }
            },
               ),
             ),
               Padding(
               padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
               child: Container(
                width: mywidth, height: myheight/17,
                 child: MaterialButton(onPressed: () async{
                    if (formkey.currentState!.validate()){
              try {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text , password: passwordController.text).whenComplete( 
              () {
                router.go('/navigation');
                // emailController.clear();
                // passwordController.clear();
                // Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnavigation()));
              },
            );
              }
              catch (e){                                                                        
                print("hello................................................................${e}");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("${e}"))
                );
              }
            }
                 },
                 child: Text('Register now', style: textStyleW700.copyWith(color: Colors.black)),
                 color: Colors.yellow,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),
               ),
             ),
              Padding(
               padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
               child: Container(
                width: mywidth, 
                height: myheight/17,
                child: MaterialButton(onPressed: (){ 
                  signInWithGoogle();                
                 },
                 child: Row(
                   children: [
                     Image.asset('assets/google1.png',scale: 10,),
                     Padding(
                       padding: const EdgeInsets.only(left: 80),
                       child: Text('Register with google', style: textStyleW700,),
                     ),
                   ],
                 ),
                 color: const Color.fromARGB(255, 51, 51, 51),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),
               ),
             ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                 width: mywidth/1.15, 
                height: myheight/17,
                child: Text('By registering, you are agreeing to our Terms of use and Privacy Policy', style: textstylegrey,),
              ),
            )
             
            ],
          ),
        ),),
      ),
    );
  }
    signInWithGoogle()async{
    GoogleSignInAccount ? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication ? googleAuth = await googleUser?.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
    );
    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user?.displayName);

    if(userCredential.user!= null){
      router.go('/navigation');
      // Navigator.push(context, MaterialPageRoute(builder:(context) =>bottomnavigation(),));
    }
  }
}