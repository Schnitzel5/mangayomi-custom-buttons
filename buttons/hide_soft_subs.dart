import '../custom_button.dart';

CustomButton get autoHideSoftSubs => CustomButton(
  title: "Auto hide soft subs",
  description: "Automatically hide soft subs!",
  codePress: """-- ignore this""",
  codeStartup: """mp.set_property('sub-visibility', 'no')""",
);
