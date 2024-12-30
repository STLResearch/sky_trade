base class AirSpaceHistoryEntity {
  AirSpaceHistoryEntity({
    required this.lifetimeTotalIncome,
    required this.totalIncomeMTD,
    required this.totalIncomeWTD,
    required this.airSpaceHistoryTable,
  });

  final double lifetimeTotalIncome;

  final double totalIncomeMTD;

  final double totalIncomeWTD;

  final List<AirSpaceHistoryTableEntryEntity> airSpaceHistoryTable;
}

base class AirSpaceHistoryTableEntryEntity {
  AirSpaceHistoryTableEntryEntity({
    required this.price,
    required this.type,
    required String date,
  }) : date = DateTime.parse(date);

  final double price;

  final String type;

  final DateTime date;
}
