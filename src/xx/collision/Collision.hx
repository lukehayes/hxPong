package xx.collision;

import h2d.col.Bounds;

class Collision extends Bounds
{

    private var bounds : Bounds;

    public function new(x: Float, y: Float, w :Float = 16, h :Float = 16)
    {
        super();

        this.bounds = Bounds.fromValues(x,y,w,h);
    }

    public function getCollision() : Bounds
    {
        return this.bounds;
    }

    override public function toString() : String
    {
        return "Collision Bounds";
    }
}
