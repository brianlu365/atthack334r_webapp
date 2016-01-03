class ItemController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action  :verify_authenticity_token
  #I get something like this
  #{type:entity,id:5bc053ccfb1646ceaa455fcd4a52f846,attributes:{title:611269357011,tags:[],images:[]},links:{creative:/1/creatives?entity=5bc053ccfb1646ceaa455fcd4a52f846}}
  def collect
    string = params[:title]
    barcode, name = string.split(',')
    @item = RecyclableItem.where(barcode: barcode).first
    @user = User.where(name: name).first
    if @item and @user
      @user.recyclable_item << @item
      @user.save!
      ActionCable.server.broadcast 'bin_channel', name: @user.name, item: @item.name
      render json: {status: :ok, item: @item, user: @user}
    else
      render json: {status: :not_found}
    end
  end
end
