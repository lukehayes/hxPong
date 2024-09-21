package xx;

import xx.game.Ball;
import xx.entity.Entity;

import xx.math.Vec2;

class Game extends hxd.App
{
    public var gfx : h2d.Graphics;
    public var txt : h2d.Text;

    public static var entities = new Array<Entity>();

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

        
        for(i in 0...100)
        {
            var rx = Std.random(500);
            var ry = Std.random(500);

            xx.Global.entities.push(
                new Ball(new Vec2(rx,ry))
            );
        }
    }

    override function update(dt:Float) 
    {
        #if debug
            this.showFPS();
        #end

        for(e in Global.entities)
        {
            e.update(dt);
        }
    }

    override function render(engine)
    {
        this.gfx.clear();

        for(e in Global.entities)
        {
            e.draw(this.gfx);
        }

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
