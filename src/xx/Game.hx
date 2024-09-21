package xx;

class Game extends hxd.App
{
    public var gfx : h2d.Graphics;
    public var txt : h2d.Text;

    override function init() 
    {
        this.gfx = new h2d.Graphics(s2d);

        // --------------------------------------------------------------------
        // UI TEXT
        // --------------------------------------------------------------------
        var font = hxd.res.DefaultFont.get();
        font.resizeTo(26);
        this.txt = new h2d.Text(font);

        s2d.addChild(this.txt);
    }

    override function update(dt:Float) 
    {
        #if debug
            this.showFPS();
        #end
    }

    private function showFPS()
    {
        var fps = this.engine.fps;
        var drawCalls = this.engine.drawCalls;
        this.txt.text = 'FPS $fps. Draw Calls: $drawCalls';
    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
