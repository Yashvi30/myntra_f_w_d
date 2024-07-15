import '/flutter_nav/flutter_flow_theme.dart';
import '/flutter_nav/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'arrow1_model.dart';
export 'arrow1_model.dart';

class Arrow1Widget extends StatefulWidget {
  const Arrow1Widget({super.key});

  @override
  State<Arrow1Widget> createState() => _Arrow1WidgetState();
}

class _Arrow1WidgetState extends State<Arrow1Widget> {
  late Arrow1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Arrow1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.chevron_right_rounded,
      color: Color(0xFF7C8791),
      size: 24,
    );
  }
}
