package xx.game;

import xx.math.Vec2;
import h2d.col.Bounds;
import xx.entity.Entity;

class Ball extends Entity
{
    public function new(pos: Vec2, scale: Vec2, app: hxd.App)
    {
        super(pos, scale, app);
        this.collision = Bounds.fromValues(pos.x,pos.y,16,16);
    }

    override public function update(dt: Float)
    {
        super.update(dt);

        this.collision.x = this.position.x;
        this.collision.y = this.position.y;

    }

    override public function draw(g: h2d.Graphics)
    {
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

        super.draw(g);
    }
}
