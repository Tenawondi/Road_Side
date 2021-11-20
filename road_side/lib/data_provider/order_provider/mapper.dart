class Mapper{

  static Map<String, dynamic> toJson({required String user_id, required String garage_id, required String service_id}) => {
    "user_id":user_id,
    "garage_id":garage_id,
    "service_id":service_id
  };
}