class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg png)
  end

  def default_url
    ActionController::Base.helpers.asset_path "avatar.png"
  end

  version :thumb do
    process resize_to_fill: [200, 200]
  end

  version :thum40 do
    process resize_to_fill: [40, 40]
  end

  def filename
    "avatar-#{secure_token}.#{file.extension}" if original_filename.present?
  end

  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model
      .instance_variable_set(var, SecureRandom.uuid)
  end
end
