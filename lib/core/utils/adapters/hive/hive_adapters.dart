import 'package:hive_ce/hive.dart'
    show AdapterSpec, BinaryReader, BinaryWriter, GenerateAdapters, TypeAdapter;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show GeometryType, RestrictionType;
import 'package:sky_trade/features/u_a_s_restrictions/data/models/restriction_model.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<RestrictionModel>(),
  AdapterSpec<PropertiesModel>(),
  AdapterSpec<RestrictionType>(),
  AdapterSpec<AdditionalLinkModel>(),
  AdapterSpec<GeometryModel>(),
  AdapterSpec<GeometryType>(),
])
class HiveAdapters {}
