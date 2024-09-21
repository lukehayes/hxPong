package xx;

import xx.game.Ball;
import xx.entity.Entity;

import xx.math.Vec2;

class Game extends hxd.App
{
    public var gfx : h2d.Graphics;
    public var txt : h2d.Text;

    public var entities: Array<Entity>;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);
        this.entities = new Array<Entity>();

        // --------------------------------------------------------------------
        // UI TEXT
        // --------------------------------------------------------------------
        var font = hxd.res.DefaultFont.get();
        font.resizeTo(26);
        this.txt = new h2d.Text(font);
        s2d.addChild(this.txt);

        this.entities.push(new Ball(
            new Vec2(200,200)
        ));

        this.entities.push(new Ball(
            new Vec2(300,100)
        ));

        this.entities.push(new Ball(
            new Vec2(430,400)
        ));


    }

    override function update(dt:Float) 
    {
        #if debug
            this.showFPS();
        #end


        for(e in this.entities)
        {
            e.update(dt);
        }
    }

    override function render(engine)
    {
        this.gfx.clear();

        for(e in this.entities)
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
