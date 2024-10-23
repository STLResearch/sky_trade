import 'package:flutter/material.dart'
    show
        Border,
        BoxDecoration,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        Expanded,
        FontWeight,
        ListView,
        MainAxisAlignment,
        MainAxisSize,
        Padding,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:sky_trade/core/resources/colors.dart'
    show hex33000000, hex4285F4, hex838187;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fourDotNil,
        fourteenDotNil,
        oneDotNil,
        sixteenDotOne,
        tenDotNil,
        threeSevenTeenDotNil,
        twentyOneDotNil,
        twoEightyDotNil,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/insights/domain/entities/insights_entity.dart'
    show InsightsEntity;
import 'package:sky_trade/features/insights/presentation/blocs/insights_bloc/insights_bloc.dart'
    show InsightsBloc, InsightsEvent, InsightsState;

class DroneTimeDisplay extends StatefulWidget {
  const DroneTimeDisplay({super.key});

  @override
  State<StatefulWidget> createState() => _DroneTimeDisplay();
}

class _DroneTimeDisplay extends State<DroneTimeDisplay> {
  @override
  void initState() {
    super.initState();
    context.read<InsightsBloc>().add(
          const InsightsEvent.getInsights(
            userId: 203,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: threeSevenTeenDotNil,
      height: twoEightyDotNil,
      child: BlocBuilder<InsightsBloc, InsightsState>(
        builder: (_, insightsState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTotalTrackedDrones(
                insightsState.maybeWhen(
                  gotInsights: (insightsEntities) => insightsEntities.length,
                  orElse: () => zero,
                ),
              ),
              const SizedBox(
                height: tenDotNil,
              ),
              _buildDivider(),
              const SizedBox(
                height: tenDotNil,
              ),
              Expanded(
                child: insightsState.maybeWhen(
                  gettingInsights: () =>
                      const Center(child: CircularProgressIndicator()),
                  gotInsights: (insightsEntities) {
                    return ListView.builder(
                      itemCount: insightsEntities.length,
                      itemBuilder: (_, index) =>
                          _buildDroneRow(insightsEntities[index]),
                    );
                  },
                  failedToGetInsights: (_) => const Center(),
                  orElse: () => const SizedBox(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTotalTrackedDrones(int total) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.localize.totalTrackedDrones,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: hex4285F4,
                      fontSize: fourteenDotNil,
                      height: sixteenDotOne / fourteenDotNil,
                    ),
              ),
              const SizedBox(
                width: tenDotNil,
              ),
              Text(
                '$total',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: hex4285F4,
                      fontSize: fourteenDotNil,
                      height: twentyOneDotNil / fourteenDotNil,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: oneDotNil,
      decoration: BoxDecoration(
        border: Border.all(
          color: hex33000000,
        ),
      ),
    );
  }

  Widget _buildDroneRow(InsightsEntity insightsEntity) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: fourDotNil,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            insightsEntity.user.id.toString(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex838187,
                ),
          ),
          Text(
            insightsEntity.createdAt.toString(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex838187,
                ),
          ),
        ],
      ),
    );
  }
}
