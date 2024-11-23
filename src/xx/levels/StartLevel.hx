package xx.levels;

class StartLevel extends h2d.Scene
{
    private var app : xx.App;
    public var gfx  : h2d.Graphics;

    public var tile : h2d.Tile;
    public var bmp : h2d.Bitmap;

    public var c : Float;

    public function new(app : xx.App)
   {
        super();
        this.gfx = new h2d.Graphics(this);
        trace("New Start Level");

        this.tile = h2d.Tile.fromColor(0x666666, 100, 100);
        this.bmp = new h2d.Bitmap(this.tile, this);
        bmp.x = 300;
        bmp.y = 300;
        bmp.rotation = 90;
        //addChild(bmp);
    }

    public function update(dt:Float)
    {
        this.c += 0.1;
        //this.bmp.x += Math.sin(this.c) * 10;
        //this.bmp.y += Math.cos(this.c);
        //this.bmp.rotation += Math.cos(this.c) / 10.0;

        trace(this.renderer, dt, this.c);
    }

    override public function render(engine: h3d.Engine)
    {
        trace("Render Start Level");
        //trace("Start Level Engine.render()");
        engine.begin();
            engine.clear(0xAAAAAA);

            //this.renderer.drawTile(bmp,tile);

            gfx.beginFill(0x444444);
            //gfx.drawRect(400,100,100,100);
            gfx.endFill();

            gfx.beginFill(0x222222);
            gfx.drawCircle(300,300, Math.sin(c) * 60);
            gfx.endFill();

            //gfx.beginTileFill(0,0,20,20, this.tile);
            gfx.drawTile(20,20, tile);

            //gfx.beginFill(0x00FF00);
            //gfx.drawRect(100,100,100,100);
            //gfx.endFill();
        engine.end();

        super.render(engine);

        //trace("Start Level Engine.render()");
    }
}
