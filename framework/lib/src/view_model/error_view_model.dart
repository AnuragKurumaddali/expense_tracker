import '../domain/uuid4.dart';
import 'view_model.dart';

class ErrorViewModel extends ViewModel {
  final Uuid4 id;
  final String title;
  final String content;

  @override
  get props => [id];

  ErrorViewModel(this.title, this.content) : id = Uuid4();

  ErrorViewModel.short(String content) : this('', content);
}
