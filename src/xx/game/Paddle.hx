package xx.game;

import xx.entity.Entity;
import xx.math.Vec2;
import h2d.col.Bounds;

class Paddle extends Entity
{
    private var scene : h2d.Scene;

    public function new(pos: Vec2, scale: Vec2, scene: h2d.Scene, app: hxd.App)
    {
        super(pos, scale, app);
        this.scale.x = scale.x * 13;
        this.scale.y = scale.y * 2;
        this.scene = scene;
        this.collision = Bounds.fromValues(pos.x,pos.y, this.scale.x,this.scale.y);
    }

    override function update(dt:Float)
    {
        this.position.x = scene.mouseX;
        this.position.y = 520;

        this.collision.x = this.position.x;
        this.collision.y = this.position.y;

        if(this.position.x <= 1)
        {
            this.position.x = 1;
            this.collision.x = 1;
        }

        if(this.position.x >= 680)
        {
            this.position.x = 680;
            this.collision.x = 680;
        }
    }

    override public function draw(g: h2d.Graphics)
    {
        super.draw(g);

        #if showCollisions
        g.beginFill(0xFF00FF);
            g.drawRect(
                this.collision.x,
                this.collision.y,
                this.collision.width,
                this.collision.height
            );
        g.endFill();
        #end
    }

}
