import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart.';
import 'package:maneger/ui/utility/app_colors.dart';
import 'package:maneger/ui/weidgets/background_weidgets.dart';

class EmailVarificationSceen extends StatefulWidget {
  const EmailVarificationSceen({super.key});

  @override
  State<EmailVarificationSceen> createState() => _SingInSceenState();
}

class _SingInSceenState extends State<EmailVarificationSceen> {
  final TextEditingController _emailTEcontroller = TextEditingController();


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
              Text("Your Email Address",style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 10,),
              Text("A 6 digits pin sends in your email",style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(height: 10,),
              TextFormField(
                controller: _emailTEcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Email'
                ),

              ),

              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){},
                  child: Icon(Icons.arrow_circle_right_outlined)
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
    Navigator.pop(context);
  }
  @override

  void dispose() {
    super.dispose();
    _emailTEcontroller.dispose();

  }
}
