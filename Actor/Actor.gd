tool
class_name Actor

extends Node2D


var model: ModelInterface
enum model_types {
	MODEL_1 = 1,
	MODEL_2 = 2,
}

export(model_types) var current_model_type: int = model_types.MODEL_1 setget set_current_model

func set_current_model(_model_type: int) -> void:
	current_model_type = _model_type
	
	self.set_model(ModelFactory.create(_model_type))
	

func set_model(_model: ModelInterface):
	assert(_model != null)
	
	if self.model:
		self.remove_child(self.model)

	self.model = _model.init()
	self.add_child(self.model)
	self.model.set_owner(self)
