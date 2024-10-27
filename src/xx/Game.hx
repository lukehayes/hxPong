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

        for(x in 1...10)
        {
            var rx = Std.random(100);
            var ry = Std.random(100);

            xx.Global.entities.push(
                new Ball(
                    new Vec2(rx,ry),
                    new Vec2(10,10),
                    this)
            );
        }

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
        #if debug
        this.showFPS();
        #end


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
        this.txt.text = 'FPS $fps. Draw Calls: $drawCalls';
    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
