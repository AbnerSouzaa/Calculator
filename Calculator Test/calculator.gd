extends Control

onready var res = get_node("display")
var num1 = null
var num2 = null
var result = 0
var operation = ""
 
func _on_Delet_pressed():
	
	num1 = null
	num2 = null
	res.set_text("")

func _on_Delet2_pressed():
	
	var text = []
	for i in res.get_text():
		text.append(i)
	text.remove(text.size() - 1)
	res.set_text("")
	for i in text:
		res.set_text(res.get_text() + i)

func _on_divided_by_pressed():

	operation = "divided by"
	if num1 == null:
		num1 = float(res.get_text())
		res.set_text("")
	else:
		num2 = floor(res.get_text()) 
		perform_operation(operation)

func _on_Times_pressed():
	
	operation = "Times"
	if num1 == null:
		num1 = float(res.get_text())
		res.set_text("")
	else:
		num2 = floor(res.get_text()) 
		perform_operation(operation)

func _on_Seven_pressed():
	res.set_text(res.get_text() + "7")
	

func _on_Eight_pressed():
	res.set_text(res.get_text() + "8")
	

func _on_Nine_pressed():
	res.set_text(res.get_text() + "9")
	

func _on_Minus_pressed():
	
	operation = "Minus"
	if num1 == null:
		num1 = float(res.get_text())
		res.set_text("")
	else:
		num2 = floor(res.get_text()) 
		perform_operation(operation)

func _on_Four_pressed():
	res.set_text(res.get_text() + "4")
	
	

func _on_Five_pressed():
	res.set_text(res.get_text() + "5")
	

func _on_Six_pressed():
	res.set_text(res.get_text() + "6")
	
	
func _on_Plus_pressed():
	
	operation = "Plus"
	if num1 == null:
		num1 = float(res.get_text())
		res.set_text("")
	else:
		num2 = floor(res.get_text()) 
		perform_operation(operation)

func _on_One_pressed():
	res.set_text(res.get_text() + "1")
	

func _on_Two_pressed():
	res.set_text(res.get_text() + "2")
	

func _on_Three_pressed():
	res.set_text(res.get_text() + "3")
	

func _on_Equals_pressed():
	
	perform_operation(operation)


func _on_Zero_pressed():
	res.set_text(res.get_text() + "0")
	

func _on_Point_pressed():
	
	var point = false
	for i in res.get_text():
		if i == ".":
			point = true
	if !point:
		res.set_text(res.get_text() + ".")
		
func perform_operation(operation):
	
	if num2 == null:
		num2 = float(res.get_text())
	
	if num1 != null:
		if operation == "divided by":
			result = num1 / num2
			res.set_text(str(result))
		elif operation == "Plus":
			result = num1 + num2
			res.set_text(str(result))
		elif operation == "Minus":
			result = num1 - num2
			res.set_text(str(result))
		elif operation == "Times":
			result = num1 * num2
			res.set_text(str(result))
			 
		num1 = null
		num2 = null
		
	
