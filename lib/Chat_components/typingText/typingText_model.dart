import 'package:myntra_f_w_d/Chat_components/typingText/typingText_widget.dart';

import '/flutter_nav/flutter_flow_icon_button.dart';
import '/flutter_nav/flutter_flow_theme.dart';
import '/flutter_nav/flutter_flow_util.dart';
import 'typing_text_widget.dart' show TypingTextWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TypingTextModel extends FlutterFlowModel<TypingTextWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
