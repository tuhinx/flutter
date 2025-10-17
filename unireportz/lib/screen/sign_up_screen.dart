import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unireportz/theme/colors.dart';
import 'package:unireportz/theme/strings.dart';
import 'package:unireportz/theme/style.dart';
import 'package:unireportz/theme/theme_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  // Sign Up Welcome
                  Text(
                    AppStrings.welcome,
                    style: CustomStyle.heading1(themeController),
                  ),
                  // Sign Up Subtitle
                  Text(
                    AppStrings.appSubTitle,
                    style: CustomStyle.subtitle(themeController),
                  ),
                  SizedBox(height: 60),

                  // Sign Up Form
                  Form(
                    child: Column(
                      children: [
                        // Sign Up Email Field
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Email"),
                            hint: Text("Enter your email"),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Sign Up Password Field
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Password"),
                            hint: Text("Enter your password"),
                            border: OutlineInputBorder(),
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
