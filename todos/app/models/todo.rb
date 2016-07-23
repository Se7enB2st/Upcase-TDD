class Todo < ActiveRecord::Base
  def completed?
    completed_at? #ActiveRecord return nil
  end
end
