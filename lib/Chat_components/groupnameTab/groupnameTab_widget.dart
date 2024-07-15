import 'package:myntra_f_w_d/Chat_components/groupnameTab/groupnameTab_model.dart';

import '/flutter_nav/flutter_flow_theme.dart';
import '/flutter_nav/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'groupname_tab_model.dart';
export 'groupname_tab_model.dart';

class GroupnameTabWidget extends StatefulWidget {
  const GroupnameTabWidget({super.key});

  @override
  State<GroupnameTabWidget> createState() => _GroupnameTabWidgetState();
}

class _GroupnameTabWidgetState extends State<GroupnameTabWidget> {
  late GroupnameTabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GroupnameTabModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 12, 8, 12),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 90,
                height: 90,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 150, 0),
                child: Text(
                  'FashionFluenzers',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        fontSize: 18,
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
      ],
    );
  }
}
