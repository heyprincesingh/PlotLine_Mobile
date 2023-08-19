import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotline_mobile/controller/buttonScreenController.dart';
import 'package:plotline_mobile/controller/colors.dart';

class buttonScreen extends StatelessWidget {
  buttonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(buttonScreenController());
    return Scaffold(
      backgroundColor: Color(0xffb8b8b8),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (controller.i < 6) controller.i++;
        },
        child: SafeArea(
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
                Obx(
                  () => controller.i == 1 && controller.data[0] != null
                      ? Positioned(
                          top: 65,
                          left: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: SizedBox(
                                  height:
                                      10 + double.parse(controller.data[0][8]),
                                  width:
                                      20 + double.parse(controller.data[0][9]),
                                  child: CustomPaint(
                                    foregroundPainter: tooltipUpTriangle(checkColor(controller.data[0][5])),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.parse(controller.data[0][7]),
                                decoration: BoxDecoration(
                                  color: checkColor(controller.data[0][5]),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      double.parse(controller.data[0][6]),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      double.parse(controller.data[0][3])),
                                  child: Center(
                                    child: Text(
                                      controller.data[0][1],
                                      style: GoogleFonts.barlow(
                                          fontSize: double.parse(
                                              controller.data[0][2]),
                                          color: checkColor(controller.data[0][4]),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : controller.i == 2 && controller.data[1] != null
                          ? Positioned(
                              top: 65,
                              right: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: SizedBox(
                                      height: 10 +
                                          double.parse(controller.data[1][8]),
                                      width: 20 +
                                          double.parse(controller.data[1][9]),
                                      child: CustomPaint(
                                        foregroundPainter: tooltipUpTriangle(checkColor(controller.data[1][5])),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.parse(controller.data[1][7]),
                                    decoration: BoxDecoration(
                                      color: checkColor(controller.data[1][5]),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          double.parse(controller.data[1][6]),
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          double.parse(controller.data[1][3])),
                                      child: Center(
                                        child: Text(
                                          controller.data[1][1],
                                          style: GoogleFonts.barlow(
                                              fontSize: double.parse(
                                                  controller.data[1][2]),
                                              color: checkColor(controller.data[1][4]),
                                              //Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : controller.i == 3 && controller.data[2] != null
                              ? Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 110),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: SizedBox(
                                          height: 10 +
                                              double.parse(
                                                  controller.data[2][8]),
                                          width: 20 +
                                              double.parse(
                                                  controller.data[2][9]),
                                          child: CustomPaint(
                                            foregroundPainter:
                                                tooltipUpTriangle(checkColor(controller.data[2][5])),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            double.parse(controller.data[2][7]),
                                        decoration: BoxDecoration(
                                            color: checkColor(controller.data[2][5]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(double.parse(
                                                    controller.data[2][6])))),
                                        child: Padding(
                                          padding: EdgeInsets.all(double.parse(
                                              controller.data[2][3])),
                                          child: Center(
                                            child: Text(
                                              controller.data[2][1],
                                              style: GoogleFonts.barlow(
                                                  fontSize: double.parse(
                                                      controller.data[2][2]),
                                                  color: checkColor(controller.data[2][4]),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : controller.i == 4 && controller.data[3] != null
                                  ? Positioned(
                                      bottom: 65,
                                      left: 0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: double.parse(
                                                controller.data[3][7]),
                                            decoration: BoxDecoration(
                                                color: checkColor(controller.data[3][5]),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(
                                                        double.parse(controller
                                                            .data[3][6])))),
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                  double.parse(
                                                      controller.data[3][3])),
                                              child: Center(
                                                child: Text(
                                                  controller.data[3][1],
                                                  style: GoogleFonts.barlow(
                                                      fontSize: double.parse(
                                                          controller.data[3]
                                                              [2]),
                                                      color: checkColor(controller.data[3][4]),
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: SizedBox(
                                              height: 10 +
                                                  double.parse(
                                                      controller.data[3][8]),
                                              width: 20 +
                                                  double.parse(
                                                      controller.data[3][9]),
                                              child: CustomPaint(
                                                foregroundPainter:
                                                    tooltipDownTriangle(checkColor(controller.data[3][5])),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : controller.i == 5 &&
                                          controller.data[4] != null
                                      ? Positioned(
                                          bottom: 65,
                                          right: 0,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: double.parse(
                                                    controller.data[4][7]),
                                                decoration: BoxDecoration(
                                                    color: checkColor(controller.data[4][5]),
                                                    borderRadius: BorderRadius
                                                        .all(Radius.circular(
                                                            double.parse(
                                                                controller
                                                                        .data[4]
                                                                    [6])))),
                                                child: Padding(
                                                  padding: EdgeInsets.all(
                                                      double.parse(controller
                                                          .data[4][3])),
                                                  child: Center(
                                                    child: Text(
                                                      controller.data[4][1],
                                                      style: GoogleFonts.barlow(
                                                          fontSize: double
                                                              .parse(controller
                                                                  .data[4][2]),
                                                          color: checkColor(controller.data[4][4]),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20, right: 20),
                                                child: SizedBox(
                                                  height: 10 +
                                                      double.parse(controller
                                                          .data[4][8]),
                                                  width: 20 +
                                                      double.parse(controller
                                                          .data[4][9]),
                                                  child: CustomPaint(
                                                    foregroundPainter:
                                                        tooltipDownTriangle(checkColor(controller.data[4][5])),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttons(int i) {
    final controller = Get.put(buttonScreenController());
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
        onPressed: () {
          controller.deleteData(i);
        },
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

class tooltipUpTriangle extends CustomPainter {
  final Color bgColor;

  tooltipUpTriangle(this.bgColor);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = bgColor//Color(0xff212121)
      ..strokeWidth = 0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * 1 / 2, 0);
    path.lineTo(0, size.height * 1);
    path.lineTo(size.width * 1, size.height * 1);
    path.close();

    canvas.drawPath(path, paint);

    final paint2 = Paint()
      ..color = bgColor//Color(0xff212121)
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class tooltipDownTriangle extends CustomPainter {
  final Color bgColor;

  tooltipDownTriangle(this.bgColor);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = bgColor
      ..strokeWidth = 0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 1, 0);
    path.lineTo(size.width * 1 / 2, size.height * 1);
    path.close();

    canvas.drawPath(path, paint);

    final paint2 = Paint()
      ..color = bgColor
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
