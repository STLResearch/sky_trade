import 'package:sky_trade/features/cache_manager/domain/entities/cache_entity.dart';
import 'package:sky_trade/features/u_a_s_restrictions/data/models/restriction_model.dart'
    show RestrictionModel;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;

extension CacheEntityExtensions on CacheEntity {
  List<RestrictionEntity> get asRestrictionEntities =>
      (content as List<dynamic>)
          .map(
            (json) => RestrictionModel.fromJson(
              json as Map<String, dynamic>,
            ),
          )
          .toList();
}
