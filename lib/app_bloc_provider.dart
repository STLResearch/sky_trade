import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_initialization_bloc/web_3_auth_initialization_bloc.dart'
    show Web3AuthInitializationBloc;
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_user_session_bloc/web_3_auth_user_session_bloc.dart'
    show Web3AuthUserSessionBloc;
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_adapter_state_bloc/bluetooth_adapter_state_bloc.dart'
    show BluetoothAdapterStateBloc;
import 'package:sky_trade/features/bluetooth/presentation/blocs/bluetooth_permissions_bloc/bluetooth_permissions_bloc.dart'
    show BluetoothPermissionsBloc;
import 'package:sky_trade/features/cache_manager/presentation/blocs/cache_data_bloc/cache_data_bloc.dart'
    show CacheDataBloc;
import 'package:sky_trade/features/cache_manager/presentation/blocs/cached_data_bloc/cached_data_bloc.dart'
    show CachedDataBloc;
import 'package:sky_trade/features/geo_hash/presentation/blocs/geo_hash_bloc/geo_hash_bloc.dart'
    show GeoHashBloc;
import 'package:sky_trade/features/insights/presentation/blocs/insights_bloc/insights_bloc.dart'
    show InsightsBloc;
import 'package:sky_trade/features/internet_connection_checker/presentation/blocs/internet_connection_checker_bloc/internet_connection_checker_bloc.dart'
    show InternetConnectionCheckerBloc;
import 'package:sky_trade/features/link_handler/presentation/blocs/check_link_bloc/check_link_bloc.dart'
    show CheckLinkBloc;
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc;
import 'package:sky_trade/features/location/presentation/blocs/location_permission_bloc/location_permission_bloc.dart'
    show LocationPermissionBloc;
import 'package:sky_trade/features/location/presentation/blocs/location_position_bloc/location_position_bloc.dart'
    show LocationPositionBloc;
import 'package:sky_trade/features/location/presentation/blocs/location_service_status_bloc/location_service_status_bloc.dart'
    show LocationServiceStatusBloc;
import 'package:sky_trade/features/remote_i_d_receiver/presentation/blocs/remote_i_d_receiver_bloc/remote_i_d_receiver_bloc.dart'
    show RemoteIDReceiverBloc;
import 'package:sky_trade/features/remote_i_d_transmitter/presentation/blocs/remote_i_d_transmitter_bloc/remote_i_d_transmitter_bloc.dart'
    show RemoteIDTransmitterBloc;
import 'package:sky_trade/features/search_autocomplete/presentation/blocs/search_autocomplete_bloc.dart'
    show SearchAutocompleteBloc;
import 'package:sky_trade/features/u_a_s_activity/presentation/blocs/u_a_s_activity_bloc/u_a_s_activity_bloc.dart'
    show UASActivityBloc;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/blocs/u_a_s_restrictions_bloc/u_a_s_restrictions_bloc.dart'
    show UASRestrictionsBloc;
import 'package:sky_trade/features/weather/presentation/weather_bloc/weather_bloc.dart'
    show WeatherBloc;
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_adapter_state_bloc/wifi_adapter_state_bloc.dart'
    show WifiAdapterStateBloc;
import 'package:sky_trade/features/wifi/presentation/blocs/wifi_permission_bloc/wifi_permission_bloc.dart'
    show WifiPermissionBloc;

final _sl = GetIt.I;

List<BlocProvider> get appBlocProvider => [
      BlocProvider<Web3AuthInitializationBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<Web3AuthUserSessionBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<BluetoothAdapterStateBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<BluetoothPermissionsBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<CacheDataBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<CachedDataBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<GeoHashBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<InsightsBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<InternetConnectionCheckerBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<CheckLinkBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<HandleLinkBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<LocationPermissionBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<LocationPositionBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<LocationServiceStatusBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<RemoteIDReceiverBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<RemoteIDTransmitterBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<SearchAutocompleteBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<UASActivityBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<UASRestrictionsBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<WeatherBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<WifiAdapterStateBloc>(
        create: (_) => _sl(),
      ),
      BlocProvider<WifiPermissionBloc>(
        create: (_) => _sl(),
      ),
    ];
