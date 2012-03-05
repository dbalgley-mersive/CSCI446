class ArticleDataController < ApplicationController
  # GET /article_data
  # GET /article_data.json
  def index
    @article_data = ArticleDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @article_data }
    end
  end

  # GET /article_data/1
  # GET /article_data/1.json
  def show
    @article_datum = ArticleDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article_datum }
    end
  end

  # GET /article_data/new
  # GET /article_data/new.json
  def new
    @article_datum = ArticleDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article_datum }
    end
  end

  # GET /article_data/1/edit
  def edit
    @article_datum = ArticleDatum.find(params[:id])
  end

  # POST /article_data
  # POST /article_data.json
  def create
    @article_datum = ArticleDatum.new(params[:article_datum])

    respond_to do |format|
      if @article_datum.save
        format.html { redirect_to @article_datum, notice: 'Article datum was successfully created.' }
        format.json { render json: @article_datum, status: :created, location: @article_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @article_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /article_data/1
  # PUT /article_data/1.json
  def update
    @article_datum = ArticleDatum.find(params[:id])

    respond_to do |format|
      if @article_datum.update_attributes(params[:article_datum])
        format.html { redirect_to @article_datum, notice: 'Article datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_data/1
  # DELETE /article_data/1.json
  def destroy
    @article_datum = ArticleDatum.find(params[:id])
    @article_datum.destroy

    respond_to do |format|
      format.html { redirect_to article_data_url }
      format.json { head :no_content }
    end
  end
end
