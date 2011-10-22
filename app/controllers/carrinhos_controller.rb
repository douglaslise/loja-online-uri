class CarrinhosController < ApplicationController
  # GET /carrinhos
  # GET /carrinhos.xml
  def index
    @carrinhos = Carrinho.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carrinhos }
    end
  end

  # GET /carrinhos/1
  # GET /carrinhos/1.xml
  def show
    @carrinho = Carrinho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @carrinho }
    end
  end

  # GET /carrinhos/new
  # GET /carrinhos/new.xml
  def new
    @carrinho = Carrinho.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @carrinho }
    end
  end

  # GET /carrinhos/1/edit
  def edit
    @carrinho = Carrinho.find(params[:id])
  end

  # POST /carrinhos
  # POST /carrinhos.xml
  def create
    @carrinho = Carrinho.new(params[:carrinho])

    respond_to do |format|
      if @carrinho.save
        format.html { redirect_to(@carrinho, :notice => 'Carrinho was successfully created.') }
        format.xml  { render :xml => @carrinho, :status => :created, :location => @carrinho }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @carrinho.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carrinhos/1
  # PUT /carrinhos/1.xml
  def update
    @carrinho = Carrinho.find(params[:id])

    respond_to do |format|
      if @carrinho.update_attributes(params[:carrinho])
        format.html { redirect_to(@carrinho, :notice => 'Carrinho was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @carrinho.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carrinhos/1
  # DELETE /carrinhos/1.xml
  def destroy
    @carrinho = carrinho_atual
    @carrinho.destroy
    session[:id_carrinho] = nil

    respond_to do |format|
      format.html { redirect_to(loja_url) }
      format.xml  { head :ok }
    end
  end
end
