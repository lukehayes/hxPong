package xx;

import xx.game.Ball;
import xx.game.Paddle;
import xx.entity.Entity;

import xx.math.Vec2;

class Game extends hxd.App
{
    public var gfx : h2d.Graphics;
    public var txt : h2d.Text;
    public var entityCount = 10;

    public static var entities = new Array<Entity>();
    public var paddle : Paddle;

    public var buf : h3d.Buffer;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);

        // --------------------------------------------------------------------
        // UI TEXT
        // --------------------------------------------------------------------
        var font = hxd.res.DefaultFont.get();
        font.resizeTo(26);
        this.txt = new h2d.Text(font);
        s2d.addChild(this.txt);

        xx.Global.entities.push(
            new Ball(
                new Vec2(200,200),
                new Vec2(10,10),
                this)
        );

        this.paddle = new Paddle(
            new Vec2(200,200),
            new Vec2(10,10),
            s2d,
            this);
    }

    override function update(dt:Float) 
    {

        for(e in Global.entities)
        {
            if (this.paddle.collision.intersects(e.collision))
            {
                e.dx = -e.dx;
                e.dy = -e.dy;
            }

            e.update(dt);
        }

        this.paddle.update(dt);
    }

    override function render(engine)
    {

        this.gfx.clear();

        this.gfx.drawRect(100,100,100,100);

        for(e in Global.entities)
        {
            e.draw(this.gfx);
        }

        this.paddle.draw(gfx);

        super.render(engine);

    }

    public function showFPS()
    {
        var fps = this.engine.fps;
        var drawCalls = this.engine.drawCalls;
        var triangles = this.engine.drawTriangles;
        this.txt.text = 'FPS $fps. Draw Calls: $drawCalls. Tri: $triangles';
    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
