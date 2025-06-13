import 'package:flutter/material.dart';
import 'package:tasks/core/style/background.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/features/auth/view/screen/register_screen.dart';
import 'package:tasks/features/auth/view/widgets/text_form.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:tasks/widgets/functions.dart';
import '../../../../core/style/text_style.dart';
import '../../../../models/validator.dart';
import 'button.dart';
import 'gog_fac_login.dart';
class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
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
                    Text('Welcome back',
                      style: titleStyle(),
                    ),
                    Text('You can search course, apply course and find scholarship for abroad studies',
                      style: hashStyle(),
                      textAlign: TextAlign.center,
                    ),
                    GogFacLogin(),
                    DefaultTextForm( hintText: 'Email',validate: MyValidators.emailValidator,suffix: Icons.check,),
                    DefaultTextForm( hintText: 'Password',validate: MyValidators.passwordValidator,suffixIcon: Icons.visibility_off_outlined,),
                    defaultButton(context: context,screen: HomeScreen(),text: 'Login'),
                    TextButton(
                      onPressed: (){
                    } ,
                      child: Text(
                      'Forgot Password',
                      style: bodyStyle(color: AppColors.teal,
                        textSize: 17.0,
                      ),
                    ),
                    ),
                    SizedBox(height: 70,),
                    TextButton(
                      onPressed: (){
                        navigateTo(context, RegisterScreen());
                      },
                      child: Text(
                        'Don\'t Have an account ? Join us',
                        style: bodyStyle(color: AppColors.teal,
                          textSize: 17.0,
                        ),
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

