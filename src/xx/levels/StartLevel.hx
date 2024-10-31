package xx.levels;

class StartLevel extends h2d.Scene
{
    public var gfx : h2d.Graphics;
    public var txt : h2d.Text;

    public function new() 
    {
        super();
        trace("New Start Level");
    }

    override public function render(engine: h3d.Engine)
    {
        trace("Start Level Engine.render()");
        engine.begin();
            engine.clear(0xAA00AA);
            trace(engine);
            trace(engine.hardware);
        engine.end();
    }


}
