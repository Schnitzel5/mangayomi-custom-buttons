import '../custom_button.dart';

CustomButton get skipToSilence => CustomButton(
  title: "Smart Skip",
  description: "Auto-detect and skip intro, outro and more!",
  codePress: """mp.command("script-message", "skip-to-silence")""",
);
