package xx.game;

import xx.math.Vec2;

class Ball extends xx.entity.Entity
{
    public function new(pos)
    {
        super(pos, new Vec2(16,16));
    }

    override public function update(dt: Float)
    {
        super.update(dt);
    }

    override public function draw(g: h2d.Graphics)
    {
        super.draw(g);
    }
}
