import '/flutter_flow/flutter_flow_util.dart';
import 'price_tag_page_widget.dart' show PriceTagPageWidget;
import 'package:flutter/material.dart';

class PriceTagPageModel extends FlutterFlowModel<PriceTagPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
