import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unireportz/theme/colors.dart';
import 'package:unireportz/theme/strings.dart';
import 'package:unireportz/theme/style.dart';
import 'package:unireportz/theme/theme_controller.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);

    return Scaffold(
      backgroundColor: themeController.isDarkMode
          ? AppColors.darkBackground
          : AppColors.lightBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomStyle.paddingWithAppHight(context),
          child: Column(
            children: [
              // For Header Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  // Login Welcome
                  Text(
                    AppStrings.welcome,
                    style: CustomStyle.heading1(themeController),
                  ),
                  // Login Subtitle
                  Text(
                    AppStrings.appSubTitle,
                    style: CustomStyle.subtitle(themeController),
                  ),
                  SizedBox(height: 50),

                  // Login Form
                  Form(
                    child: Column(
                      children: [
                        // Login Email Field
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline),
                            label: Text("Email"),
                            hint: Text("Enter your email"),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15))),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Login Password Field
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline),
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            label: Text("Password"),
                            hint: Text("Enter your password"),

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15)
                                )),
                          ),
                        ),

                        SizedBox(height: 8),
                        // Remember me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            SizedBox(width: 5),
                            Text(
                              AppStrings.rememberMe,
                              style: CustomStyle.subtitle(themeController),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),

                        // Login Submit Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: CustomStyle.elevatedButtonStyle(
                              themeController,
                            ),
                            child: Text(
                              AppStrings.loginSubmit,
                              style: CustomStyle.elevatedButtonTextStyle(
                                themeController,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),
                        // Sign Up Button
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            style: CustomStyle.outlinedButtonStyle(
                              themeController,
                            ),
                            onPressed: () {},
                            child: Text(
                              AppStrings.signUp,
                              style: CustomStyle.outlinedButtonTextStyle(
                                themeController,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
