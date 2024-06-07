import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/state/editing_cubit.dart';
import 'package:frontend/state/model.dart';
import 'package:frontend/state/model_cubit.dart';
import 'package:responsive_grid/responsive_grid.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({
    super.key,
    required this.match,
    required this.player,
  });

  final CroquetMatch match;

  final CroquetPlayer player;

  static const double _iconSize = 100;

  Widget _wrapAction(bool editing, Widget child) {
    return Container(
      decoration: editing
          ? BoxDecoration(border: Border.all(color: Colors.orange))
          : null,
      child: child,
    );
  }

  Iterable<Widget> _actionWidgets(BuildContext context, bool editing) sync* {
    for (var ballColor in CroquetBallColor.values) {
      if (ballColor == player.ballColor) {
        continue;
      }
      if (editing || player.isAliveOn(ballColor)) {
        yield _wrapAction(
          editing,
          IconButton(
            onPressed: () {
              final cubit = context.read<CroquetModelCubit>();
              if (editing) {
                cubit.updatePlayer(
                  player.ballColor,
                  {'deadOn.${ballColor.name}': !player.isDeadOn(ballColor)},
                );
              } else {
                cubit.updatePlayer(
                  player.ballColor,
                  {'deadOn.${ballColor.name}': true},
                );
              }
            },
            icon: Icon(
              Icons.circle,
              color: ballColor.color,
              size: _iconSize,
            ),
          ),
        );
      }
    }
    if (editing || player.clearedWicket < match.wicketCount) {
      final wicketNumber =
          editing ? player.clearedWicket : player.clearedWicket + 1;
      yield _wrapAction(
        editing,
        TextButton(
          onPressed: () {
            final cubit = context.read<CroquetModelCubit>();
            if (editing) {
              var clearedWicket = player.clearedWicket + 1;
              if (clearedWicket > match.wicketCount) {
                clearedWicket = 0;
              }
              cubit.updatePlayer(
                player.ballColor,
                {'clearedWicket': clearedWicket},
              );
            } else {
              cubit.updatePlayer(
                player.ballColor,
                {'clearedWicket': player.clearedWicket + 1, 'deadOn': {}},
              );
            }
          },
          child: Text(
            wicketNumber.toRadixString(10),
            style: const TextStyle(fontSize: 36),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final editing = context.select<EditingCubit, bool>((cubit) => cubit.state);
    return FloatingActionButton(
      onPressed: () {},
      child: ColoredBox(
        color: player.ballColor.color,
        child: ResponsiveGridRow(
          children: _actionWidgets(context, editing)
              .map((widget) => ResponsiveGridCol(xs: 6, lg: 3, child: widget))
              .toList(),
        ),
      ),
    );
  }
}
