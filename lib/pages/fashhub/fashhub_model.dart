import '/components/masterclass_card_widget.dart';
import '/components/challenges_cards_widget.dart';
import '/components/top_nav_widget.dart';
import '../../flutter_nav/flutter_flow_animations.dart';
import '../../flutter_nav/flutter_flow_theme.dart';
import '../../flutter_nav/flutter_flow_util.dart';
import '../../flutter_nav/flutter_flow_widgets.dart';
import 'dart:math';
import 'fashhub_widget.dart' show FashhubWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FashhubModel extends FlutterFlowModel<FashhubWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // Model for MasterclassCard component.
  late MasterclassCardModel masterclassCardModel1;
  // Model for MasterclassCard component.
  late MasterclassCardModel masterclassCardModel2;
  // Model for MasterclassCard component.
  late MasterclassCardModel masterclassCardModel3;
  // Model for ChallengesCards component.
  late ChallengesCardsModel challengesCardsModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    masterclassCardModel1 = createModel(context, () => MasterclassCardModel());
    masterclassCardModel2 = createModel(context, () => MasterclassCardModel());
    masterclassCardModel3 = createModel(context, () => MasterclassCardModel());
    challengesCardsModel = createModel(context, () => ChallengesCardsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    masterclassCardModel1.dispose();
    masterclassCardModel2.dispose();
    masterclassCardModel3.dispose();
    challengesCardsModel.dispose();
  }
}
