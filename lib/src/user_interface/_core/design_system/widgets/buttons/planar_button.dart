library planar_button;

import '../../layouts/_index.dart';
import '../_imports.dart';

part 'planar_button_with_icon.dart';
part 'planar_icon_button.dart';

class PlanarButton extends StatelessWidget {
  final bool hidden;
  final bool disabled;
  final bool submitting;
  final double? width;
  final VoidCallback onPressed;
  final String label;
  final Color? color;

  const PlanarButton({
    super.key,
    this.hidden = false,
    this.disabled = false,
    this.submitting = false,
    this.width,
    required this.onPressed,
    required this.label,
    this.color = const Color(0xFF06B82D),
  });

  @override
  Widget build(BuildContext context) {
    return Swapper(
      condition: false,
      child1: const Offstage(),
      child2: SizedBox(
        width: width ?? 200,
        height: Particles.sizes.buttonMinHeight,
        child: Center(
            child: Swapper(
          condition: submitting,
          child1: CircularProgressIndicator(color: Particles.colors.primary),
          child2: _PlanarButtonBackground(
            disabled: disabled,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: disabled ? Colors.white : color,
                foregroundColor: Colors.white,
                minimumSize: Size(width ?? 200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: disabled ? null : onPressed,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Color.fromARGB(255, 237, 236, 236)),
              ),
            ),
          ),
        )),
      ),
    );
  }
}

class _PlanarButtonBackground extends StatelessWidget {
  final Widget child;
  final bool disabled;
  final Color? widgetColor;

  const _PlanarButtonBackground({
    required this.child,
    this.disabled = false,
    this.widgetColor = const Color(0XFF6ABD45),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Particles.sizes.buttonMinHeight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: disabled ? Colors.grey.shade300 : widgetColor,
          borderRadius: Particles.borderRadiusCircular.large,
        ),
        child: child,
      ),
    );
  }
}
