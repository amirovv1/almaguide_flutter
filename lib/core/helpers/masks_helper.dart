import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final maskFormatter = MaskTextInputFormatter(
    mask: '+7##########', type: MaskAutoCompletionType.lazy);
final MaskTextInputFormatter emailMaskFormatter = MaskTextInputFormatter(
  filter: {"#": RegExp(r'[a-zA-Z0-9@._]')}, // Allowed characters
);

final MaskTextInputFormatter passwordMaskFormatter = MaskTextInputFormatter(
  filter: {"#": RegExp(r'[a-zA-Z0-9@#$%^&+=]')}, // Allowed characters
);