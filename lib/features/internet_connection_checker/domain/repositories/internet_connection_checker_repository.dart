// SPDX-License-Identifier: UNLICENSED
                            
abstract interface class InternetConnectionCheckerRepository {
  Future<bool> get hasActiveInternetConnection;
}
