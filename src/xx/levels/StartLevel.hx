package xx.levels;

class StartLevel extends h2d.Scene
{
    override public function render(engine: h3d.Engine)
    {
        trace("Start Level Engine.render()");
        engine.begin();
            engine.clear(0xAAAAAA);
            trace(engine);
            trace(engine.hardware);
        engine.end();
    }


}
