extends Spatial
tool

export var right: NodePath;

var _material = SpatialMaterial.new();

func _ready():
	_update_lines();

func _update_lines():
	_clear_lines();
	_draw_line_to(right);

func _clear_lines():
	var im = $Draw;
	im.material_override = _material;
	im.clear();
	
func _draw_line_to(node_path):
	if node_path == null: return;
	
	var node = get_node(node_path);
	var im = $Draw;
	var hover_offset = Vector3(0, 0.2, 0);
	
	var destination = node.translation - translation;
	
	im.begin(Mesh.PRIMITIVE_POINTS, null);
	im.add_vertex(hover_offset);
	im.add_vertex(destination + hover_offset);
	im.end();
	im.begin(Mesh.PRIMITIVE_LINE_STRIP, null);
	im.add_vertex(hover_offset);
	im.add_vertex(destination + hover_offset);
	im.end();