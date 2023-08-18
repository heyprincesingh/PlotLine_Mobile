import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plotline_mobile/view/buttonScreen.dart';
import 'package:plotline_mobile/model/saveDataModel.dart';
import 'package:plotline_mobile/controller/formScreenController.dart';

class formScreen extends StatelessWidget {
  const formScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(formScreenController());

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            screenText("Target Element"),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffd9d9d9), width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: ValueListenableBuilder<String>(
                valueListenable: controller.selectedOption.value,
                builder: (context, value, child) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: DropdownButton<String>(
                      value: value,
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xffd9d9d9),
                      ),
                      iconSize: 34,
                      elevation: 1,
                      underline: SizedBox(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      dropdownColor: Color(0xfff5f5f5),
                      onChanged: (a) {
                        controller.selectedOption.value.value = a.toString();
                      },
                      items: <String>[
                        'Button 1',
                        'Button 2',
                        'Button 3',
                        'Button 4',
                        'Button 5'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 110,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
            ),
            screenText("Tooltip text"),
            screenInput(context, MediaQuery.of(context).size.width - 40,
                TextInputType.text, controller.tooltipTextController.value),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    screenText("Text Size"),
                    screenInput(
                      context,
                      MediaQuery.of(context).size.width / 2 - 40,
                      TextInputType.number,
                      controller.textSizeController.value,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    screenText("Padding"),
                    screenInput(
                      context,
                      MediaQuery.of(context).size.width / 2 - 40,
                      TextInputType.number,
                      controller.paddingController.value,
                    ),
                  ],
                )
              ],
            ),
            screenText("Text Colour"),
            screenInput(
              context,
              MediaQuery.of(context).size.width - 40,
              TextInputType.text,
              controller.textColorController.value,
            ),
            screenText("Background Colour"),
            screenInput(
              context,
              MediaQuery.of(context).size.width - 40,
              TextInputType.text,
              controller.backgroundColorController.value,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    screenText("Corner Radius"),
                    screenInput(
                      context,
                      MediaQuery.of(context).size.width / 2 - 40,
                      TextInputType.number,
                      controller.cornerRadiusController.value,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    screenText("Tooltip width"),
                    screenInput(
                      context,
                      MediaQuery.of(context).size.width / 2 - 40,
                      TextInputType.number,
                      controller.tooltipWidthController.value,
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    screenText("Arrow width"),
                    screenInput(
                      context,
                      MediaQuery.of(context).size.width / 2 - 40,
                      TextInputType.number,
                      controller.arrowWidthController.value,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    screenText("Arrow height"),
                    screenInput(
                      context,
                      MediaQuery.of(context).size.width / 2 - 40,
                      TextInputType.number,
                      controller.arrowHeightController.value,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  // width: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xff0958d9),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    onPressed: () {
                      final myformData = MyFormData(
                        selectedOption: controller.selectedOption.value.value,
                        tooltipText: controller.tooltipTextController.value.text,
                        textSize: double.parse(controller.textSizeController.value.text),
                        padding: double.parse(controller.paddingController.value.text),
                        textColor: controller.textColorController.value.text,
                        backgroundColor: controller.backgroundColorController.value.text,
                        cornerRadius: double.parse(controller.cornerRadiusController.value.text),
                        tooltipWidth: double.parse(controller.tooltipWidthController.value.text),
                        arrowWidth: double.parse(controller.arrowWidthController.value.text),
                        arrowHeight: double.parse(controller.arrowHeightController.value.text),
                      );
                      controller.saveFormData(myformData);
                    },
                    child: Text(
                      "Render Tooltip",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container screenInput(BuildContext context, double width, TextInputType type,
      TextEditingController controller) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffd9d9d9), width: 1),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: TextFormField(
            controller: controller,
            cursorColor: Colors.black,
            maxLines: 1,
            minLines: 1,
            keyboardType: type,
            decoration: InputDecoration.collapsed(
              hintText: type == TextInputType.number ? "0" : "Input",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
                color: Color(0xffbfbfbf),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding screenText(String text) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        text,
        style: GoogleFonts.barlow(
          fontSize: 22,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
