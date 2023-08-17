import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class formScreen extends StatelessWidget {
  const formScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> selectedOption = ValueNotifier('Button 1');

    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
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
                valueListenable: selectedOption,
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
                        selectedOption.value = a.toString();
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
                TextInputType.text),
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
                        TextInputType.number),
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
                        TextInputType.number),
                  ],
                )
              ],
            ),
            screenText("Text Colour"),
            screenInput(context, MediaQuery.of(context).size.width - 40,
                TextInputType.text),
            screenText("Background Colour"),
            screenInput(context, MediaQuery.of(context).size.width - 40,
                TextInputType.text),
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
                        TextInputType.number),
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
                        TextInputType.number),
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
                        TextInputType.number),
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
                        TextInputType.number),
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
                    onPressed: () {},
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

  Container screenInput(BuildContext context, double width, TextInputType type) {
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
