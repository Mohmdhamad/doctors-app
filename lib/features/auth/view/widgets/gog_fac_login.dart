import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class GogFacLogin extends StatelessWidget {
  const GogFacLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: AppColors.white,
            elevation: 10,
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/google.svg'),
                  SizedBox(width: 10,),
                  Text('Google',
                    style: bodyStyle(),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Card(
            color: AppColors.white,
            elevation: 10,
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/facebook.svg'),
                  SizedBox(width: 10,),
                  Text('Facebook',
                    style: bodyStyle(),
                  ),
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}
