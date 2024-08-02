extends Node

var puntos = 0

@onready var score_label = $ScoreLabel

func add_punto():
	puntos += 1
	score_label.text = "Encontraste " + str(puntos) + " monedas."
	
