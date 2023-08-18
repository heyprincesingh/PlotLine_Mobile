import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buttonScreen extends StatelessWidget {
  const buttonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb8b8b8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Stack(
            children: [
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
              PositionedDirectional(
                top: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12,right: 12),
                      child: SizedBox(
                        height: 10 + 0,
                        width: 20 + 0,
                        child: CustomPaint(
                          foregroundPainter: tooltipTriangle(),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color(0xff212121),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                            child: Text(
                              "Tooltip text goes here + ${MediaQuery.of(context).size.width}",
                              style: GoogleFonts.barlow(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buttons(int i) {
    return SizedBox(
      key: key,
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
          style: GoogleFonts.barlow(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
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
