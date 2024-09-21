package xx;

class DebugOverlay
{

    public var app : hxd.App;
    public var txt : h2d.Text;

    public function new(app: hxd.App)
    {

        this.app = app;
        var font = hxd.res.DefaultFont.get();
        font.resizeTo(26);
        this.txt = new h2d.Text(font);

        this.app.s2d.addChild(this.txt);
    }

    public function draw()
    {
        var fps = this.app.engine.fps;
        var drawCalls = this.app.engine.drawCalls;
        this.txt.text = 'FPS $fps. Draw Calls: $drawCalls';
    }
}
