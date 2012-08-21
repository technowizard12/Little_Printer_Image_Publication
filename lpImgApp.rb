#serves an image to Little Printers on mondays.
#To run, a remote image hosting server is required
#
#Author: Simon Orr
#Version: 0.1
#Contact: simon@simonorrstudio.com


require 'date'
require 'camping'

#Initialize Camping application

Camping.goes :LPImgApp

#currentImg is the name of the present image
#imgHostUrl is the base url that the image is hosted at
#title is the desired page title
#sampleImg is the sample image
#iconImg is the icon image

$currentImg = "aug132012.png"
$imgHostURL = "http://technowizard12.github.com"
$title = "The Weekly Font"
$sampleImg = "sample.png"
$iconImg = "icon.png"

module LPImgApp::Controllers

#If the user visits the root, the application uses
#plausible deniability. They shouldn't be there.

    class Root < R '/'
        def get
            p "Body? What body? I never heard of a body!"
        end
    end

#If the user requests /edition/, unless a local delivery time is
#not specified, the program checks whether it is a monday and, if
#it is, renders the current edition.

    class Edition < R '/edition/'
        def get
	if @input.any? == false
            r(400, "No local_delivery_time. This is not the page you are looking for. Move along.")
        else
            userDate = Date.new
            userDate = Time.parse(@input.local_delivery_time)
            if userDate.monday? == true #change to .tuesday? etc, depending on the desired day
                render :currentEdition
            else
                r(200)
            end
        end
        end
	
    end
    
#Renders the static image sample

    class Sample <R '/sample/'
        def get
            render :sample
        end
    end

#Renders the icon

    class Icon <R '/icon.png'
        def get
            render :icon
        end
    end
#redirects to your offsite meta.json
    class MetaJson < R '/meta.json'
        redirect $imgHostUrl + "/meta.json"
    end
end

module LPImgApp::Views
 
# wraps all code in the same format, with the title being the name
#specified at the top

 def layout
    html do
      head do
        title { $title }
      end
      body { self << yield }
    end
  end

#View for the current edition

  def currentEdition
    img :src => $imgHostURL + "/" + $currentImg
  end

#View for the sample

  def sample
    img :src => $imgHostURL + "/" + $sampleImg
  end

#View for the icon

  def icon
    img :src => $imgHostURL + "/" + $iconImg
  end

end

