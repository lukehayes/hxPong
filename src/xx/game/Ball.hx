package xx.game;

import xx.math.Vec2;
import h2d.col.Bounds;
import xx.entity.Entity;

class Ball extends Entity
{
    public function new(pos: Vec2, scale: Float, scene: h2d.Scene, ?app: xx.App)
    {
        super(pos, scale, scene, app);
        //this.collision = Bounds.fromValues(pos.x,pos.y,16,16);
    }

    override public function update(dt: Float)
    {
        super.update(dt);

        //this.collision.x = this.position.x;
        //this.collision.y = this.position.y;

        x += this.speed * dt;
        y += this.speed * dt;

    }

    //override public function draw(g: h2d.Graphics)
    //{
        //#if showCollisions
        //g.beginFill(0xFF00FF);
            //g.drawRect(
                //this.collision.x,
                //this.collision.y,
                //this.collision.width,
                //this.collision.height
            //);
        //g.endFill();
        //#end

        //super.draw(g);
    //}
}
