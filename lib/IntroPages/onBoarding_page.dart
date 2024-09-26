import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/const_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../AuthPages/login_page.dart';
import '../main.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    List activities = ['Бег','Walk', 'Run'];
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.backgroundColor,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right : 5),
            child: TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage())),
              child: const Text('Пропустить',style: TextStyle(
                  color: Colors.white)),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const Image(image: AssetImage(ImageConst.onBoardingImage)),
          SizedBox(height : h * 0.02),
          CarouselSlider.builder(
            carouselController: _controller,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                width: w * 0.7,
                decoration: BoxDecoration(
                  color: ColorConst.containerColor,
                  borderRadius: BorderRadius.circular(w * 0.2),
                  border: Border.all(color: Colors.white.withOpacity(0.2))
                ),
                child: Column(
                  children: [
                    SizedBox(height: h * 0.05),
                    Text(activities[realIndex],style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    )),
                    SizedBox(
                      height: w * 0.1,
                      width: w * 0.5,
                      child: Center(
                          child: AnimatedSmoothIndicator(
                              activeIndex: realIndex,
                              count: 3,
                              effect: ExpandingDotsEffect(
                                activeDotColor: ColorConst.dotColor,
                                dotColor: ColorConst.dotColor.withOpacity(0.3),
                                dotHeight: w * 0.01,
                                dotWidth: w * 0.015,))),
                    ),
                    InkWell(
                      onTap: () {
                        realIndex == 2
                            ? Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),))
                            : _controller.nextPage();
                      },
                      child: Container(
                        width: w * 0.3,
                        height: h * 0.06,
                        decoration: BoxDecoration(
                            color: ColorConst.buttonColor,
                            borderRadius: BorderRadius.circular(w * 0.04)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Далее',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: w*0.03,
                            )),
                            Icon(Icons.arrow_right_alt,color: Colors.white,size: w * 0.04,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            options: CarouselOptions(
              viewportFraction: 0.7,
              height: h * 0.35,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              enlargeFactor: 0.25,
            ),
          ),
          SizedBox(height: h * 0.02),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Уже есть аккаунт? ',style: TextStyle(
               color: Colors.white
              )),
              Text('Авторизоваться',style: TextStyle(
                color: ColorConst.buttonColor
              ),),
            ],
          )
        ],
      ),
    );
  }
}
