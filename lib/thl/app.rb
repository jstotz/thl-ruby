class THL::App < THL::Wrapper
  expose :folders, :Folder do |app|
    app.foldersGroup.groups
  end
  
  def lists
    folders.collect {|folder| folder.lists}.flatten
  end

  def initialize
    @osx_object = SBApplication.applicationWithBundleIdentifier('com.potionfactory.TheHitList')
  end
end