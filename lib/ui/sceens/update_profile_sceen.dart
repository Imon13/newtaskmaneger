import 'package:flutter/material.dart.';
import 'package:maneger/ui/weidgets/background_weidgets.dart';
import 'package:maneger/ui/weidgets/profile_appber.dart';

class UpdateProfileSceen extends StatefulWidget {
  const UpdateProfileSceen({super.key});

  @override
  State<UpdateProfileSceen> createState() => _UpdateProfileSceenState();
}

class _UpdateProfileSceenState extends State<UpdateProfileSceen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _phoneNumberTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppber(context,true),
      body: BackgroundWeidgets(child:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 48,),
                Text("Update Profile",style: Theme.of(context).textTheme.titleLarge,),
                const SizedBox(height: 16,),
                _buildPhotoPicker(),
                const SizedBox(height: 8,),
                TextFormField(
                  controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  controller: _firstNameTEController,
                  decoration: InputDecoration(
                      hintText: 'FirstName'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  controller: _lastNameTEController,
                  decoration: InputDecoration(
                      hintText: 'LastName'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  controller: _phoneNumberTEController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: 'PhoneNumber'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  controller: _passwordTEController,
                  decoration: InputDecoration(
                      hintText: 'Password'
                  ),
                ),
                const SizedBox(height: 16,),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_right)),
                const SizedBox(height: 8,),
                    
                    
              ],
                    
            ),
          ),
        ),
      )),
    );

  }

  Widget _buildPhotoPicker() {
    return Container(
            width: double.maxFinite,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,

            ),
            alignment: Alignment.centerLeft,
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8)

                ),
                color: Colors.grey,

              ),
              alignment: Alignment.center,
              child: Text('Photo',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white

              ),),

            ),

          );
  }
  @override
  void dispose() {
    super.dispose();
    _passwordTEController.dispose();
    _phoneNumberTEController.dispose();
    _lastNameTEController.dispose();
    _firstNameTEController.dispose();
    _emailTEController.dispose();
  }
}
