class CustomModal {
  String? code;
  String? name;
  String? flag;
  String? gstno;

  CustomModal({
    this.code,
    this.name,
    this.flag,
    this.gstno,
  });

  factory CustomModal.fromMap(Map<String, dynamic> json) => CustomModal(
    code: json["Code"],
    name: json["Name"],
    flag: json["Flag"],
    gstno: json["GSTNO"],
  );

  Map<String, dynamic> toMap() => {
    "Code": code,
    "Name": name,
    "Flag": flag,
    "GSTNO": gstno,
  };
}
