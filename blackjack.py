#!/usr/bin/python

import deck

deck.shuffle()

number = 2
a = []

a.append(deck.deck.pop())
a.append(deck.deck.pop())

print a

while (1):
  print 'Hit or Stand?'
  action = raw_input()
  if action == 'H':
    a.append(deck.deck.pop())
  elif action == 'S':
    print a
