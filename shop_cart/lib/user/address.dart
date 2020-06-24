
class Address {
  String streetName;
  String streetNumber, city, state, country, postCode;

  Address.foromJson(Map<String, dynamic> jsonObject) {
    this.streetName = jsonObject['street_name'];
    this.streetNumber = jsonObject['street_number'];
    this.city = jsonObject['city'];
    this.state = jsonObject['state'];
    this.country = jsonObject['country'];
    this.postCode = jsonObject['post_code'];
  }
}
