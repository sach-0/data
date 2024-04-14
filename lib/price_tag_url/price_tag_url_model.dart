import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'price_tag_url_widget.dart' show PriceTagUrlWidget;
import 'package:flutter/material.dart';

class PriceTagUrlModel extends FlutterFlowModel<PriceTagUrlWidget> {
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
  // Stores action output result for [Backend Call - API (createChatCompletion two)] action in Button widget.
  ApiCallResponse? outp;

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
