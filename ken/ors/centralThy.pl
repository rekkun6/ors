:- dynamic fact/1,class/2.

class(ourMutualFriend ,book).
class(bookShopGroup,shoppingGroup).
class(aiGroup,academicGroup).
class(123,confirmationNumber).
class(myref,confirmationNumber).
class(shoppingAgent,agent).
class(dollars,currency).
class(pseudoVar,confirmationNumber).
class(start,sitVar).


fact(cost(ourMutualFriend,9)).
fact(registeredMember(shoppingAgent,aiGroup)).
fact(chooseItem(shoppingAgent,ourMutualFriend,123)).
fact(interest(shoppingAgent,bookShopGroup)).
fact(money(shoppingAgent,100)).