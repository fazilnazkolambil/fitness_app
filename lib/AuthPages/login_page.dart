import 'package:fitness_app/const_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool check = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.backgroundColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(w * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: h * 0.1,
                child: const Image(image: AssetImage(ImageConst.logo))),
            SizedBox(height: h * 0.1),
            Text('Авторизация',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: w * 0.04
            )),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(w * 0.03)
                )
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(w * 0.03)
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: check,
                      activeColor: ColorConst.buttonColor,
                      side: BorderSide(
                          color: Colors.white.withOpacity(0.1)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(w * 0.01)),
                      onChanged: (value) {
                        setState(() {
                          check = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: w * 0.25,
                        child: Text('Запомнить меня ',style: TextStyle(
                          color: Colors.white
                        ))),
                  ],
                ),
                const Text('Забыли пароль ?',style: TextStyle(
                  color: ColorConst.buttonColor
                ),)
              ],
            ),
            InkWell(
              onTap: () {

              },
              child: Container(
                width: w * 0.8,
                height: h * 0.07,
                decoration: BoxDecoration(
                    color: ColorConst.buttonColor,
                    borderRadius: BorderRadius.circular(w * 0.04)
                ),
                child: Center(child: Text('Войти',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: w*0.05,
                ),)),
              ),
            ),
            SizedBox(height: h * 0.01),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.white.withOpacity(0.2),
                    indent: w * 0.1,
                    endIndent: w * 0.03,
                    thickness: w * 0.003,
                  ),
                ),
                Text('Или продолжить с',style: TextStyle(
                  color: Colors.white.withOpacity(0.2),
                )),
                Expanded(
                  child: Divider(
                    color: Colors.white.withOpacity(0.2),
                    indent: w * 0.1,
                    endIndent: w * 0.03,
                    thickness: w * 0.003,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: w * 0.2,
                  height: w * 0.15,
                  decoration: BoxDecoration(
                    color: ColorConst.containerColor,
                    borderRadius: BorderRadius.circular(w * 0.03),
                    border: Border.all(color: Colors.white.withOpacity(0.2))
                  ),
                  child: Center(child: Image.asset(ImageConst.googleLogo,height: w * 0.06,)),
                ),
                Container(
                  width: w * 0.2,
                  height: w * 0.15,
                  decoration: BoxDecoration(
                    color: ColorConst.containerColor,
                    borderRadius: BorderRadius.circular(w * 0.03),
                    border: Border.all(color: Colors.white.withOpacity(0.2))
                  ),
                  child: Center(child: Image.asset(ImageConst.facebookLogo,height: w * 0.06,)),
                ),
                Container(
                  width: w * 0.2,
                  height: w * 0.15,
                  decoration: BoxDecoration(
                    color: ColorConst.containerColor,
                    borderRadius: BorderRadius.circular(w * 0.03),
                    border: Border.all(color: Colors.white.withOpacity(0.2))
                  ),
                  child: Center(child: Image.asset(ImageConst.twitterLogo,height: w * 0.06,)),
                ),
              ],
            ),
            SizedBox(height: h * 0.02),
            Text('Новый пользователь? ',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            Text('Зарегистрироваться',
              style: TextStyle(
                  color: ColorConst.buttonColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
