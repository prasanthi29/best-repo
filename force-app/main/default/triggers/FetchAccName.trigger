trigger FetchAccName on Opportunity (After insert) {
FetchAccName fa = new FetchAccName();
fa .fetchaccount(trigger.new);
}