import 'package:myntra_f_w_d/Chat_components/Groupnames/Goupnames_model.dart';
import 'package:myntra_f_w_d/Chat_components/arrow1/arrow1_widget.dart';

import '/backend/backend.dart';
import '/components/arrow1_widget.dart';
import '/flutter_nav/flutter_flow_theme.dart';
import '/flutter_nav/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'groupnames_model.dart';
export 'groupnames_model.dart';

class GroupnamesWidget extends StatefulWidget {
  const GroupnamesWidget({super.key});

  @override
  State<GroupnamesWidget> createState() => _GroupnamesWidgetState();
}

class _GroupnamesWidgetState extends State<GroupnamesWidget> {
  late GroupnamesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GroupnamesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Container(
                width: 50,
                height: 4,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Wishlists',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Sora',
                          letterSpacing: 0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: StreamBuilder<List<UsersRecord>>(
                      stream: queryUsersRecord(
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<UsersRecord> containerUsersRecordList =
                            snapshot.data!;

                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final containerUsersRecord =
                            containerUsersRecordList.isNotEmpty
                                ? containerUsersRecordList.first
                                : null;
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 12, 8, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    containerUsersRecord!.photoUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 150, 0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        containerUsersRecord?.displayName,
                                        'Fashion Fluenzers',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0,
                                          ),
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.arrow1Model,
                                  updateCallback: () => setState(() {}),
                                  child: Arrow1Widget(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 8, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1495121605193-b116b5b9c5fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMnx8ZmFzaGlvbnxlbnwwfHx8fDE3MjA4NzY4ODh8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 150, 0),
                              child: Text(
                                'Friends!          ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Color(0xFF7C8791),
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 8, 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1528916451049-e5d097b61db2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxnaXJsc3xlbnwwfHx8fDE3MjA4NzcwMDZ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 150, 0),
                              child: Text(
                                'FashionFluenzers',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              color: Color(0xFF7C8791),
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

queryUsersRecord({required bool singleRecord}) {}

class UsersRecord {
  String? displayName;

  late String photoUrl;
}
