class ImageUploader < CarrierWave::Uploader::Base
  # 画像リサイズ用にRMagickをinclude
  include CarrierWave::RMagick

  process :fix_rotate
  def fix_rotate
    manipulate! do |img|
      img = img.auto_orient
      img = yield(img) if block_given?
      img
    end
  end

  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def filename
     "#{secure_token(10)}.#{file.extension}" if original_filename.present?
  end

  protected
  def secure_token(length=16)
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.hex(length/2))
  end

  # Create different versions of your uploaded files:
  # リサイズの設定(要RMagick)
  # 1つだけではなく複数のversionを設定可能
  version :thumb do
      process resize_to_fit: [50, 50]
  end
end
