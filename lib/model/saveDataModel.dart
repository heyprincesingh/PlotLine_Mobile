class MyFormData {
  final String selectedOption;
  final String tooltipText;
  final double textSize;
  final double padding;
  final String textColor;
  final String backgroundColor;
  final double cornerRadius;
  final double tooltipWidth;
  final double arrowWidth;
  final double arrowHeight;

  MyFormData({
    required this.selectedOption,
    required this.tooltipText,
    required this.textSize,
    required this.padding,
    required this.textColor,
    required this.backgroundColor,
    required this.cornerRadius,
    required this.tooltipWidth,
    required this.arrowWidth,
    required this.arrowHeight,
  });

  Map<String, dynamic> toJson() {
    return {
      'selectedOption': selectedOption,
      'tooltipText': tooltipText,
      'textSize': textSize,
      'padding': padding,
      'textColor': textColor,
      'backgroundColor': backgroundColor,
      'cornerRadius': cornerRadius,
      'tooltipWidth': tooltipWidth,
      'arrowWidth': arrowWidth,
      'arrowHeight': arrowHeight,
    };
  }
}
