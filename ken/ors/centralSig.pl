rule(buy(Agent,Item),
     [rule3,
      [class(Item,item),class(Agent,agent),class(Item,item),class(Agent,agent),inBasket(Agent,Item,PseudoVar0),money(Agent,Amount),cost(Item,Price),calculation(Price  < Amount)],
      [class(Agent,agent),class(Agent,agent),class(Item,item),class(Agent,agent),has(Agent,Item),calculation(Newamount is Amount - Price),money(Agent,Newamount),not(money(Agent,Amount))]
    ]).

rule(putInBasket(Agent,Group,Item),
     [rule2,
      [class(Group,group),class(Agent,agent),class(Item,item),class(Agent,agent),chooseItem(Agent,Item,Ref),registeredMember(Agent,Group),class(Group,group)],
      [class(Item,item),class(Agent,agent),inform(inBasket(Agent,Item,PseudoVar0))]
    ]).

rule(joinGroup(Agent,Group),
     [rule1,
      [class(Group,group),class(Agent,agent),interest(Agent,Group),class(Group,group)],
      [class(Group,group),class(Agent,agent),registeredMember(Agent,Group)]
    ]).

nonFactsList([class,member,assert]).

myFactsList([inBasket,has,money]).

transitivePredsList([]).

predicate(has(agent,item)).
predicate(inBasket(agent,item,confirmationNumber)).
predicate(chooseItem(agent,item,confirmationNumber)).
predicate(interest(agent,group)).
predicate(registeredMember(agent,group)).
predicate(cost(item,number)).
predicate(money(agent,number)).
predicate(sterling(agent,number)).

subclass(item,thing).
subclass(group,thing).
subclass(shoppingGroup,group).
subclass(academicGroup,group).
subclass(agent,thing).
subclass(book,item).
subclass(currency,thing).
subclass(confirmationNumber,thing).
subclass(sitVar,thing).