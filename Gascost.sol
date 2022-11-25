//SPDX-License-Identifier:MIT
pragma solidity 0.8.6;
contract structure{
 struct Book 
{
     string title;
     string author;
     uint bookID;
     uint price;
}
// define a struct- name of the struct variable to represent the struct
Book book;
function setBook() public {
book= Book("Blokchain for beginners","Ineuron",4,1000);
}
function getBookId() public view returns(uint){
return book.bookID;
}
function getauthor() public view returns(string memory){
return book.author;
}
function gettitle() public view returns(string memory){
return book.title;
}
function getprice() public view returns(uint){
return book.price;
}
}

Deployment gascost:
 

setbookID :
modifies the statevariables.

 

getauthor:
 
getbookid:
 
getprice:
 
gettitle:
 	

Summary:
deployment cost:388579 : higher 

setbook:127442 : function consumes more gas since it is modifying state variables of type struct                                         
pure cannot be used here 
======================================================================
getauthor:24577  : function is of type memory  since it is view it requires less gas fee 
  pure cannot be used here
======================================================================
getBookID:23529 : calldata/storage/pure is not allowed
pure cannot be used here
======================================================================
getprice:23485   :calldata/storage/pure is not allowed
pure cannot be used here
======================================================================
gettitle: 24533     :function is of type memory  since it is view it requires less gas fee 
pure cannot be used here
======================================================================




