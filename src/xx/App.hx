package xx;

import xx.GameState;

class App extends hxd.App
{
    public var gfx : h2d.Graphics;
    public var txt : h2d.Text;

    public var gameState = GameState.PRE_PLAY;

    public var startLevel : xx.levels.StartLevel;
    public var gameLevel : xx.levels.GameLevel;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);

        // --------------------------------------------------------------------
        // UI TEXT
        // --------------------------------------------------------------------
        var font = hxd.res.DefaultFont.get();
        font.resizeTo(26);
        this.txt = new h2d.Text(font, s2d);

        this.startLevel = new xx.levels.StartLevel(this);
        this.gameLevel = new xx.levels.GameLevel(this);
    }

    override function update(dt:Float) 
    {
        switch(this.gameState){
            case (PRE_PLAY):
                setScene(this.startLevel);
            case (PLAYING):
                setScene(this.gameLevel);
            case (DEAD):
                trace("Dead");
        }

        if(hxd.Key.isPressed(hxd.Key.SPACE))
        {
            trace("Space Pressed");
            this.gameState = xx.GameState.PLAYING;
        }

        if(hxd.Key.isPressed(hxd.Key.F))
        {
            this.gameState = xx.GameState.PRE_PLAY;
        }
    }

    //override function render(engine)
    //{
        //trace("xx.App render");
        //super.render(engine);
    //}
    //override public function render(engine: h3d.Engine)
    //{
        //trace("Game Level Engine.render()");
        //engine.begin();
            //engine.clear(0x5544A7);

            //gfx.drawRect(300,100,40,200);
        //engine.end();
        //super.render(engine);

    //}


    public function showFPS(scene: h2d.Scene)
    {
        var fps = this.engine.fps;
        var drawCalls = this.engine.drawCalls;
        var triangles = this.engine.drawTriangles;
        this.txt.text = 'FPS $fps. Draw Calls: $drawCalls. Tri: $triangles';

        scene.addChild(this.txt);
    }
}


