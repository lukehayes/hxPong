package xx.levels;

import xx.game.Ball;
import xx.game.Paddle;
import xx.entity.Entity;
import xx.math.Vec2;

class GameLevel extends h2d.Scene
{
    public  var gfx  : h2d.Graphics;
    public  var txt  : h2d.Text;
    private var app  : xx.App;

    public static var entities = new Array<Entity>();
    public var paddle : Paddle;
    public var ball : Ball;

    public function new(app: xx.App)
    {
        super();
        this.app = app;
        this.app.setScene(this);

        this.ball = new Ball(
            new Vec2(200,200),
            10,
            this);

        this.paddle = new Paddle(
            new Vec2(200,200),
            10,
            this);

        //add(this.paddle);

    }

    public function update(dt:Float)
    {
        trace("dt", dt);
        //this.ball.update(dt);
    }

    //override public function render(engine: h3d.Engine)
    //{
        //this.paddle.draw(gfx);
    //}
}
