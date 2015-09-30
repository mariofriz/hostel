class HostelWindow : Gtk.ApplicationWindow
{

    public HostelWindow(Gtk.Application app)
    {
        Object(application: app);
        // Destroy the building when the hostel finally closes
        this.delete_event.connect(this.onDeleteEvent);
        // Exit the hostel when a destroy event has been signaled
        this.destroy.connect(this.onDestroy);

        this.title = "Hostel";
    }

    public bool onDeleteEvent()
    {
        return false;
    }

    public void onDestroy()
    {
        Gtk.main_quit();
    }

}
