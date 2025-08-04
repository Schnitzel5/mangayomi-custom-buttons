import '../custom_button.dart';

CustomButton get forward85s => CustomButton(
  title: "+85 s",
  description: "The default button in the app.",
  codePress:
      """local intro_length = mp.get_property_native("user-data/current-anime/intro-length")
aniyomi.right_seek_by(intro_length)""",
  codeLongPress:
      """aniyomi.int_picker("Change intro length", "%ds", 0, 255, 1, "user-data/current-anime/intro-length")""",
  codeStartup: """function update_button(_, length)
  if length ~= nil then
    if length == 0 then
	  aniyomi.hide_button()
	  return
	else
	  aniyomi.show_button()
	end
    aniyomi.set_button_title("+" .. length .. " s")
  end
end

if \$isPrimary then
  mp.observe_property("user-data/current-anime/intro-length", "number", update_button)
end""",
);
