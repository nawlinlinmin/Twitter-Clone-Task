module SwitsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_swits_path
    elsif action_name == 'edit'
      swit_path
    end
  end
end
