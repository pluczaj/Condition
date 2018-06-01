module ApplicationHelper
  def is_admin
    user_logged
  end

  def user_logged
    current_user&.is_admin
  end

  def setting_url_for_layout
    setting = Setting.first
    setting ? edit_setting_url(setting) : new_setting_url
  end

  def main_setting
    Setting.first
  end
end
