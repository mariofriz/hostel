class Hostel : Gtk.Application
{
    private HostelWindow window;
    //private HostelService service;

    public Hostel()
    {
        Object(application_id: "com.mariofriz.hostel");
    }

    protected override void activate()
    {
        // Open a hostel window for the clients
        this.window = new HostelWindow(this);
        this.window.present();
    }

}
