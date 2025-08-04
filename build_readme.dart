import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'buttons/button_list.dart';

void main() {
  final buffer = StringBuffer();
  buffer.writeln("# mangayomi-custom-buttons");
  buffer.writeln("A collection of custom buttons for Mangayomi.");
  buffer.writeln();
  buffer.writeln(
    "Click on the buttons you want to add, it'll redirect you to the app.",
  );
  buffer.writeln();
  buffer.writeln("## Buttons");
  buffer.writeln();

  for (final button in buttonList) {
    final encoded = base64.encode(utf8.encode(jsonEncode(button.toJson())));
    buffer.writeln(
      "* [${button.title}](https://intradeus.github.io/http-protocol-redirector?r=mangayomi://add-button?button=$encoded) - ${button.description}",
    );
    buffer.writeln();
  }

  final file = File('README.md');
  file.writeAsStringSync(buffer.toString());

  log('README file created: ${file.path}');
}
