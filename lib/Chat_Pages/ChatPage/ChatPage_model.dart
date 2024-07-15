import 'package:myntra_f_w_d/Chat_Pages/ChatPage/ChatPage_model.dart';
import 'package:myntra_f_w_d/Chat_Pages/ChatPage/ChatPage_model.dart';
import 'package:myntra_f_w_d/Chat_Pages/ChatPage/ChatPage_model.dart';
import 'package:myntra_f_w_d/Chat_Pages/ChatPage/ChatPage_widget.dart';
import 'package:myntra_f_w_d/Chat_components/groupnameTab/groupnameTab_model.dart';
import 'package:myntra_f_w_d/Chat_components/typingText/typingText_model.dart';

import '/components/AddToWishlist_widget.dart';
import '/components/groupnameTab_widget.dart';
import '/components/typingText_widget.dart';
import '/flutter_nav/flutter_flow_icon_button.dart';
import '/flutter_nav/flutter_flow_theme.dart';
import '/flutter_nav/flutter_flow_util.dart';
import '/flutter_nav/flutter_flow_widgets.dart';
import 'ChatPage_model.dart';
import 'ChatPage_widget.dart' show ChatPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for groupnameTab component.
  late GroupnameTabModel groupnameTabModel;
  // Model for typingText component.
  late typingTextModel typingTextModel;

  @override
  void initState(BuildContext context) {
    groupnameTabModel = createModel(context, () => GroupnameTabModel());
    typingTextModel = createModel(context, () => TypingTextModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    groupnameTabModel.dispose();
    typingTextModel.dispose();
  }
}

class typingTextModel {}
