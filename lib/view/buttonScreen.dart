import 'package:flutter/material.dart';

class buttonScreen extends StatelessWidget {
  const buttonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double x = 425, y = 40;
    return Scaffold(
      backgroundColor: Color(0xffb8b8b8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Stack(
            children: [
              Positioned(
                top: x,
                right: y,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10 + 3,
                      width: 20 + 3,
                      child: CustomPaint(
                        foregroundPainter: tooltipTriangle(),
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color(0xff212121),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(child: Text("Tooltip text goes here", style: TextStyle(color: Colors.white, fontSize: 18),)),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: buttons(1),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: buttons(2),
              ),
              Center(
                child: buttons(3),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: buttons(4),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: buttons(5),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buttons(int i) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => Colors.white,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Button ${i}",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ),
    );
  }
}

class tooltipTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xff212121)
      ..strokeWidth = 0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * 1 / 2, 0);
    path.lineTo(0, size.height * 1);
    path.lineTo(size.width * 1, size.height * 1);
    path.close();

    canvas.drawPath(path, paint);

    final paint2 = Paint()
      ..color = Color(0xff212121)
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
