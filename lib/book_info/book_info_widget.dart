import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookInfoWidget extends StatefulWidget {
  const BookInfoWidget({
    Key? key,
    this.artPiece,
  }) : super(key: key);

  final dynamic artPiece;

  @override
  _BookInfoWidgetState createState() => _BookInfoWidgetState();
}

class _BookInfoWidgetState extends State<BookInfoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF6F35A5),
            size: 24,
          ),
        ),
        title: Text(
          getJsonField(
            widget.artPiece,
            r'''$.volumeInfo.title''',
          ).toString(),
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: 'Outfit',
                color: Color(0xFF6F35A5),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network(
                      getJsonField(
                        widget.artPiece,
                        r'''$.volumeInfo.imageLinks.medium''',
                      ),
                      width: double.infinity,
                      height: 475,
                      fit: BoxFit.fitWidth,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getJsonField(
                              widget.artPiece,
                              r'''$.volumeInfo.title''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 6, 0),
                                  child: Text(
                                    getJsonField(
                                      widget.artPiece,
                                      r'''$.volumeInfo.authors[0]''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF6F35A5),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: Color(0xFF6F35A5),
                              ),
                              Text(
                                'Description',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Html(
                                data: getJsonField(
                                  widget.artPiece,
                                  r'''$.volumeInfo.description''',
                                ).toString(),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: Color(0xFF6F35A5),
                              ),
                              Text(
                                'Date Published',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                child: Text(
                                  getJsonField(
                                    widget.artPiece,
                                    r'''$.volumeInfo.publishedDate''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 16,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: Color(0xFF6F35A5),
                              ),
                              Text(
                                'Page Count',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                child: Text(
                                  getJsonField(
                                    widget.artPiece,
                                    r'''$.volumeInfo.pageCount''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 16,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: Color(0xFF6F35A5),
                              ),
                              Text(
                                'Average Rating (Google Reviews)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                child: Text(
                                  getJsonField(
                                    widget.artPiece,
                                    r'''$.volumeInfo.averageRating''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 16,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                height: 30,
                                thickness: 0.5,
                                color: Color(0xFF6F35A5),
                              ),
                              InkWell(
                                onTap: () async {
                                  await launchURL(getJsonField(
                                    widget.artPiece,
                                    r'''$.volumeInfo.previewLink''',
                                  ).toString());
                                },
                                child: Text(
                                  'View on Google Books',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF6F35A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 84,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 2, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final futurereadsCreateData =
                            createFuturereadsRecordData(
                          title: getJsonField(
                            widget.artPiece,
                            r'''$.volumeInfo.title''',
                          ).toString(),
                          author: getJsonField(
                            widget.artPiece,
                            r'''$.volumeInfo.authors[0]''',
                          ).toString(),
                          image: getJsonField(
                            widget.artPiece,
                            r'''$.volumeInfo.imageLinks.smallThumbnail''',
                          ),
                        );
                        await FuturereadsRecord.createDoc(currentUserReference!)
                            .set(futurereadsCreateData);

                        context.pushNamed('FutureReads');
                      },
                      text: 'Save for later',
                      icon: Icon(
                        Icons.favorite,
                        size: 19,
                      ),
                      options: FFButtonOptions(
                        width: 170,
                        height: 50,
                        color: Color(0xC66F35A5),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          final usersbooksCreateData =
                              createUsersbooksRecordData(
                            title: getJsonField(
                              widget.artPiece,
                              r'''$.volumeInfo.title''',
                            ).toString(),
                            author: getJsonField(
                              widget.artPiece,
                              r'''$.volumeInfo.authors[0]''',
                            ).toString(),
                            image: getJsonField(
                              widget.artPiece,
                              r'''$.volumeInfo.imageLinks.smallThumbnail''',
                            ),
                          );
                          await UsersbooksRecord.createDoc(
                                  currentUserReference!)
                              .set(usersbooksCreateData);

                          context.goNamed('MyClub');
                        },
                        text: 'Add to My Clubs',
                        icon: Icon(
                          Icons.bookmarks_outlined,
                          color: Colors.white,
                          size: 19,
                        ),
                        options: FFButtonOptions(
                          width: 175,
                          height: 50,
                          color: Color(0xFF6F35A5),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(6),
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
