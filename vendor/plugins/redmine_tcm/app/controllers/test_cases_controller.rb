class TestCasesController < ApplicationController
  unloadable 
  
  def index 
    @test_cases = TestCase.find(:all)
  end

  
  
  def show
    @test_case = TestCase.find(params[:id])
  end


  def new
    @test_case = TestCase.new
    render :action => 'new'
  end
    
    
  def create
    @test_case = TestCase.new(params[:test_case])
    if @test_case.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end


  def edit
    @test_case = TestCase.find(params[:id])
  end


  def update
     @test_case = TestCase.find(params[:id])
    if @test_case.update_attributes(params[:test_case])
      redirect_to :action => 'show', :id => @test_case
    else
      render :action => 'edit'
    end
  end


  def delete
    TestCase.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

end
