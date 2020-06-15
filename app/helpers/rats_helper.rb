module RatsHelper
  def choose_new_or_edit
    if action_name == 'new'
      confirm_rats_path
    elsif action_name == 'edit'
      rat_path
    end
  end
end
