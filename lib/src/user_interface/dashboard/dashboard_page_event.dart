import 'package:expense_tracker/src/user_interface/dashboard/dashboard_page_bloc.dart';

import '../_event_imports.dart';

part 'dashboard_page_event.freezed.dart';

@Freezed(copyWith: false)
class DashboardPageEvent with _$DashboardPageEvent implements UiEvent {
  const factory DashboardPageEvent.onPageLoaded() = OnPageLoaded;

}

typedef Events = DashboardPageEvent;

extension EventsExtensions on Events{
  void publish(BuildContext context){
    context.bloc.add(this);
  }
}