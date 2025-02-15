import 'package:fast_immutable_collections/fast_immutable_collections.dart' show IList, IMap;

import 'list_item_view_model.dart';
import 'view_model.dart';

abstract class OldListViewModel<ITEM extends ViewModel> extends ViewModel {
  List<ITEM> get items;
  ITEM get selectedItem;

  @override
  get props => [items, selectedItem];

  const OldListViewModel();
}

abstract class ListViewModel<KEY extends Object, ITEM extends ListItemViewModel<KEY>> extends ViewModel {
  IMap<KEY, ITEM> get itemMap;
  IList<KEY> get keys => itemMap.toKeyIList();
  IList<ITEM> get items => itemMap.toValueIList();
  int get count => itemMap.length;
  @override
  get props => [itemMap];

  const ListViewModel();
}

class BasicListViewModel<KEY extends Object, ITEM extends ListItemViewModel<KEY>> extends ListViewModel<KEY, ITEM> {
  @override
  final IMap<KEY, ITEM> itemMap;
  @override
  get props => [itemMap];

  const BasicListViewModel(this.itemMap);

  BasicListViewModel.fromList(
    IList<ITEM> items,
    KEY Function(ITEM item) keyMapper,
  ) : this(
          IMap.fromValues(keyMapper: keyMapper, values: items),
        );

  BasicListViewModel.fromModelMap(
    IMap<KEY, Object> modelMap,
    ITEM Function(dynamic model) mapper,
  ) : this(
          modelMap.map((key, model) => MapEntry(key, mapper(model))),
        );
}
