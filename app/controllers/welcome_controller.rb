class WelcomeController < ApplicationController
  def index
    @slideshow_images_names = ['project-0.jpeg', 'project-1.jpeg', 'project-2.jpeg',
    'project-3.jpeg', 'project-4.jpeg', 'project-5.jpeg', 'project-6.jpeg']
    @slideshow_selected_image_index = 1
  end
end
