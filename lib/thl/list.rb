class THL::List < THL::Wrapper
  expose :tasks, :Task
  def to_s
    name
  end
end