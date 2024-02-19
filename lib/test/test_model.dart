import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  Local state fields for this page.

  List<ChatStruct> testvhats = [];
  void addToTestvhats(ChatStruct item) => testvhats.add(item);
  void removeFromTestvhats(ChatStruct item) => testvhats.remove(item);
  void removeAtIndexFromTestvhats(int index) => testvhats.removeAt(index);
  void insertAtIndexInTestvhats(int index, ChatStruct item) =>
      testvhats.insert(index, item);
  void updateTestvhatsAtIndex(int index, Function(ChatStruct) updateFn) =>
      testvhats[index] = updateFn(testvhats[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - chats] action in test widget.
  List<ChatStruct>? chatsData;

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
