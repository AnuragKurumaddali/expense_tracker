import 'selector_item_view_model.dart';
import 'view_model.dart';

abstract class SelectorViewModel<KEY extends Object, ITEM extends SelectorItemViewModel<KEY>> extends ViewModel {
  Map<KEY, ITEM> get itemMap;
  ITEM get selectedItem;
  Iterable<KEY> get keys => itemMap.keys;
  Iterable<ITEM> get items => itemMap.values;
  @override
  get props => [itemMap];

  const SelectorViewModel();

  bool isSelected(KEY key) {
    return itemMap[key]?.isSelected ?? false;
  }
}
