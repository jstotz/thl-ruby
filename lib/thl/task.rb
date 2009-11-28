class THL::Task < THL::Wrapper
  expose :tasks, :Task
  def to_s
    title
  end
end