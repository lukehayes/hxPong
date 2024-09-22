package xx.game;

import xx.math.Vec2;
import h2d.col.Bounds;
import xx.entity.Entity;

class Ball extends Entity
{
    public var collision : Bounds;

    public function new(pos)
    {
        super(pos, new Vec2(16,16));
        this.collision = Bounds.fromValues(pos.x,pos.y,16,16);
    }

    override public function update(dt: Float)
    {
        super.update(dt);

        this.collision.x = this.position.x;
        this.collision.y = this.position.y;

        for(e in xx.Global.entities)
        {
            var ee = cast(e, Ball);
            if(ee == this) return;
            if (this.collision.intersects(ee.collision)) {
                this.color = 0x00FF00;
                this.scale.x = 40;
                this.scale.y = 40;
            }else {
                this.color = 0xFFFF00;
            }
        }
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
