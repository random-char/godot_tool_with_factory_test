class_name ModelFactory

extends Resource

const MODEL_1 = preload("res://Model/1/Model1.tscn")
const MODEL_2 = preload("res://Model/2/Model2.tscn")

static func create(_type: int) -> ModelInterface:
	match _type:
		1:
#			return Model1.new()
			return MODEL_1.instance() as ModelInterface
		2:
#			return Model2.new()
			return MODEL_2.instance() as ModelInterface
		_:
			return null
