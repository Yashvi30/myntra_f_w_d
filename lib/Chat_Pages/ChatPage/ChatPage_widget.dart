import 'package:myntra_f_w_d/Chat_components/AddToWishlist/AddToWishlist_Widget.dart';
import 'package:myntra_f_w_d/Chat_components/groupnameTab/groupnameTab_widget.dart';
import 'package:myntra_f_w_d/Chat_components/typingText/typingText_widget.dart';

import '/components/AddToWishlist_widget.dart';
import '/components/groupnameTab_widget.dart';
import '/components/typingText_widget.dart';
import '/flutter_nav/flutter_flow_icon_button.dart';
import '/flutter_nav/flutter_flow_theme.dart';
import '/flutter_nav/flutter_flow_util.dart';
import '/flutter_nav/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'ChatPage_model.dart';
export 'ChatPage_model.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({super.key});

  @override
  State<ChatPageWidget> createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  late ChatPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatPageModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Group Discussion',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Sora',
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 610),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(
                                0,
                                2,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2,
                          ),
                        ),
                        child: Stack(
                          children: [
                            wrapWithModel(
                              model: _model.groupnameTabModel,
                              updateCallback: () => setState(() {}),
                              child: GroupnameTabWidget(),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.94, 1.08),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 10, 10),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 20,
                                  borderWidth: 1,
                                  buttonSize: 40,
                                  fillColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  icon: Icon(
                                    Icons.add_card,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24,
                                  ),
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: Container(
                                              height: 400,
                                              child: AddToWishlistWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.98),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.typingTextModel,
                        updateCallback: () => setState(() {}),
                        child: TypingTextWidget(),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(240, 0, 20, 0),
                        child: Container(
                          width: 100,
                          height: 135,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1578587018452-892bacefd3f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8c2hpcnR8ZW58MHx8fHwxNzIwOTI1MTA2fDA&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 300,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.65, -0.74),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: 100,
                    height: 135,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://images.unsplash.com/flagged/photo-1585052201332-b8c0ce30972f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxkcmVzc3xlbnwwfHx8fDE3MjA4Nzk0NDd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.31),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: Text(
                        'Item added to the wishlist',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.23),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(250, 0, 20, 0),
                      child: Text(
                        'item aaded to the wishlist',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 10,
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.96, -0.74),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0x4BFF6A73),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 10, 0, 0),
                    child: Text(
                      '  TR',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.76, 0.52),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                      child: Text(
                        'Good Choice!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.99, -0.19),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0x4BFF6A73),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: Text(
                        'KD',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.94, 0.46),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0x4BFF6A73),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                    child: Text(
                      'LC',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
