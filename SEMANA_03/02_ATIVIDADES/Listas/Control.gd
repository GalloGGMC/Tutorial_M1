extends Control

var at1 = ["Meu","nome","é","Júlia"]
var at2 = []


func _on_BotoL1_pressed():
	$Box/ListaPronta/Lista.text = str(at1)

func _on_Button_pressed():
	at2.append($Box/ListaVazia/TextEdit.text)
	$Box/ListaVazia/Label.text = str(at2)
	
func _on_Button3_pressed():
	funPronta("Mama mia")

func _on_Button4_pressed():
	funVazia()


func funPronta(a):
	$Box/FuncaoPronta/Label.text = str(a)
	
func funVazia():
	$Box/FuncaoVazia/Label.text = $Box/FuncaoVazia/TextEdit.text


