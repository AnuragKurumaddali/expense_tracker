import 'view_model.dart';

abstract class SingleViewModel<VALUE extends Object?> extends ViewModel {
  VALUE get value;

  @override
  get props => [value];

  const SingleViewModel();
}

class BasicSingleViewModel<VALUE extends Object?> extends SingleViewModel<VALUE> {
  @override
  final VALUE value;

  const BasicSingleViewModel(this.value);
}
