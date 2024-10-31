package xx;

import xx.GameState;

class Game extends hxd.App
{
    public var gfx : h2d.Graphics;
    public var txt : h2d.Text;

    public var gameState = GameState.PRE_PLAY;

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

    }

    override function update(dt:Float) 
    {
        switch(this.gameState){
            case (PRE_PLAY):
                trace("Pre Play");
                setScene(new xx.levels.StartLevel());
            case (PLAYING):
                setScene(new xx.levels.GameLevel());
                trace("Playing");
            case (DEAD):
                trace("Dead");
        }


        if(hxd.Key.isPressed(hxd.Key.SPACE))
        {
            //this.gameState = xx.GameState.PLAYING;
        }

    }

    override function render(engine)
    {

        this.gfx.clear();

        this.gfx.drawRect(100,100,100,100);

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
        var triangles = this.engine.drawTriangles;
        this.txt.text = 'FPS $fps. Draw Calls: $drawCalls. Tri: $triangles';
    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
