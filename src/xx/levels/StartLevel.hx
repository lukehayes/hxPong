package xx.levels;

class StartLevel extends h2d.Scene
{
    private var app : hxd.App;
    public var gfx  : h2d.Graphics;
    public var txt  : h2d.Text;

    public function new(app : hxd.App)
    {
        super();
        this.app = app;
        trace("New Start Level");
    }

    override function sync(ctx)
    {
        super.sync(renderer);
        trace("Star Level Sync");
    }

    override public function render(engine: h3d.Engine)
    {
        trace("Start Level Engine.render()");
        engine.begin();
            engine.clear(0x0044AA);
        engine.end();
    }


}
