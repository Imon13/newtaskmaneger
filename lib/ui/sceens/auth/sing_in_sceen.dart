import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart.';
import 'package:maneger/ui/sceens/auth/email_varification_sceen.dart';
import 'package:maneger/ui/sceens/auth/sing_up_sceen.dart';
import 'package:maneger/ui/sceens/main_bottom_nav_sceen.dart';
import 'package:maneger/ui/utility/app_colors.dart';
import 'package:maneger/ui/weidgets/background_weidgets.dart';

class SingInSceen extends StatefulWidget {
  const SingInSceen({super.key});

  @override
  State<SingInSceen> createState() => _SingInSceenState();
}

class _SingInSceenState extends State<SingInSceen> {
  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _passwordTEcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWeidgets(child:
      SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80,),
              Text("Get Started With",style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 10,),
              TextFormField(
                controller: _emailTEcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email'
                ),
        
              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _passwordTEcontroller,
                decoration: InputDecoration(
                    hintText: 'Password'
                ),
        
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                _onTapNextButton();
              },
                  child: Icon(Icons.arrow_circle_right_outlined)
              ),
            const SizedBox(height: 30,),
              Center(
                child: Column(
                  children: [
                    TextButton(onPressed: (){
                      _onTapForgotPassword();
                    },
                        child: Text('Forget Password')),
                    RichText(text:TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5
                      ),
                      text: "Don't have an account?",
                      children: [
                        TextSpan(
                          style: TextStyle(
                            color: AppColors.themeColor,

                          ),
                          text: "Sing Up",
                          recognizer: TapGestureRecognizer()..onTap=(){
                            _onTapSingUpButton();

                          }
                        )
                      ]
                    )),
                  ],
                ),
              )

            ],
          ),
        ),
      ))),
    );
  }
  void _onTapSingUpButton() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUpSceen()));
  }
  void _onTapForgotPassword() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVarificationSceen()));
  }
  void _onTapNextButton() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainBottomNavSceen()));
  }
  @override
  void dispose() {
    super.dispose();
    _passwordTEcontroller.dispose();
    _emailTEcontroller.dispose();
  }
}
