import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dev_model.dart';
export 'dev_model.dart';

class DevWidget extends StatefulWidget {
  const DevWidget({super.key});

  @override
  State<DevWidget> createState() => _DevWidgetState();
}

class _DevWidgetState extends State<DevWidget> with TickerProviderStateMixin {
  late DevModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DevModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-14.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, -14.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: true,
              floating: false,
              backgroundColor: const Color(0xFF181A20),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xFFF0B90B),
                  size: 30.0,
                ),
                onPressed: () async {
                  context.goNamed(
                    'homepage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                      ),
                    },
                  );
                },
              ),
              title: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'DEvELOP',
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
                      text: 'Er',
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
              actions: const [],
              centerTitle: false,
              elevation: 1.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Stack(
                        alignment: const AlignmentDirectional(0.0, -1.2),
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 18.0, 16.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.33,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1E2329),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 90.0, 16.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Text(
                                              'Chaitanya Pullagura',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.5,
                                                    fontWeight: FontWeight.w600,
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Text(
                                            'App Developer',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.5,
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              'National Institute of Technlogy\nAndhra Pradesh',
                                              textAlign: TextAlign.center,
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
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 6.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await launchURL(
                                                        'https://x.com/am_cny');
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons.twitter,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 6.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await launchURL(
                                                        'https://in.linkedin.com/in/chaitanyapullagura');
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons.linkedinIn,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 26.0,
                                                  ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 20.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation']!),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: 125.0,
                              height: 125.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNnopUywv5FUJFLOpyQ2BweH598ULHCUyMlw&s',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'circleImageOnPageLoadAnimation']!),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
