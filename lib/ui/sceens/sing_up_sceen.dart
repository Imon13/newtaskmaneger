import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart.';
import 'package:maneger/ui/utility/app_colors.dart';
import 'package:maneger/ui/weidgets/background_weidgets.dart';

class SingUpSceen extends StatefulWidget {
  const SingUpSceen({super.key});

  @override
  State<SingUpSceen> createState() => _SingInSceenState();
}

class _SingInSceenState extends State<SingUpSceen> {
  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _passwordTEcontroller = TextEditingController();
  final TextEditingController _firstNameTEcontroller = TextEditingController();
  final TextEditingController _lastNameTEcontroller = TextEditingController();
  final TextEditingController _mobileTEcontroller = TextEditingController();

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
              Text("Join With Us",style: Theme.of(context).textTheme.titleLarge,),
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
                controller: _firstNameTEcontroller,
                decoration: InputDecoration(
                    hintText: 'FirstName'
                ),

              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _lastNameTEcontroller,
                decoration: InputDecoration(
                    hintText: 'LastName'
                ),

              ),
              const SizedBox(height: 8,),
              TextFormField(
                controller: _mobileTEcontroller,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    hintText: 'Mobile'
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
                      text: "Don't have an account?",
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
    _passwordTEcontroller.dispose();
    _emailTEcontroller.dispose();
    _mobileTEcontroller.dispose();
    _lastNameTEcontroller.dispose();
    _firstNameTEcontroller.dispose();
  }
}
