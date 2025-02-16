part of 'planar_button.dart';

class PlanarButtonWithIcon extends StatelessWidget {
  final bool disabled;
  final VoidCallback onPressed;
  final SvgPicture icon;
  final String label;
  final Color? color;

  const PlanarButtonWithIcon({
    super.key,
    this.disabled = false,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.color = const Color(0XFF6ABD45),
  });

  @override
  Widget build(BuildContext context) {
    return _PlanarButtonBackground(
      widgetColor: color,
      disabled: disabled,
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: disabled ? null : onPressed,
        icon: icon,
        label: Text(
          label,
          style: Particles.textStyles.subtitleMedium.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
