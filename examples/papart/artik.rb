class SobyPlayer

  attr_accessor :architecture_prez, :licences_prez

  # Overridden methods. 
  def custom_setup 
    @my_background = load_image(sketchPath "data/background.png")
    @legend = load_image(sketchPath "data/legende.png")

    @init_background = true
    @licence_mode = false
  end

  def custom_pre_draw
    background 255
    # return if not @init_background
    # image(@my_background, 0, 0, @width, @height)
  end

  def custom_post_draw

    return if not @init_background

    image(@my_background, 0, 0, @width, @height)

    if @licence_mode 
      w = 724
      h = 87
      imageMode(CORNER)
      image(@legend, 
            0,
            @height - 50,
            w/2, h /2)
    end 
  end

  def slide_change 
    @once = nil
  end

  ## Disable slide number
  def display_slide_number 
  end


end
