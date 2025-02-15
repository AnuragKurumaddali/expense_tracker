import 'view_model.dart';

abstract class SelectorItemViewModel<KEY extends Object> extends ViewModel {
  KEY get key;
  bool get isSelected;

  bool get isNotSelected => !isSelected;

  @override
  get props => [key, isSelected];

  const SelectorItemViewModel();
}

class BasicSelectorItemViewModel<KEY extends Object> extends SelectorItemViewModel<KEY> {
  @override
  final KEY key;
  @override
  final bool isSelected;

  const BasicSelectorItemViewModel(this.key, this.isSelected);
}

class LabelledSelectorItemViewModel<KEY extends Object> extends SelectorItemViewModel<KEY> {
  @override
  final KEY key;
  final String label;
  @override
  final bool isSelected;

  const LabelledSelectorItemViewModel(this.key, this.label, this.isSelected);
}
