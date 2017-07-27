# require 'selenium-webdriver'
# require 'screencap'
require 'phantomjs'
class WelcomeController < ApplicationController
  
  def index

  end

  def get_data

  	p "1111111111111111"
  	p params["url"]
  	p "1111111111111111"

  	require 'open-uri'
  	doc = Nokogiri::HTML(open(params["url"]))


		# width = 1024
	 #  height = 728
	 #  driver = Selenium::WebDriver.for :firefox
	 #  driver.navigate.to 'http://dimmensesolusoft.com'
	 #  driver.execute_script %Q{
	 #    window.resizeTo(#{width}, #{height});
	 #  }
	 #  driver.save_screenshot('screenshot.png')
	 #  driver.quit

		# f = Screencap::Fetcher.new('http://google.com')
	 #  screenshot = f.fetch

	  ws = Webshot::Screenshot.instance

	  ws.capture params["url"], "site_image.png", width: 1000, height: 900, quality: 85

  	p "2222222222222"
  	p doc
  	p "2222222222222"


  	respond_to do |format|
      format.js {}
    end

  end


end
