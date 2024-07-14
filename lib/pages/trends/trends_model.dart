import '/components/top_nav_widget.dart';
import '../../flutter_nav/flutter_flow_theme.dart';
import '../../flutter_nav/flutter_flow_util.dart';
import '../../flutter_nav/flutter_flow_widgets.dart';
import 'trends_widget.dart' show TrendsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TrendsModel extends FlutterFlowModel<TrendsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopNav component.
  late TopNavModel topNavModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
  }
}
