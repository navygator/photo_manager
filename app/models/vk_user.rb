class VkUser
  attr_accessor :token, :vk_id

  def initialize(params={})
    @vk_id = params[:vk_id] if params[:vk_id].present?
    @token = params[:token] if params[:token].present?
  end
end