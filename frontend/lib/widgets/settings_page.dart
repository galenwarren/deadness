import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/state/active_balls.dart';
import 'package:frontend/state/model.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Uri.base.toString();
    return Column(
      children: [
        QrImageView(
          data: data,
          version: QrVersions.auto,
          size: 200,
        ),
        ...CroquetBallColor.values.map((ballColor) {
          final value = context.select<ActiveBallsCubit, bool>(
              (bloc) => bloc.isActive(ballColor));
          return Switch(
            value: value,
            activeColor: ballColor.color,
            inactiveThumbColor: ballColor.color,
            onChanged: (value) {
              context.read<ActiveBallsCubit>().setActive(ballColor, value);
            },
          );
        }),
      ],
    );
  }
}
