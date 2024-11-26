package xx.levels;

class DeadLevel extends h2d.Scene
{
    public var gfx  : h2d.Graphics;
    public var txt : h2d.Text;

    public function new(app : xx.App)
    {
        super();
        this.gfx = new h2d.Graphics(this);

        var font = hxd.res.DefaultFont.get();
        font.resizeTo(13);
        this.txt = new h2d.Text(font, this);
        this.txt.text = "Dead.";
    }

    public function update(dt:Float)
    {
    }

    override public function draw(ctx: h2d.RenderContext)
    {
        ctx.clear(0xAA2222);
        this.gfx.beginFill(0x000FF);
        this.gfx.endFill();
    }
}
