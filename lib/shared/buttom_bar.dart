import 'package:flutter/material.dart';

class ButtonBarWidget extends StatefulWidget {
  const ButtonBarWidget({super.key});

  @override
  State<ButtonBarWidget> createState() => _ButtonBarWidgetState();
}

class _ButtonBarWidgetState extends State<ButtonBarWidget> {
  String nameSelected = "discover";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            item(Icons.explore, 'Discover'),
            item(Icons.calendar_month, 'Appointments'),
            item(Icons.person, 'Profile'),
          ],
        ),
      ),
    );
  }

  InkWell item(IconData icon, String name) {
    return InkWell(
      onTap: () {
        setState(() {
          nameSelected = name.toLowerCase();
        });
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: nameSelected == name.toLowerCase()
                ? Colors.black
                : Colors.black.withOpacity(0.2),
          ),
          Text(
            name,
            style: TextStyle(
              color: nameSelected == name.toLowerCase()
                  ? Colors.black
                  : Colors.black.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
