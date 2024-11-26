package xx.entity;

import Random;

// Wrapper class for h2d.Bitmap - DOES NOT inherit from Entity.
// This class is basically an entity.
class Sprite extends h2d.Bitmap
{
    private var dx : Int;
    private var dy : Int;
    private var speed : Float;

    public function new(tile: h2d.Tile, x,y, scale = 2, ?parent: h2d.Object)
    {
        super(tile, parent);
        this.x = x;
        this.y = y;
        this.scaleX = scale;
        this.scaleY = scale;

        this.speed = Random.int(40,120);
        this.dx = Random.int(-1,1);
        this.dy = Random.int(-1,1);
    }

    public function update(dt:Float)
    {
        this.x += this.dx * this.speed * dt;
        this.y += this.dy * this.speed * dt;
    }
}
