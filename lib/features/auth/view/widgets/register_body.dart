import 'package:flutter/material.dart';
import 'package:tasks/core/style/background.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:tasks/widgets/functions.dart';
import '../../../../core/style/text_style.dart';
import '../../../../models/validator.dart';
import '../../../../widgets/default_text_form.dart';
import '../screen/login_screen.dart';
import 'button.dart';
import 'gog_fac_login.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                spacing: 20.0,
                children: [
                  Text('Join us to start searching', style: titleStyle()),
                  Text(
                    'You can search course, apply course and find scholarship for abroad studies',
                    style: hashStyle(),
                    textAlign: TextAlign.center,
                  ),
                  GogFacLogin(),
                  CustomTextForm(
                    hintText: 'Name',
                    validate: MyValidators.displayNamevalidator,
                    radius: 20,
                  ),
                  CustomTextForm(
                    hintText: 'Email',
                    validate: MyValidators.emailValidator,
                    radius: 20,
                  ),
                  CustomTextForm(
                    hintText: 'Password',
                    validate: MyValidators.passwordValidator,
                    suffixIcon: Icons.visibility_off_outlined,
                    radius: 20.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, color: AppColors.grey, size: 15),
                      SizedBox(width: 5),
                      Text(
                        'I agree with the Terms of Service & Privacy Policy',
                        style: bodyStyle(textSize: 15, color: AppColors.grey),
                      ),
                    ],
                  ),
                  defaultButton(
                    context: context,
                    screen: HomeScreen(),
                    text: 'Sign Up',
                  ),
                  TextButton(
                    onPressed: () {
                      navigateTo(context, LoginScreen());
                    },
                    child: Text(
                      'Have an account ! Login now',
                      style: titleStyle(color: AppColors.teal, textSize: 19.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
