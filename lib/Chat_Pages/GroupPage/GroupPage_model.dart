import '/backend/backend.dart';
import '/flutter_nav/flutter_flow_icon_button.dart';
import '/flutter_nav/flutter_flow_theme.dart';
import '/flutter_nav/flutter_flow_util.dart';
import '/flutter_nav/flutter_flow_widgets.dart';
import 'groups_page_widget.dart' show GroupsPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GroupsPageModel extends FlutterFlowModel<GroupsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
