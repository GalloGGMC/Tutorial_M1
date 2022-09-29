extends Node2D

var a = []


func _process(delta):
	for i in range(len(a)):
		for j in range(len(a)):
			if a[i] > a[j] && i<j:
				var biggest = a[i]
				var lowest = a[j]
				a[j] = biggest
				a[i] = lowest
			elif a[i] < a[j] && i>j:
				var biggest = a[j]
				var lowest = a[i]
				a[i] = biggest
				a[j] = lowest
			
	$ColorRect/Label.text = str(a)

func _on_Button_pressed():
	a.append(int ($TextEdit.text))
	

# Tentei fazer um Insertion Sort mas não funcionou

#	change(a,iPosition(a))
	

#func iPosition(e : Array):
#	for i in range(len(e)):
#		if e[len(e)-1] > e[i]:
#			i += 1
#		else:
#			return i

#func change(e : Array, g : int):
#	var b = e
#	for j in range(g,len(e)):
	#	if j == len(e)-1:
#			e[g] = b[len(e)-1]
#			print(b)
#		else:
#			e[j+1] = b[j]
#			j += 1

# Se colocarmos os números na ordem 1, 5, 2, o esperado é:
#e = 1,5,2 => 1,5,5 => 1,2,5
#b = 1,5,2 => 1,5,2 => 1,5,2

# Mas o que realmente acontece é:
#e = 1,5,2 => 1,5,5 => 1,5,5
#b = 1,5,2 => 1,5,5 => 1,5,5
