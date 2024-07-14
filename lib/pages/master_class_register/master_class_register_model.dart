import '../../flutter_nav/flutter_flow_icon_button.dart';
import '../../flutter_nav/flutter_flow_theme.dart';
import '../../flutter_nav/flutter_flow_util.dart';
import '../../flutter_nav/flutter_flow_widgets.dart';
import 'master_class_register_widget.dart' show MasterClassRegisterWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MasterClassRegisterModel
    extends FlutterFlowModel<MasterClassRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
