import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:movie_streaming/const/colors.dart';
import 'package:movie_streaming/const/style.dart';
// import 'package:movie_streaming/navscreen.dart';
// import 'package:movie_streaming/pages/home/register.dart';
import 'package:movie_streaming/routes.dart';


class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var myheight= MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Container(
            height: myheight,width: mywidth,
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
                     child: Text('Welcome back', style: textStyleW700.copyWith(fontSize: 30)),),
                     Container(height: myheight/14,width: mywidth,
                     child: Text('Hello there, Sign in to continue', style: textstylewhite),),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20),
                 child: TextFormField(
                  controller: emailcontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: whitecolor)),
                  hintText: 'Your email',
                  labelText: 'Your email'),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 20, top: 10,right: 20),
                 child: TextFormField(
                  controller: passwordcontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: whitecolor)),
                  hintText: 'Password',
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 20,top: 8),
                 child: Container(child: Row(mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text('Forgot Password?',style: textstylegrey,),
                   ],
                 )),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                 child: Container(width: mywidth, height: myheight/17,
                   child: MaterialButton(onPressed: () {
                     login(emailcontroller.text.toString(),passwordcontroller.text.toString());
                   },
                   child: Text('Login now', style: textStyleW700.copyWith(color: Colors.black)),
                   color: Colors.yellow,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),
                 ),
               ),
                Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                 child: Container(width: mywidth, height: myheight/17,
                   child: MaterialButton(onPressed: () {
                      signInWithGoogle(); 
                   },
                   child: Row(
                     children: [
                       Image.asset('assets/google1.png',scale: 10,),
                       Padding(
                         padding: const EdgeInsets.only(left: 80),
                         child: Text('Continue with google', style: textStyleW700,),
                       ),
                     ],
                   ),
                   color: const Color.fromARGB(255, 51, 51, 51),
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:20),
                 child: Text("Haven't signed up yet?",style: textstylegrey,),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:10),
                 child: GestureDetector(
                 onTap: () {
                  router.go('/navigation/signin/registration');
                   //Navigator.push(context, MaterialPageRoute(builder:(context) => Registration(),));
                 },
                  child: Text("Create Account",style: TextStyle(color: Colors.yellow),),
                  ),
               )
            ],
          ),),
        ),
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

  login(String email, String password)async{
    if(email==''&& password==''){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('enter required fields')));
    }
    else{
      // ignore: unused_local_variable
      UserCredential? usercredential;
      try{
        usercredential= await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value)
        // ignore: body_might_complete_normally_nullable
        {
          router.go('/navigation');

         // Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnavigation(),));
        });
      }
      on FirebaseAuthException catch(e){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${e}')));
      }
    }
  }
}