import 'package:fitness_app/const_page.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'onBoarding_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            children: [
              const Image(image: AssetImage(ImageConst.introImage)),
              Positioned(
                top: w * 0.08,
                right: w * 0.35,
                child : Text('БЕГ',style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: w*0.15,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4)
                    )
                  ]
                ),)
              ),
              Positioned(
                bottom: h * 0.1,
                right: w * 0.1,
                child : Column(
                  children: [
                    Text('Беги в Кирове',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: w*0.06,
                    )),
                    SizedBox(
                      width: w * 0.5,
                      child: Text('Бегай и зарабатывай в нашем приложении',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontWeight: FontWeight.w700,
                        fontSize: w*0.03,
                      )),
                    ),
                    SizedBox(height: h * 0.03),
                    InkWell(
                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const OnboardingPage())),
                      child: Container(
                        width: w * 0.8,
                        height: h * 0.07,
                        decoration: BoxDecoration(
                          color: ColorConst.buttonColor,
                          borderRadius: BorderRadius.circular(w * 0.04)
                        ),
                        child: Center(child: Text('Начать',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: w*0.05,
                        ),)),
                      ),
                    )
                  ],
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
