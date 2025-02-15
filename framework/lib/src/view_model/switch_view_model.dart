import 'view_model.dart';

abstract class SwitchViewModel extends ViewModel {
  bool get selected;

  @override
  get props => [selected];

  const SwitchViewModel();
}

class BasicSwitchViewModel extends SwitchViewModel {
  @override
  final bool selected;

  const BasicSwitchViewModel(this.selected);
}

abstract class LabelledSwitchViewModel extends ViewModel {
  String get label;
  bool get selected;

  @override
  get props => [label, selected];

  const LabelledSwitchViewModel();
}
