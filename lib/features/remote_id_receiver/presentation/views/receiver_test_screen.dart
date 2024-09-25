import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sky_ways/features/remote_id_receiver/data/repositories/remote_id_receiver_repository_implementation.dart';
import 'package:sky_ways/features/remote_id_receiver/presentation/blocs/remote_id_receiver/remote_id_receiver_bloc.dart';

class ReceiverTestScreen extends StatelessWidget {
  ReceiverTestScreen({super.key});

  final bloc = RemoteIdReceiverBloc(RemoteIdReceiverImplementation());

  @override
  Widget build(BuildContext context) {
    () async {
      await [
        Permission.bluetooth,
        Permission.bluetoothScan,
        Permission.location,
        Permission.nearbyWifiDevices,
      ].request();
    }.call();

    return BlocListener<RemoteIdReceiverBloc, RemoteIdReceiverState>(
      bloc: bloc,
      listener: (listnerContext, state) {
        state.whenOrNull(
          addedDroneMessage: () {
            log(
              '${bloc.detectedDrones}',
            );
          },
          updatedDroneMessage: () {
            log(
              '${bloc.detectedDrones}',
            );
          },
        );
      },
      child: BlocBuilder<RemoteIdReceiverBloc, RemoteIdReceiverState>(
        bloc: bloc,
        builder: (BuildContext builderContext, state) {
          return ColoredBox(
            color: const Color(0x0fffffff),
            child: TextButton(
              onPressed: () {
                bloc.add(
                  const RemoteIdReceiverEvent.turnOn(
                    technologyType: UsedTechnologies.Bluetooth,
                  ),
                );
              },
              child: const Text('StartScan'),
            ),
          );
        },
      ),
    );
  }
}
