import 'view_model.dart';

abstract class ListItemViewModel<KEY extends Object> extends ViewModel {
  KEY get key;

  @override
  get props => [key];

  const ListItemViewModel();
}

class BasicListItemViewModel<KEY extends Object> extends ListItemViewModel<KEY> {
  @override
  final KEY key;

  const BasicListItemViewModel(this.key);
}

class LabelledListItemViewModel<KEY extends Object> extends ListItemViewModel<KEY> {
  @override
  final KEY key;
  final String label;

  const LabelledListItemViewModel(this.key, this.label);
}
