class WelcomeController < ApplicationController

  def index
  end

  def name
    @name = params[:name]
  end

  def lipsum
    lipsum = params[:lipsum].to_sym

    if params[:num] == nil
      @num = 1
    else
      @num = params[:num].to_i
    end

    paragraphs = {
      ipsum: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      hipsum: "Tattooed swag keffiyeh roof party, seitan intelligentsia knausgaard selvage. Shabby chic keffiyeh bicycle rights celiac, jean shorts gastropub flannel cold-pressed flexitarian. Cliche synth marfa YOLO. Helvetica flannel banjo, organic offal cronut occupy single-origin coffee literally. Banjo blog slow-carb organic drinking vinegar, chartreuse tofu taxidermy post-ironic meggings try-hard kinfolk. Lo-fi taxidermy XOXO everyday carry gentrify. Pabst synth street art, freegan blue bottle flexitarian beard.",
      slipsum: "Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends."
    }

    if paragraphs.key?(lipsum)
      @output = paragraphs[lipsum]
    else
      @output = "Argument not recognized. Please provide one of the following ipsums: #{paragraphs.keys.join(", ")}"
    end
  end

end
