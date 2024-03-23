import 'package:animator/animator.dart';
import 'package:app_beauty/routes/routes.dart';
import 'package:app_beauty/shared/my_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Animator(
            tween: Tween<double>(begin: 1, end: 1.2),
            duration: const Duration(seconds: 10),
            cycles: 0,
            builder: (context, anim, child) {
              return Transform.scale(
                scale: anim.value,
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(MyAssets.welcome),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: size.height * .4,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Your personal beauty care",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.aclonica(
                          fontSize: size.height * .050,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "One stop solutions for beauty care. You can buy all kind of beauty product from also you can book appointment for your beauty care.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamedAndRemoveUntil(AppRoute.homeScreen, (Route<dynamic> route) => false);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
                        child: Container(
                          width: size.width,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
