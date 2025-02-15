import 'view_model.dart';

abstract class MappedListViewModel<KEY extends Object, ITEM extends ViewModel> extends ViewModel {
  Map<KEY, ITEM> get items;
  ITEM? get selectedItem;

  @override
  get props => [items, selectedItem];

  const MappedListViewModel();
}

abstract class MappedListItemsViewModel<KEY extends Object, ITEM extends ViewModel> extends ViewModel {
  Map<KEY, List<ITEM>> get items;

  @override
  get props => [items];

  const MappedListItemsViewModel();
}
