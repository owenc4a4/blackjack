import random

deck = []


def shuffle():
  del deck[0: len(deck)]
  deck.extend([1,2,3,4,5,7,8,9,10,11,12,13] * 32)
  random.seed()
  random.shuffle(deck)

