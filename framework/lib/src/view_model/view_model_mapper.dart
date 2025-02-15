import '../../state.dart';
import '../mapper/mapper.dart';
import 'view_model.dart';

typedef ViewModelMapper<VIEW_MODEL extends ViewModel, STATE extends UiState> = Mapper<VIEW_MODEL, STATE>;
