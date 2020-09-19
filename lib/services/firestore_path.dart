class FirestorePath {
  static String user(String uid) => 'users/$uid';
  static String users() => 'users';
  
  static String organizationExtra(String uid) => 'organizations/$uid';
  static String donorExtra(String uid) => 'donors/$uid';
  static String adminExtra(String uid) => 'admins/$uid';
  
  static String activity(String uid) => 'activities/$uid';
  static String activities() => 'activities';
  
  
  static String transaction(String id)=>'transaction/$id';
  static String transactions() => 'transaction';
}
