package xx.levels;

class DebugLevel extends h2d.Scene
{
    public function new()
    {
        super();
    }

    override public function render(engine: h3d.Engine)
    {
        trace("Debug Level Engine.render()");
        engine.begin();
        engine.clear(0xAAAAAA);
        trace(engine);
        trace(engine.hardware);

        engine.end();
    }

    public function onBeginDraw(e:h2d.Drawable)
    {
        trace("Begin Draw");
    }
}
