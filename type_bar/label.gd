extends Label

func _ready():
	# Set the text for the label
	text = "Type here!"

	# Use the correct enum values for alignment
	horizontal_alignment = HorizontalAlignment.HORIZONTAL_ALIGNMENT_CENTER
	vertical_alignment = VerticalAlignment.VERTICAL_ALIGNMENT_CENTER
