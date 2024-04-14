import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_url_widget.dart' show ChatUrlWidget;
import 'package:flutter/material.dart';

class ChatUrlModel extends FlutterFlowModel<ChatUrlWidget> {
  ///  Local state fields for this page.

  bool? isEd = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for Url widget.
  FocusNode? urlFocusNode;
  TextEditingController? urlController;
  String? Function(BuildContext, String?)? urlControllerValidator;
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in Button widget.
  ApiCallResponse? output;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
    urlFocusNode?.dispose();
    urlController?.dispose();
  }
}
