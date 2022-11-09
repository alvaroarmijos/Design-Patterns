import 'package:flutter/material.dart';

class UsefulWidgetBuilder {
  String? label;
  String? content;
  TextAlign? textAlign;
  Color? color;
  Color? textColor;
  Color? borderColor;

  UsefulWidgetBuilder();

  UsefulWidget build() {
    return UsefulWidget(this);
  }
}

class UsefulWidget extends StatelessWidget {
  final String? label;
  final String? content;
  final TextAlign? textAlign;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;

  UsefulWidget(
    UsefulWidgetBuilder builder, {
    super.key,
  })  : label = builder.label,
        content = builder.content,
        textAlign = builder.textAlign,
        color = builder.color,
        textColor = builder.textColor,
        borderColor = builder.borderColor;

  @override
  Widget build(BuildContext context) {
    Widget? title;
    if (label != null) {
      title = Text(
        label!,
        style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
      );
    }

    Widget? message;
    if (content != null) {
      message = Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(content!, style: TextStyle(color: textColor)),
      );
    }

    BoxDecoration boxDecoration = BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: borderColor != null ? Border.all(color: borderColor!) : null);

    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: boxDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (label != null) title!,
          if (content != null) message!,
        ],
      ),
    );
  }
}
