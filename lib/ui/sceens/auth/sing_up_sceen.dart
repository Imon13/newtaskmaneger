import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart.';
import 'package:maneger/data/models/network_response.dart';
import 'package:maneger/data/network_caller/network_caller.dart';
import 'package:maneger/data/utilities/urls.dart';
import 'package:maneger/ui/utility/app_colors.dart';
import 'package:maneger/ui/utility/app_constants.dart';
import 'package:maneger/ui/weidgets/background_weidgets.dart';
import 'package:maneger/ui/weidgets/snackber_massage.dart';

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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _showPassword  = false;
  bool _registrationInProcess = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWeidgets(child:
      SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                  validator: (String? value){
                    if(value?.trim().isEmpty ?? true){
                      return "Enter your email";
                    }
                    return null;
                  },

                ),
                const SizedBox(height: 8,),
                TextFormField(
                  controller: _firstNameTEcontroller,
                  decoration: InputDecoration(
                      hintText: 'FirstName'
                  ),
                  validator: (String? value){
                    if(value?.trim().isEmpty ?? true){
                      return "Enter your firstName";
                    }
                    return null;
                  },

                ),
                const SizedBox(height: 8,),
                TextFormField(
                  controller: _lastNameTEcontroller,
                  decoration: InputDecoration(
                      hintText: 'LastName'
                  ),
                  validator: (String? value){
                    if(value?.trim().isEmpty ?? true){
                      return "Enter your lastName";
                    }
                    return null;
                  },

                ),
                const SizedBox(height: 8,),
                TextFormField(
                  controller: _mobileTEcontroller,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      hintText: 'Mobile'
                  ),
                  validator: (String? value){
                    if(value?.trim().isEmpty ?? true){
                      return "Enter your mobileNumber";
                    }
                    return null;
                  },

                ),
                const SizedBox(height: 8,),
                TextFormField(
                  obscureText: _showPassword==false,
                  controller: _passwordTEcontroller,

                  decoration: InputDecoration(
                      hintText: 'Password',
                    suffixIcon: IconButton(onPressed:
                        (){
                      _showPassword = !_showPassword;
                      if(mounted){
                        setState(() {

                        });
                      }

                        },
                        icon: Icon( _showPassword ? Icons.visibility_off  : Icons.remove_red_eye))
                  ),
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return 'Enter your email address';
                    }
                    // if (AppConstants.emailRegExp.hasMatch(value!) ==
                    //     false) {
                    //   return 'Enter a valid email address';
                    // }
                    return null;
                  },
                ),


                SizedBox(height: 15,),
                Visibility(
                  visible: _registrationInProcess == false,
                  replacement: Center(
                      child: CircularProgressIndicator()
                  ),
                  child: ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      _register();

                    }
                  },
                      child: Icon(Icons.arrow_circle_right_outlined)
                  ),
                ),
                const SizedBox(height: 30,),
                _buildBackToSingInSceen(),


              ],
            ),
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
  void _register  () async {
    _registrationInProcess = true;
    setState(() {

    });
    Map<String ,dynamic> registerInput ={
      "email":_emailTEcontroller.text.trim(),
      "firstName":_firstNameTEcontroller.text.trim(),
      "lastName":_lastNameTEcontroller.text.trim(),
      "mobile":_mobileTEcontroller.text.trim(),
      "password":_passwordTEcontroller.text,
    };
    NetworkResponse response = await NetworkCaller.postRequest(Urls.registration,body: registerInput);
    _registrationInProcess = false;
    setState(() {

    });
    if(response.isSucces){
      _clearTextFeild();
      if(mounted){
        showSnackberMassage(context, 'Registration success');
      }
      else {
        if(mounted){
          showSnackberMassage(context, response.errorMassage ?? 'Rgistration failed');
        }
      }

    }

  }
  void _onTapSingIn(){
    Navigator.pop(context);
  }
  void _clearTextFeild(){
    _emailTEcontroller.clear();
    _passwordTEcontroller.clear();
    _lastNameTEcontroller.clear();
    _firstNameTEcontroller.clear();
    _mobileTEcontroller.clear();
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
