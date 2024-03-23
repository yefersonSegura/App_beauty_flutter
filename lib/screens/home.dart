import 'package:app_beauty/shared/buttom_bar.dart';
import 'package:app_beauty/shared/my_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage(MyAssets.profile),
          ),
        ),
        title: Text(
          'Victoria',
          style: GoogleFonts.aclonica(fontWeight: FontWeight.w100),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search_sharp, size: 30),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications, size: 30),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  'Discover',
                  style: GoogleFonts.aclonica(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    optionTop(MyAssets.vista, 'Eyes'),
                    optionTop(MyAssets.maquillaje, 'Make up'),
                    optionTop(MyAssets.tijeras, 'Haircut'),
                    optionTop(MyAssets.secadorPelo, 'Hairstyle'),
                    optionTop(MyAssets.tinteCabello, 'HairColor'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  'Nearyou',
                  style: GoogleFonts.aclonica(
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              cardSpa(
                size,
                MyAssets.sp1,
                'ZenVibe Spa',
                '123 Serenity Blvd, Peaceful Springs',
              ),
              cardSpa(
                size,
                MyAssets.sp2,
                'PureBliss Spa',
                '456 Harmony Street, Serene Valley',
              ),
              cardSpa(
                size,
                MyAssets.sp3,
                'SereneScape Spa',
                '789 Tranquility Lane, Zenith City',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ButtonBarWidget(),
    );
  }

  Padding cardSpa(Size size, String image, String name, String direction) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: size.width,
        height: 285,
        child: Column(
          children: [
            Container(
              height: 200,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: GoogleFonts.aclonica(
                                  fontSize: 15,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(direction)
                            ],
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Center(
                            child: Text(
                              'Map View',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 20,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            infoCardSpa(Icons.star, '2,3(333)'),
                            infoCardSpa(Icons.calendar_month, '120+ bookings'),
                            infoCardSpa(Icons.monetization_on, "\$\$-\$\$\$"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding infoCardSpa(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          Icon(icon, size: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(text),
          ),
        ],
      ),
    );
  }

  Padding optionTop(String img, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 13),
      child: Column(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(100)),
            ),
            child: Transform.scale(
              scale: 0.5,
              child: Image.asset(
                img,
                width: 10,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(name),
          )
        ],
      ),
    );
  }
}
