class ItensController < ApplicationController
  # GET /itens
  # GET /itens.xml
  def index
    @itens = Item.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itens }
    end
  end

  # GET /itens/1
  # GET /itens/1.xml
  def show
    @item = Item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item }
    end
  end

  # GET /itens/new
  # GET /itens/new.xml
  def new
    @item = Item.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item }
    end
  end

  # GET /itens/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /itens
  # POST /itens.xml
  def create
    @carrinho = carrinho_atual
    produto = Produto.find(params[:id_produto])
    @item = @carrinho.itens.
      find_by_produto_id(params[:id_produto])
    if @item
      @item.quantidade += 1
    else
      @item = @carrinho.itens.build(
        :produto => produto)
    end

    respond_to do |format|
      if @item.save
        format.html { 
          redirect_to(loja_url,
            :notice =>
              'Item adicionado ao carrinho.') }
        format.js
        format.xml  { render :xml => @item, :status => :created, :location => @item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itens/1
  # PUT /itens/1.xml
  def update
    @item = Item.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to(@item, :notice => 'Item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itens/1
  # DELETE /itens/1.xml
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to(itens_url) }
      format.xml  { head :ok }
    end
  end
end
