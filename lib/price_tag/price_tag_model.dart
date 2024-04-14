import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'price_tag_widget.dart' show PriceTagWidget;
import 'package:flutter/material.dart';

class PriceTagModel extends FlutterFlowModel<PriceTagWidget> {
  ///  Local state fields for this page.

  bool? isEd = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (createChatCompletion two)] action in Button widget.
  ApiCallResponse? output;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
  }
}
