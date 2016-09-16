# Deck of Cards

### Objective

In Swift Structs and Classes are used extensively. This assignment is designed to help you understand the differences between Classes and Structs so that you can choose the best construct for your needs when building your own applications. It is natural to question whether to use a Class or a Struct, and this will become more and more clear as you use both and see the differences.

### To Do

**Create a struct called "Card"**

1.  Give the Card struct a property "value" which will hold the value of the card (A, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K). This value should be a String
2.  Give the Card a property "Suit" which will hold the suit of the card (Clubs, Spades, Hearts, Diamonds)
3.  Give the Card a property "numerical_value" which will hold the numerical value of the card 1-13

**Next, create a class called "Deck"**

1.  Give the Deck class a property called "cards" of type [Card]
2.  When initializing the deck make sure that it has the 52 unique cards in its "cards" property
3.  Give the Deck a deal method that selects the "top-most" card, removes it, and returns it
4.  Give the Deck a reset method that resets the cards property to the contain the original 52 cards
5.  Give the Deck a shuffle method that randomly reorders the deck's cards

**Finally, create a class called "Player"**

1.  Give the Player class a name property
2.  Give the Player a hand property of type [Card]
3.  Give the Player a draw method of type (Deck) -> Card which draws a card from a deck, adds it to the players hand, and returns it
    *   Note how we are passing the Deck by reference here since it is a class. 
4.  Give the Player a discard method of type (Card) -> Bool which discards the Card specified and returns True if the Card existed and was successfully removed or False if the Card was not in the player's hand.