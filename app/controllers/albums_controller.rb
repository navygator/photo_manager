class AlbumsController < ApplicationController
  def index
    @user = vk.users.get(uids: current_user.vk_id)
    @albums = vk.photos.get_albums
  end

  def show
    aid = params[:id]
    @album = vk.photos.get_albums(aids: aid)[0]
    @photos = vk.photos.get(aid: aid)
  end

  def update
    aid = "saved"
    @photos = vk.photos.get(aid: aid)
    @photos.each do |photo|
      puts "move photo #{photo.pid}"
      code = vk.photos.move(pid: photo.pid, target_aid: 171734611)
      puts "code #{code}"
    end
    redirect_to album_path("171734611")
  end

private
  def vk
    @vk ||= VkontakteApi::Client.new(current_user.token)
  end
end