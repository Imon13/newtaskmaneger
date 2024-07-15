import 'package:flutter/material.dart.';
import 'package:flutter_svg/svg.dart';
import 'package:maneger/ui/sceens/sing_in_sceen.dart';
import 'package:maneger/ui/weidgets/background_weidgets.dart';


class SplashSceen extends StatefulWidget {
  const SplashSceen({super.key});

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  void initState() {
    super.initState();
    _moveToNextSceen();
  }
  Future<void> _moveToNextSceen() async{
    await Future.delayed(Duration(seconds: 3));
   if (mounted){
     Navigator.pushReplacement(context,
         MaterialPageRoute(builder: (context)=>SingInSceen()
         )
     );
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWeidgets(
        child: Center(child: SvgPicture.asset('assets/images/logo.svg',width: 150,)),
      )
    ) ;
  }
}
