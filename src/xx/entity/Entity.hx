package xx.entity;

import xx.math.Vec2;
import Random;

class Entity
{
    public var position : Vec2;
    public var scale    : Vec2;
    public var color    = 0xFF00FF;
    public var dx       : Int;
    public var dy       : Int;
    public var speed    : Int;
    public var tile     : h2d.Tile;

    public function new(pos: Vec2, scale: Vec2)
    {
        var dirs = [-1,1];

        this.position = pos;
        this.scale    = scale;
        this.speed    = Random.int(30,200);
        this.tile     = h2d.Tile.fromColor(0x00FF00);

        this.dx = dirs[Random.int(0,1)];
        this.dy = dirs[Random.int(0,1)];
    }

    public function update(dt:Float)
    {
        // TODO Movement should be velocity based.
        static var c = 0.0;
        c += 0.1;

        // position.x = this.position.x + Math.cos(c) * 10;

        if(this.position.x <=10 || this.position.x >= 750)
        {
            this.dx = -this.dx;
        }

        if(this.position.y <=10 || this.position.y >= 570)
        {
            this.dy = -this.dy;
        }

        position.x += this.dx * this.speed * dt;
        position.y += this.dx * this.speed * dt;
        
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


