import '/flutter_flow/flutter_flow_util.dart';
import 'chatboxpage_widget.dart' show ChatboxpageWidget;
import 'package:flutter/material.dart';

class ChatboxpageModel extends FlutterFlowModel<ChatboxpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
