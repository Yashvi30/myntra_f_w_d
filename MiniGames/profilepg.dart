import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: GradientText(
            'Your Avatar',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'Space Grotesk',
                  fontSize: 17,
                  letterSpacing: 0,
                ),
            colors: [Color(0xFF403238), Color(0xFF2D262E)],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.network(
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/myntraa-zwnkrc/assets/p3cdavdj9ib7/WhatsApp_Image_2024-07-14_at_7.51.59_PM.jpeg',
                            width: 376,
                            height: 489,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 1.2),
                              child: Container(
                                width: 392,
                                height: 237,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDBDBDB),
                                  borderRadius: BorderRadius.circular(0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    width: 0.05,
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Align(
                                alignment: AlignmentDirectional(0.22, 0.86),
                                child: Container(
                                  width: 341,
                                  height: 64,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0,
                                          2,
                                        ),
                                        spreadRadius: 1,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.4,
                              child: Align(
                                alignment: AlignmentDirectional(0.09, 0.61),
                                child: Container(
                                  width: 341,
                                  height: 64,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0,
                                          2,
                                        ),
                                        spreadRadius: 1,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(6),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.18, 0.57),
                              child: GradientText(
                                'View outfits',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Space Grotesk',
                                      fontSize: 20,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                colors: [Color(0xFFF4710C), Color(0xFFF4710C)],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.82, 0.59),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/myntraa-zwnkrc/assets/a83f6puoq4et/image-removebg-preview_(4).png',
                            width: 68,
                            height: 62,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.82, 0.38),
                        child: GradientText(
                          'Aimers',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                          colors: [
                            FlutterFlowTheme.of(context).primaryText,
                            FlutterFlowTheme.of(context).primaryText
                          ],
                          gradientDirection: GradientDirection.ltr,
                          gradientType: GradientType.linear,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.76, 0.82),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/myntraa-zwnkrc/assets/v7e5y2vp1n2g/image-removebg-preview_(5).png',
                            width: 36,
                            height: 39,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.22, 0.8),
                        child: GradientText(
                          'Edit Avatar',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Space Grotesk',
                                    fontSize: 20,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          colors: [Color(0xFFF4710C), Color(0xFFF4710C)],
                          gradientDirection: GradientDirection.ltr,
                          gradientType: GradientType.linear,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
