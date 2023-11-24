import '/flutter_flow/flutter_flow_util.dart';
import 'items_all_widget.dart' show ItemsAllWidget;
import 'package:flutter/material.dart';

class ItemsAllModel extends FlutterFlowModel<ItemsAllWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
