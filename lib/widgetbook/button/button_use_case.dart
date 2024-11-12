import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'button.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Default Button',
  type: Button,
)
Center defaultActiveButton(BuildContext context) {
  return Center(
    child: Button(
        onPressed: () {},
        text: context.knobs.string(label: 'Label', initialValue: 'Siguiente'),
        color: context.knobs.color(
          label: 'Color',
          initialValue: Colors.blue,
        )),
  );
}
