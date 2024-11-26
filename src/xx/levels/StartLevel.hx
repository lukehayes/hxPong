package xx.levels;

class StartLevel extends h2d.Scene
{
    public var gfx  : h2d.Graphics;

    public var c : Float;
    public var s1 : xx.entity.Sprite;
    public var s2 : xx.entity.Sprite;

    public function new(app : xx.App)
    {
        super();
        this.gfx = new h2d.Graphics(this);
        this.s1 = new xx.entity.Sprite(hxd.Res.debug.toTile(), 100,200, this);
        this.s2 = new xx.entity.Sprite(hxd.Res.debug.toTile(), 300,400, this);
    }

    public function update(dt:Float)
    {
        this.c += 0.1;
        s1.update(dt);
        s2.update(dt);
    }

    override public function draw(ctx: h2d.RenderContext)
    {
        ctx.clear(0xAAAAAA);
        this.gfx.beginFill(0x000FF);
        this.gfx.drawRect(200 + Math.sin(c) * 100.0, 200 + Math.cos(c) * 100.0,100,100);
        this.gfx.drawTile(200 + Math.cos(c) * 100.0, 200 + Math.sin(c) * 100.0, s1.tile);
        this.gfx.endFill();

        this.gfx.beginFill(0x55555);
        this.gfx.drawRect(200 + Math.sin(c) * 100.0, 200 + Math.cos(c) * 100.0,100,100);
        this.gfx.drawTile(200 + Math.cos(c) * 100.0, 200 + Math.sin(c) * 100.0, s1.tile);
        //this.gfx.draw(200 + Math.cos(c) * 100.0, 200 + Math.sin(c) * 100.0, ctx);
    
        //s1.emitTile(ctx, s1.tile);


        //this.gfx.endFill();

        //super.draw(ctx);
        //ctx.begin();
        //ctx.end();
    }
}
