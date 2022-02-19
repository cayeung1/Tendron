public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {

        double angle = 2*Math.PI / 7.0;
        Tendril a = new Tendril(len,0,x,y);
        a.show();
        Tendril b = new Tendril(len,angle,x,y);
        b.show();
        Tendril c = new Tendril(len,2*angle,x,y);
        c.show();
        Tendril d = new Tendril(len,3*angle,x,y);
        d.show();
        Tendril e = new Tendril(len,4*angle,x,y);
        e.show();
        Tendril f = new Tendril(len,5*angle,x,y);
        f.show();
        Tendril g = new Tendril(len,6*angle,x,y);
        g.show();
    }
}
