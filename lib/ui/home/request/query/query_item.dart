import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:restler/data/entities/query_entity.dart';
import 'package:restler/helper.dart';
import 'package:restler/ui/home/request/request_item.dart';

class QueryItem extends StatelessWidget {
  final QueryEntity item;
  final ValueChanged<RequestItemAction> onActionSelected;
  final ValueChanged<bool> onEnabled;
  final ValueChanged<String> onNameChanged;
  final ValueChanged<String> onValueChanged;
  final ValueChanged<QueryEntity> onItemChanged;

  const QueryItem({
    @required this.item,
    this.onActionSelected,
    this.onEnabled,
    this.onNameChanged,
    this.onValueChanged,
    this.onItemChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RequestItem<QueryEntity>(
      key: Key(item.uid),
      item: item,
      onActionSelected: onActionSelected,
      onEnabled: onEnabled,
      onNameChanged: onNameChanged,
      onValueChanged: onValueChanged,
      onItemChanged: onItemChanged,
      nameSuggestions: variableSuggestions,
      valueSuggestions: variableSuggestions,
    );
  }
}
