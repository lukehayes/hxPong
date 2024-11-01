package xx;

class Game extends xx.App
{
    override function init() 
    {
        super.init();
    }

    static function main() {
        hxd.Res.initEmbed();
        new Game();
    }
}
