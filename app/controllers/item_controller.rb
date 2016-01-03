class ItemController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_action  :verify_authenticity_token
  #I get something like this
  #{type:entity,id:5bc053ccfb1646ceaa455fcd4a52f846,attributes:{title:611269357011,tags:[],images:[]},links:{creative:/1/creatives?entity=5bc053ccfb1646ceaa455fcd4a52f846}}
  def collect
    barcode = params[:attributes][:title]
    @item = RecyclableItem.where(barcode: barcode).first
    render json: {status: :ok, item: @item}
  end
end
