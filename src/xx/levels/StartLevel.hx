package xx.levels;

class StartLevel extends h2d.Scene
{
    private var app : xx.App;
    public var gfx  : h2d.Graphics;

    public var tile : h2d.Tile;
    public var bmp : h2d.Bitmap;

    public var c : Float;
    public var s1 : xx.entity.Sprite;

    public function new(app : xx.App)
    {
        super();
        this.gfx = new h2d.Graphics(this);

        this.tile = hxd.Res.debug.toTile();
        this.bmp = new h2d.Bitmap(tile,this);

    }

    public function update(dt:Float)
    {
        this.c += 0.1;
        //bmp.x += Math.sin(c) * 10.0;
        //this.bmp.x += Math.sin(this.c) * 10;
        //this.bmp.y += Math.cos(this.c);
        //this.bmp.rotation += Math.cos(this.c) / 10.0;

    }

    override public function draw(ctx: h2d.RenderContext)
    {
        ctx.clear(0xAAAAAA);
        this.gfx.beginFill(0x000FF);
        this.gfx.drawRect(200 + Math.sin(c) * 100.0, 200 + Math.cos(c) * 100.0,100,100);
        this.gfx.drawTile(200 + Math.cos(c) * 100.0, 200 + Math.sin(c) * 100.0, tile);
        this.gfx.endFill();

        this.gfx.beginFill(0x55555);
        this.gfx.drawRect(200 + Math.sin(c) * 100.0, 200 + Math.cos(c) * 100.0,100,100);
        this.gfx.drawTile(200 + Math.cos(c) * 100.0, 200 + Math.sin(c) * 100.0, tile);
        this.gfx.endFill();

        //super.draw(ctx);
        //ctx.begin();
        //ctx.end();
    }
}
