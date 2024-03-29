package ohgs;

 import kha.graphics2.Graphics;
 import kha.math.Vector2;


class Object {
    public var position:Vector2;
    public var width:Float;
    public var height:Float;
    public var center:Vector2;
    public var active(default, set):Bool = true;

    public function new(?x:Float, ?y:Float, ?width:Float, ?height:Float) {
        position = new Vector2(x, y );

        this.width=width;
        this.height=height;

        center = new Vector2(width/2, height/2);

        activate(x, y);
    }

    public function update() {
        if(!active) return;

        center.x = width/2;
        center.y = height/2;


    }

    public function render(graphics:Graphics) {
        if (!active) return;
    }

    public function activate(?x:Float, ?y:Float) {
        active = true;
    }

     public function deactivate() {
        active = false;
    }
    function set_active(value:Bool):Bool {
        return active = value;
    }
}