class CustomButton {
  String title;

  String description;

  String codePress;

  String? codeLongPress;

  String? codeStartup;

  CustomButton({
    required this.title,
    required this.description,
    required this.codePress,
    this.codeLongPress = "",
    this.codeStartup = "",
  });

  Map<String, dynamic> toJson() => {
    'title': title,
    'codePress': codePress,
    'codeLongPress': codeLongPress,
    'codeStartup': codeStartup,
  };
}
