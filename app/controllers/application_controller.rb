class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  before_filter :all_tags
  before_filter :paypal_details
  before_filter :gethostname
  before_filter :subscriptions_plan
  
  
  def subscriptions_plan
    
    @setting_details = Setting.find_by_id('1')
    
    @subscriptions_price = @setting_details.subscriptions_price
    @subscriptions_time =  @setting_details.subscriptions_time
    
    #@subscriptions_price = 5
    #@subscriptions_time = 1 
  end

  def paypal_details
  
  
    @paypal_details = PaypalGateway.find_by_id('1')
    
    @environment_mode     =  @paypal_details.environment_mode
    @business_merchant_id =  @paypal_details.business_merchant_id
    @api_username         =  @paypal_details.api_username
    @api_password         =  @paypal_details.api_password
    @api_signature        =  @paypal_details.api_signature
    @success_message      =  @paypal_details.success_message
    @failure_message      =  @paypal_details.failure_message
    @paypal_url           =  @paypal_details.paypal_url
  
  
    # Output the hostname
    @PAYMENT_MODE   = @environment_mode
    @PAYPAL_URL     = @paypal_url;
    @MERCHANT_id    = @business_merchant_id
    
    @API_USERNAME   = @api_username
    @API_PASSWORD   = @api_password
    @API_SINGNATURE = @api_signature
    
    
    #@PAYMENT_MODE = "live"
    #@MERCHANT_id=""
    #if @PAYMENT_MODE=='sendbox'
    #  @PAYPAL_URL = 'https://www.sandbox.paypal.com/cgi-bin/webscr'
    #  @MERCHANT_id = 'rose_mearchant_007@gmail.com'
    #  
    #  @API_USERNAME="rose_mearchant_007_api1.gmail.com"
    #  @API_PASSWORD="1390825574"
    #  @API_SINGNATURE="AFcWxV21C7fd0v3bYYYRCpSSRl31Ah-F.xFIcnE9aJE1bPC558lkznUK"
    #
    #else
    #  @PAYPAL_URL  = 'https://www.paypal.com/cgi-bin/webscr';
    #  @MERCHANT_id ='agholdings99@gmail.com';
    #  
    #  @API_USERNAME="agholdings99_api1.gmail.com"
    #  @API_PASSWORD="U7SBD6FZ5AEBFVGD"
    #  @API_SINGNATURE="AFcWxV21C7fd0v3bYYYRCpSSRl31A7E6VqdrJYJvWHCoG1b4IDrOlVyT"
    #  
    #end  
  end
  
  
  def gethostname
    @host = request.host
    if (@host=='localhost')
      @hostname = "http://"+@host+":3000"
    else
      @hostname = "http://"+@host
    end  
  end  
  
  def all_tags
    @tags = Tag.find(:all)
    @mytag = []
    @tags.each do |tag|
    @mytag.push(tag.name)
    end
  end
  
end
