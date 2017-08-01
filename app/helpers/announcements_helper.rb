module AnnouncementsHelper
  def load_announcements
    @announcements ||= Announcement.take Settings.announcements
      .announcements_per_load
  end
end
