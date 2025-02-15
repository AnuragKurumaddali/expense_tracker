import 'selector_item_view_model.dart';
import 'view_model.dart';

abstract class MultiSelectorViewModel<KEY extends Object, ITEM extends SelectorItemViewModel<KEY>> extends ViewModel {
  Map<KEY, ITEM> get itemMap;
  Iterable<KEY> get keys => itemMap.keys;
  Iterable<ITEM> get items => itemMap.values;
  @override
  get props => [itemMap];

  const MultiSelectorViewModel();

  bool isSelected(KEY key) {
    return itemMap[key]?.isSelected ?? false;
  }
}

abstract class TitledMultiSelectorViewModel<KEY extends Object, ITEM extends SelectorItemViewModel<KEY>>
    extends MultiSelectorViewModel<KEY, ITEM> {
  String get title;

  const TitledMultiSelectorViewModel();
}
