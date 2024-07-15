import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundWeidgets extends StatelessWidget {
  const BackgroundWeidgets({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/background.svg',
            height: double.maxFinite,
            width:double.maxFinite,
            fit: BoxFit.cover,

          ),
          child



        ],
      ),
    );
  }
}
