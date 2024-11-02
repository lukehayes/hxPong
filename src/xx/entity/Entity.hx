package xx.entity;

import xx.math.Vec2;
import Random;
import h2d.col.Bounds;

class Entity extends h2d.Bitmap
{
    public var position : Vec2;
    public var dx       : Int;
    public var dy       : Int;
    public var speed    : Int;
    //public var tile     : h2d.Tile;
    public var app      : xx.App;

    public var collision : Bounds;

    public function new(pos: Vec2, scale: Float, scene: h2d.Scene, ?app: xx.App)
    {
        super(h2d.Tile.fromColor(0xFF00FF, 10,10), scene);
        var dirs = [-1,1];

        this.x = pos.x;
        this.y = pos.y;

        this.scaleX = scale;
        this.scaleY = scale;
        this.speed    = Random.int(200,400);

        this.dx = dirs[Random.int(0,1)];
        this.dy = dirs[Random.int(0,1)];

        this.app = app;
    }

    public function update(dt:Float)
    {
        // TODO Movement should be velocity based.

        if(this.position.x <=10 || this.position.x >= app.engine.width - 10)
        {
            this.dx = -this.dx;
        }

        if(this.position.y <=10 || this.position.y >= app.engine.height - 10)
        {
            this.dy = -this.dy;
        }

        position.x += this.dx * this.speed * dt;
        position.y += this.dy * this.speed * dt;
    }

    //public function draw(gfx: h2d.Graphics)
    //{
        //gfx.beginFill(this.color);
            //gfx.drawRect(
                //this.position.x,
                //this.position.y,
                //20,
                //20
            //);
        //gfx.endFill();
    //}
}


