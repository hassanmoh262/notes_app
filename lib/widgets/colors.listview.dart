import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActvie, required this.color});
  final bool isActvie;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActvie
        ? Center(
            child: CircleAvatar(
              radius: 44,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 36, backgroundColor: color),
            ),
          )
        : CircleAvatar(radius: 36, backgroundColor: color);
  }
}

class ColorListview extends StatefulWidget {
  const ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.lightGreen,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.amberAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActvie: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
