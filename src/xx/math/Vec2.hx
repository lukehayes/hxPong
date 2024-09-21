package xx.math;

class Vec2
{
    public var x : Float;
    public var y : Float;

    public function new(x:Float, y:Float)
    {
        this.x = x;
        this.y = y;
    }

    public function magnitude() : Float
    {
        return Math.sqrt(
            this.x * this.x +
            this.y * this.y
        );
    }

    public function length() : Float
    {
        return this.magnitude();
    }

    public function normalize() : Vec2
    {
        return new Vec2(
            this.x / this.magnitude(),
            this.y / this.magnitude()
        );
    }

    static public function dot(a: Vec2, b: Vec2) : Float
    {
        return a.x * b.x + a.y * b.y;
    }


    public function toString()
    {
        return  "Vec2(" + this.x + "," + this.y + ")";
    }
}
