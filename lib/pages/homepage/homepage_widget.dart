import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF181A20),
        endDrawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.6,
          child: Drawer(
            elevation: 16.0,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(
                color: Color(0xFF1E2329),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 16.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (scaffoldKey.currentState!.isDrawerOpen ||
                              scaffoldKey.currentState!.isEndDrawerOpen) {
                            Navigator.pop(context);
                          }
                        },
                        child: Container(
                          width: 40.0,
                          height: 37.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            shape: BoxShape.rectangle,
                          ),
                          child: const Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.clear_rounded,
                              color: Color(0xFF202630),
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'GrOWTH',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'brolink',
                                  color: const Color(0xFFEAECEF),
                                  fontSize: 26.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          const TextSpan(
                            text: ' x',
                            style: TextStyle(
                              color: Color(0xFFF0B90B),
                            ),
                          )
                        ],
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'brolink',
                                  fontSize: 26.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('dev');
                      },
                      child: Text(
                        'About Developer',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Montserrat',
                              color: const Color(0xFFBCBDC6),
                              fontSize: 17.0,
                              letterSpacing: 0.5,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: true,
              floating: false,
              backgroundColor: const Color(0xFF181A20),
              automaticallyImplyLeading: false,
              title: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'GrOWTH',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'brolink',
                                color: const Color(0xFFEAECEF),
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: false,
                              ),
                    ),
                    const TextSpan(
                      text: ' x',
                      style: TextStyle(
                        fontFamily: 'brolink',
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'brolink',
                        color: const Color(0xFFF0B90B),
                        fontSize: 22.0,
                        letterSpacing: 1.5,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              actions: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: const FaIcon(
                    FontAwesomeIcons.stream,
                    color: Color(0xFFF0B90B),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    scaffoldKey.currentState!.openEndDrawer();
                  },
                ),
              ],
              centerTitle: false,
              elevation: 1.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 26.0, 0.0, 0.0),
                          child: Text(
                            'APP & WEB SERVICE PROVIDERS',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Source Code Pro',
                                  color: const Color(0xFFF0B90B),
                                  fontSize: 17.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                          child: Image.asset(
                            'assets/images/img.png',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 295.0,
                            fit: BoxFit.contain,
                            alignment: const Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Text(
                            'We Turn your Ideas\nInto Products',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Montserrat',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 24.0,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 20.0, 16.0, 16.0),
                        child: Text(
                          'We are Top Rated Web & App Development\nservice providers who create amazing\napps for world class companies 10X faster.',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'Montserrat',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 15.2,
                                letterSpacing: 0.5,
                                lineHeight: 1.5,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'OUR SERVICES',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: const Color(0xFFF0B90B),
                                        fontSize: 15.0,
                                        letterSpacing: 1.5,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.55,
                                  height: 0.65,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context).primary,
                                        const Color(0xFF181A20)
                                      ],
                                      stops: const [0.0, 1.0],
                                      begin: const AlignmentDirectional(-1.0, -1.0),
                                      end: const AlignmentDirectional(1.0, 1.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Get World Class\nDevelopment Services',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Montserrat',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 0.0),
                          child: Text(
                            'We provide all kind of app & web related\nservices.',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.5,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 18.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E2329),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: 65.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: const Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.mobileAlt,
                                        color: Color(0xFF202630),
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Text(
                                      'App Development',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 20.0,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w600,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color: Color(0xFF202630),
                                              size: 16.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Get Android, iOS & Web Apps',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFFBCBDC6),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.5,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color: Color(0xFF202630),
                                              size: 16.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Beautiful & Elegant Designs',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFFBCBDC6),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.5,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color: Color(0xFF202630),
                                              size: 16.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Rapid Development',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFFBCBDC6),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.5,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color: Color(0xFF202630),
                                              size: 16.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Faster Deployment',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFFBCBDC6),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.5,
                                                    lineHeight: 1.5,
                                                  ),
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 18.0, 16.0, 16.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E2329),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: 65.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: const Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.web,
                                        color: Color(0xFF202630),
                                        size: 28.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Text(
                                      'Web Development',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 20.0,
                                            letterSpacing: 0.5,
                                            fontWeight: FontWeight.w600,
                                            lineHeight: 1.5,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color: Color(0xFF202630),
                                              size: 16.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Responsive Website Design',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFFBCBDC6),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.5,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color: Color(0xFF202630),
                                              size: 16.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Faster Loading Websites',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFFBCBDC6),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.5,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color: Color(0xFF202630),
                                              size: 16.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Rapid Development Process',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFFBCBDC6),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.5,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 26.0,
                                          height: 26.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color: Color(0xFF202630),
                                              size: 16.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Ongoing Maintenance & Support',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: const Color(0xFFBCBDC6),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.5,
                                                    lineHeight: 1.5,
                                                  ),
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
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'PORTFOLIO',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: const Color(0xFFF0B90B),
                                        fontSize: 15.0,
                                        letterSpacing: 1.5,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.55,
                                  height: 0.65,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context).primary,
                                        const Color(0xFF181A20)
                                      ],
                                      stops: const [0.0, 1.0],
                                      begin: const AlignmentDirectional(-1.0, -1.0),
                                      end: const AlignmentDirectional(1.0, 1.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 10.0, 16.0, 10.0),
                          child: Text(
                            'Check out the amazing apps our skilled team has created, and see how we can bring innovative solutions to your business.',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.5,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 8.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: ApiCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final carouselApiResponse = snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final eachProject = ApiCall.projectData(
                                      carouselApiResponse.jsonBody,
                                    )?.toList() ??
                                    [];

                                return SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 395.0,
                                  child: CarouselSlider.builder(
                                    itemCount: eachProject.length,
                                    itemBuilder:
                                        (context, eachProjectIndex, _) {
                                      final eachProjectItem =
                                          eachProject[eachProjectIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              getJsonField(
                                                eachProjectItem,
                                                r'''$.image''',
                                              ).toString(),
                                              width: 254.0,
                                              height: 316.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: Text(
                                              getJsonField(
                                                eachProjectItem,
                                                r'''$.title''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    carouselController:
                                        _model.carouselController ??=
                                            CarouselSliderController(),
                                    options: CarouselOptions(
                                      initialPage: max(
                                          0, min(1, eachProject.length - 1)),
                                      viewportFraction: 0.5,
                                      disableCenter: true,
                                      enlargeCenterPage: true,
                                      enlargeFactor: 0.25,
                                      enableInfiniteScroll: true,
                                      scrollDirection: Axis.horizontal,
                                      autoPlay: true,
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayInterval:
                                          const Duration(milliseconds: (800 + 1000)),
                                      autoPlayCurve: Curves.linear,
                                      pauseAutoPlayInFiniteScroll: true,
                                      onPageChanged: (index, _) =>
                                          _model.carouselCurrentIndex = index,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'INDUSTRIES',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: const Color(0xFFF0B90B),
                                        fontSize: 15.0,
                                        letterSpacing: 1.5,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.55,
                                  height: 0.65,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        FlutterFlowTheme.of(context).primary,
                                        const Color(0xFF181A20)
                                      ],
                                      stops: const [0.0, 1.0],
                                      begin: const AlignmentDirectional(-1.0, -1.0),
                                      end: const AlignmentDirectional(1.0, 1.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ].addToEnd(const SizedBox(height: 26.0)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
