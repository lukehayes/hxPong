package xx.entity;

// Wrapper class for h2d.Bitmap - DOES NOT inherit from Entity.
class Sprite extends h2d.Bitmap implements h3d.IDrawable
{
    private var context: h2d.RenderContext;

    public function new(x,y, scale)
    {
        super(h2d.Tile.fromColor(0xFFFF00, scale,scale));
        this.x = x;
        this.y = y;
    }

    public function update(dt:Float)
    {
        trace("Updating Sprite");
    }

    override public function draw(ctx: h2d.RenderContext)
    {
        super.emitTile(ctx, tile);
    }
    
    public function render(engine: h3d.Engine)
    {
        trace("Rendering");
    }
}
