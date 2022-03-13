class User {
  String _name;
  String _mail;
  String _password;
  String _num_tel;
  String _adr;

  User(this._name, this._mail, this._password, this._num_tel, this._adr);

  String get name => this._name;

  set name(String value) => this._name = value;

  get mail => this._mail;

  set mail(value) => this._mail = value;

  get password => this._password;

  set password(value) => this._password = value;

  get num_tel => this._num_tel;

  set num_tel(value) => this._num_tel = value;

  get adr => this._adr;

  set adr(value) => this._adr = value;
}
