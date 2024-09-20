import 'package:sky_ways/core/errors/exceptions/search_autocomplete_exception.dart';
import 'package:sky_ways/core/resources/strings/networking.dart'
    show qKey, suggestPath;
import 'package:sky_ways/core/utils/clients/network_client.dart'
    show HttpClient;
import 'package:sky_ways/core/utils/clients/response_handler.dart';
import 'package:sky_ways/core/utils/enums/networking.dart' show RequestMethod;
import 'package:sky_ways/features/search_autocomplete/data/models/search_result_model.dart'
    show SearchResultModel;

abstract interface class SearchAutocompleteRemoteDataSource {
  Future<List<SearchResultModel>> autocompleteSearchUsing({
    required String query,
  });
}

final class SearchAutocompleteRemoteDataSourceImplementation
    with ResponseHandler
    implements SearchAutocompleteRemoteDataSource {
  const SearchAutocompleteRemoteDataSourceImplementation(
    HttpClient httpClient,
  ) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<List<SearchResultModel>> autocompleteSearchUsing({
    required String query,
  }) =>
      handleResponse<SearchAutocompleteException, List<dynamic>,
          List<SearchResultModel>>(
        requestInitiator: _httpClient.request(
          requestMethod: RequestMethod.get,
          path: suggestPath,
          queryParameters: {
            qKey: query,
          },
        ),
        onSuccess: (jsonList) => jsonList
            .map(
              (json) => SearchResultModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList(),
        onError: (_) => SearchAutocompleteException(),
      );
}
