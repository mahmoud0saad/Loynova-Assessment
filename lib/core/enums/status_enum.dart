enum StatusEnum {
  all("all"),
  pending("pending"),
  approved("approved"),
  accepted("accepted"),
  rejected("rejected");

  final String status;
  const StatusEnum(this.status);
  static List<StatusEnum> get items {
    return [
      StatusEnum.all,
      StatusEnum.pending,
      StatusEnum.approved,
      StatusEnum.rejected,
    ];
  }
}
