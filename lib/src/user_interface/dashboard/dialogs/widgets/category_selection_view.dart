import 'package:expense_tracker/src/user_interface/_imports.dart';
import 'package:expense_tracker/src/user_interface/dashboard/dashboard_page_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../_core/design_system/layouts/_imports.dart';
import '../../../_core/design_system/widgets/buttons/drop_down_button.dart';

class CategorySelectionView extends StatelessWidget {
  const CategorySelectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardPageBloc, DashboardPageState,
        DashboardPageState>(
      selector: (state) => state,
      builder: (builderContext, data) {
        return SizedBox(
          width: double.infinity,
          child: DropDownElevatedButton(
              showArrow: true,
              label: data.selectedCategory,
              onPressed: () {
                showMaterialModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.white,
                  builder: (con) {
                    return SizedBox(
                      height: 280,
                      child: Column(
                        children: [
                          Particles.verticalSpaces.regular,
                          Text(
                            "Choose Category",
                            style: Particles.textStyles.titleLarge.copyWith(
                              fontFamily: 'Horas',
                              color: Colors.black.withAlpha(700),
                            ),
                          ),
                          Expanded(
                            child: Scrollbar(
                              child: ListView.builder(
                                itemCount: data.lsCategories.length,
                                itemBuilder: (innerContext, i) {
                                  final category = data.lsCategories.elementAt(i);
                                  bool isSelected =
                                      data.selectedCategory == category;
                                  return ListTile(
                                    title: Text(
                                      category,
                                      style: Particles.textStyles.titleMedium
                                          .copyWith(
                                        fontFamily: 'Horas',
                                        color: isSelected
                                            ? Colors.blue
                                            : Colors.black.withAlpha(700),
                                      ),
                                    ),
                                    onTap: () {
                                      context.pop();
                                      Events.updateCategory(category)
                                          .publish(context);
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    );
                  },
                );
              }),
        );
      },
    );
  }
}
