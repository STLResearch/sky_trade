import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sky_ways/features/remote_i_d_receiver/data/repositories/remote_i_d_receiver_repository_implementation.dart';
import 'package:sky_ways/features/remote_i_d_receiver/presentation/blocs/remote_i_d_receiver_bloc/remote_i_d_receiver_bloc.dart';
import 'package:sky_ways/features/remote_i_d_transmitter/presentation/blocs/remote_i_d_transmitter_bloc/remote_i_d_transmitter_bloc.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  void initState() {
    () async {
      await [
        Permission.bluetooth,
        Permission.bluetoothConnect,
        Permission.bluetoothScan,
        Permission.nearbyWifiDevices,
        Permission.location,
      ].request();
      final result = await FlutterOpenDroneId.isWifiNanSupported;
    }.call();

    context.read<RemoteIDReceiverBloc>().add(
          const RemoteIDReceiverEvent.listenRemoteIDs(),
        );

    context.read<RemoteIDTransmitterBloc>().add(
          const RemoteIDTransmitterEvent.startTransmitter(),
        );

    // RemoteIDReceiverRepositoryImplementation()
    //     .remoteIDStream
    //     .listen((streamDataOrFailure) {
    //   streamDataOrFailure.fold((failure) {
    //     log('$failure');
    //   }, (data) {
    //     log('$data');
    //   });
    // });

    super.initState();
  }

  @override
  void dispose() {
    context.read<RemoteIDReceiverBloc>().add(
          const RemoteIDReceiverEvent.stopListeningRemoteIDs(),
        );

    context.read<RemoteIDTransmitterBloc>().add(
          const RemoteIDTransmitterEvent.stopTransmitter(),
        );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<RemoteIDReceiverBloc, RemoteIDReceiverState>(
            listener: (_, remoteIDReceiverState) {
              remoteIDReceiverState.whenOrNull(
                gotRemoteIDs: (remoteIDEntities) {
                  for (final remoteIDEntity in remoteIDEntities) {
                    context.read<RemoteIDTransmitterBloc>().add(
                          RemoteIDTransmitterEvent.transmitRemoteID(
                            remoteID: remoteIDEntity,
                          ),
                        );
                  }
                },
              );
            },
          ),
          BlocListener<RemoteIDTransmitterBloc, RemoteIDTransmitterState>(
            listener: (_, remoteIDTransmitterState) {
              remoteIDTransmitterState.whenOrNull(
                startingTransmitter: () {
                  log('startingTransmitter');
                },
                startedTransmitter: () {
                  log('startedTransmitter');
                },
                stoppedTransmitter: () {
                  log('stoppedTransmitter');
                },
                transmittedRemoteID: () {
                  log('transmittedRemoteID');
                },
                failedToTransmitRemoteID: () {
                  log('failedToTransmitRemoteID');
                },
              );
            },
          ),
        ],
        child: Scaffold(
          body: BlocBuilder<RemoteIDReceiverBloc, RemoteIDReceiverState>(
            builder: (_, remoteIDReceiverState) =>
                remoteIDReceiverState.maybeWhen(
              gotRemoteIDs: (remoteIDEntities) => ListView.builder(
                itemCount: remoteIDEntities.length,
                itemBuilder: (_, index) => Text(
                  remoteIDEntities.elementAt(index).connection.macAddress,
                ),
              ),
              orElse: () => const Center(
                child: Text(
                  'Loading',
                ),
              ),
            ),
          ),
        ),
      );
}
