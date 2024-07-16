import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart.';
import 'package:maneger/ui/sceens/auth/pin_varification_sceen.dart';
import 'package:maneger/ui/sceens/auth/sing_in_sceen.dart';
import 'package:maneger/ui/utility/app_colors.dart';
import 'package:maneger/ui/weidgets/background_weidgets.dart';

class ResetPasswordSceen extends StatefulWidget {
  const ResetPasswordSceen({super.key});

  @override
  State<ResetPasswordSceen> createState() => _SingInSceenState();
}

class _SingInSceenState extends State<ResetPasswordSceen> {
  final TextEditingController _passwordTEcontroller = TextEditingController();
  final TextEditingController _confirmPasswordTEcontroller = TextEditingController();



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
              Text("Set Password",style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 10,),
              Text("Minimum length of paaaword 8 character with combination of later and number",style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(height: 10,),
              TextFormField(
                controller: _passwordTEcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Password'
                ),

              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: _confirmPasswordTEcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Confirm'
                ),

              ),

              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                _onTapConfirmButton();
              },
                  child: Text("Confirm")
              ),
              const SizedBox(height: 30,),
              _buildBackToSingInSceen(),


            ],
          ),
        ),
      ))),
    );
  }

  Widget  _buildBackToSingInSceen() {
    return Center(
      child:
      RichText(text:TextSpan(
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5
          ),
          text: "Have account?",
          children: [
            TextSpan(
                style: TextStyle(
                  color: AppColors.themeColor,

                ),
                text: "Sing In",
                recognizer: TapGestureRecognizer()..onTap=(){
                  _onTapSingIn();
                }
            )
          ]
      )),

    );
  }
  void _onTapSingIn(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SingInSceen()), (route)=>false);
  }
  void _onTapConfirmButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SingInSceen()), (route)=>false);
  }
  @override

  void dispose() {
    super.dispose();
    _passwordTEcontroller.dispose();
    _confirmPasswordTEcontroller.dispose();

  }
}
