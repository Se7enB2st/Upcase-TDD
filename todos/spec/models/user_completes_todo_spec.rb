require "rails_helper"

describe Todo, "#completed?" do
  it "should returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.current)

    expect(todo).to be_completed
  end

  it "should returns false if completed_at is nil" do
    todo = Todo.new(completed_at: nil)

    expect(todo).not_to be_completed
  end
end

describe Todo, "#complete!" do
  it "should update completed_at to complete" do
    todo = Todo.create!(completed_at: nil)

    todo.complete!

    todo.reload

    expect(todo).to be_completed
  end
end

  describe Todo, "incomplete!" do
    it "should update completed_at to nil" do
      todo = Todo.create!(completed_at: Time.current)

      todo.incomplete!

      todo.reload

      expect(todo).not_to be_completed
    end
  end
