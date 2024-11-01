package xx.levels;

import xx.game.Ball;
import xx.game.Paddle;
import xx.entity.Entity;
import xx.math.Vec2;

class GameLevel extends h2d.Scene
{
    public  var gfx  : h2d.Graphics;
    public  var txt  : h2d.Text;
    private var app  : hxd.App;

    public static var entities = new Array<Entity>();
    public var paddle : Paddle;

    public function new(app: xx.App)
    {
        super();
        this.app = app;
        trace("New Game Level");

        //xx.Global.entities.push(
            //new Ball(
                //new Vec2(200,200),
                //new Vec2(10,10),
                //app)
        //);

        //this.paddle = new Paddle(
            //new Vec2(200,200),
            //new Vec2(10,10),
            //this,
            //app);
    }



    function update(dt:Float)
    {
        for(e in Global.entities)
        {
            if (this.paddle.collision.intersects(e.collision))
            {
                e.dx = -e.dx;
                e.dy = -e.dy;
            }

            e.update(dt);
        }

        this.paddle.update(dt);
    }


    override public function render(engine: h3d.Engine)
    {
        this.paddle.draw(gfx);
    }
}
