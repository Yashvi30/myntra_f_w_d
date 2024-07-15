import 'package:myntra_f_w_d/Chat_components/Groupnames/Groupnames_widget.dart';
import 'package:myntra_f_w_d/Chat_components/arrow1/arrow1_model.dart';

import '/backend/backend.dart';
import '/components/arrow1_widget.dart';
import '/flutter_nav/flutter_flow_theme.dart';
import '/flutter_nav/flutter_flow_util.dart';
import 'groupnames_widget.dart' show GroupnamesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GroupnamesModel extends FlutterFlowModel<GroupnamesWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for arrow1 component.
  late Arrow1Model arrow1Model;

  @override
  void initState(BuildContext context) {
    arrow1Model = createModel(context, () => Arrow1Model());
  }

  @override
  void dispose() {
    arrow1Model.dispose();
  }
}
