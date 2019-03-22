class PictureUploader < CarrierWave::Uploader::Base

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end
  
  #storage :file
  #storage :aws
  #storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end  