package xx.entity;

import xx.math.Vec2;
import Random;
import h2d.col.Bounds;

class Entity
{
    public var position : Vec2;
    public var scale    : Vec2;
    public var color    = 0xFFFFFF;
    public var dx       : Int;
    public var dy       : Int;
    public var speed    : Int;
    public var tile     : h2d.Tile;
    public var app      : hxd.App;

    public var collision : Bounds;

    public function new(pos: Vec2, scale: Vec2, app: hxd.App)
    {
        var dirs = [-1,1];

        this.position = pos;
        this.scale    = scale;
        this.speed    = Random.int(200,400);
        this.tile     = h2d.Tile.fromColor(0x00FF00);

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

    public function draw(gfx: h2d.Graphics)
    {
        gfx.beginFill(this.color);
            gfx.drawRect(
                this.position.x,
                this.position.y,
                this.scale.x,
                this.scale.y
            );
        gfx.endFill();
    }
}


