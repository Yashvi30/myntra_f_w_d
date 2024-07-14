import '/components/store_list_widget.dart';
import '/components/top_nav_widget.dart';
import '../../flutter_nav/flutter_flow_animations.dart';
import '../../flutter_nav/flutter_flow_theme.dart';
import '../../flutter_nav/flutter_flow_util.dart';
import '../../flutter_nav/flutter_flow_widgets.dart';
import 'dart:math';
import 'stores_widget.dart' show StoresWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StoresModel extends FlutterFlowModel<StoresWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // Model for StoreList component.
  late StoreListModel storeListModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    storeListModel = createModel(context, () => StoreListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    storeListModel.dispose();
  }
}
