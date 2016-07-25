class Todo < ActiveRecord::Base
  def completed?
    completed_at? #ActiveRecord return nil
  end

  def complete!
    touch :completed_at
  end

  def incomplete!
    update_column :completed_at, nil
  end
end
