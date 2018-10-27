class FileUploader < CarrierWave::Uploader::Base

  def store_dir
    "uploads/files/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
