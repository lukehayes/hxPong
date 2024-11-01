package xx.levels;

class StartLevel extends h2d.Scene
{
    private var app : xx.App;
    public var gfx  : h2d.Graphics;
    public var txt  : h2d.Text;

    public var tile : h2d.Tile;
    public var bmp : h2d.Bitmap;

    public function new(app : xx.App)
    {
        super();
        this.app = app;
        this.gfx = new h2d.Graphics();
        trace("New Start Level");

        this.tile = h2d.Tile.fromColor(0xFF0000, 100, 100);
        this.bmp = new h2d.Bitmap(this.tile, this);
        bmp.x = 300;
        bmp.y = 300;
        bmp.rotation = 90;
        //addChild(bmp);
    }

    override public function render(engine: h3d.Engine)
    {
        

        trace("Start Level Engine.render()");
        engine.begin();
            engine.clear(0x0044AA);

            gfx.drawRect(100,100,100,100);
        engine.end();
        super.render(engine);

    }


}
