import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyClubWidget extends StatefulWidget {
  const MyClubWidget({
    Key? key,
    this.clubsname,
  }) : super(key: key);

  final DocumentReference? clubsname;

  @override
  _MyClubWidgetState createState() => _MyClubWidgetState();
}

class _MyClubWidgetState extends State<MyClubWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'My Clubs ',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Outfit',
                color: Color(0xFF6F35A5),
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<UsersbooksRecord>>(
                stream: queryUsersbooksRecord(
                  parent: currentUserReference,
                  limit: 5,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ),
                    );
                  }
                  List<UsersbooksRecord> listViewUsersbooksRecordList =
                      snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewUsersbooksRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewUsersbooksRecord =
                          listViewUsersbooksRecordList[listViewIndex];
                      return InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'clubtracker',
                            queryParams: {
                              'title': serializeParam(
                                listViewUsersbooksRecord.title,
                                ParamType.String,
                              ),
                              'author': serializeParam(
                                listViewUsersbooksRecord.author,
                                ParamType.String,
                              ),
                              'image': serializeParam(
                                listViewUsersbooksRecord.image,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          secondaryActions: [
                            IconSlideAction(
                              caption: 'Delete',
                              color: Color(0xFFB0242D),
                              icon: Icons.delete,
                              onTap: () async {
                                await listViewUsersbooksRecord.reference
                                    .delete();
                              },
                            ),
                          ],
                          child: ListTile(
                            title: Text(
                              listViewUsersbooksRecord.title!,
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF6F35A5),
                                      ),
                            ),
                            subtitle: Text(
                              listViewUsersbooksRecord.author!,
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xC66F35A5),
                                  ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF303030),
                              size: 20,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).primaryBtnText,
                            dense: false,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 30, 15, 0),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color(0xC66F35A5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 30),
                child: Text(
                  'Need a new book to read? \nNo problem!\nClick the \'Discover More\' button to find your next read! ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF6F35A5),
                        fontSize: 20,
                      ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(11, 11, 11, 11),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('Search');
                        },
                        text: 'Discover More!',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFF6F35A5),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(11, 11, 11, 11),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('FutureReads');
                        },
                        text: 'View Saved Books!',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFF6F35A5),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
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
