Select firstName, lastName, city, state From Person
Left Join Address
On Person.personId = Address.personId
