class ProdutosController < ApplicationController
  # GET /produtos
  # GET /produtos.xml
  def index
    @produtos = Produto.all
    @qtd_produtos = @produtos.count

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @produtos }
    end
  end

  # GET /produtos/1
  # GET /produtos/1.xml
  def show
    @produto = Produto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produto }
    end
  end

  # GET /produtos/new
  # GET /produtos/new.xml
  def new
    @produto = Produto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @produto }
    end
  end

  # GET /produtos/1/edit
  def edit
    @produto = Produto.find(params[:id])
  end

  # POST /produtos
  # POST /produtos.xml
  def create
    @produto = Produto.new(params[:produto])

    respond_to do |format|
      if @produto.save
        format.html { redirect_to(@produto, :notice => 'Produto foi criado com sucesso.') }
        format.xml  { render :xml => @produto, :status => :created, :location => @produto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /produtos/1
  # PUT /produtos/1.xml
  def update
    @produto = Produto.find(params[:id])

    respond_to do |format|
      if @produto.update_attributes(params[:produto])
        format.html { redirect_to(@produto, :notice => 'Produto foi alterado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @produto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.xml
  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    respond_to do |format|
      format.html { redirect_to(produtos_url) }
      format.xml  { head :ok }
    end
  end

  def imagem
    produto = Produto.find(params[:id])
    if produto
      send_data produto.imagem,
        :filename => 'imagem_produto_' + produto.id.to_s,
        :type => produto.tipo_imagem,
        :disposition => 'inline'
    end
  end
end
