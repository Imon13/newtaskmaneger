import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart.';
import 'package:maneger/ui/sceens/auth/reset_password_sceen.dart';
import 'package:maneger/ui/sceens/auth/sing_in_sceen.dart';
import 'package:maneger/ui/utility/app_colors.dart';
import 'package:maneger/ui/weidgets/background_weidgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVarificationSceen extends StatefulWidget {
  const PinVarificationSceen({super.key});

  @override
  State<PinVarificationSceen> createState() => _SingInSceenState();
}

class _SingInSceenState extends State<PinVarificationSceen> {
  final TextEditingController _pinTEController = TextEditingController();


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
              Text("Pin Varification",style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 10,),
              Text("A 6 digits pin sends in your email",style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(height: 24),
              _buildPinCodeTextField(),

              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                _onTapVarifyOtpButton();
              },
                  child: Text('Varify')
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
  Widget _buildPinCodeTextField() {
    return PinCodeTextField(
      length: 6,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedColor: AppColors.themeColor,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      keyboardType: TextInputType.number,
      enableActiveFill: true,
      controller: _pinTEController,
      appContext: context,
    );
  }
  void _onTapSingIn(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SingInSceen()), (route)=>false);
  }
  void _onTapVarifyOtpButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordSceen()) );
  }
  @override

  void dispose() {
    super.dispose();
    _pinTEController.dispose();

  }
}
