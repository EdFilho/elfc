import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

MaskTextInputFormatter maskPhone = MaskTextInputFormatter(
  mask: '(##) #####-####',
  filter: {"#": RegExp(r'[0-9]')},
  type: MaskAutoCompletionType.lazy,
);
