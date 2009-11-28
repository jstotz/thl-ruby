class THL::Folder < THL::Wrapper
  expose :lists, :List
  def to_s
    name
  end
end