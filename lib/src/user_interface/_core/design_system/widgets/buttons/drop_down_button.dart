import '../../../../_imports.dart';
import '../../layouts/_imports.dart';

class DropDownElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool showArrow;

  const DropDownElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.showArrow,
  });

  @override
  Widget build(BuildContext context) {
    return showArrow
        ? InkWell(
            onTap: showArrow ? onPressed : null,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Outline color
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label.isEmpty?"Select a Category":label,
                    style: Particles.textStyles.subtitleMedium.copyWith(
                      fontWeight: FontWeight.normal,
                      // color: showArrow ? Colors.grey : Colors.black,
                      color: label.isEmpty ? Colors.grey : Colors.black,
                      fontFamily: 'Horas',
                    ),
                  ),
                  Particles.horizontalSpaces.small,
                  SvgPicture.asset(width: 16, height: 16, Assets.icons.arrowDown),
                ],
              ),
            ),
          )
        : Text(
            label.isEmpty?"Select a Category":label,
            style: Particles.textStyles.subtitleMedium.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Horas',
            ),
          );
  }
}
