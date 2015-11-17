module Watir
  
  # Returned by {Container#image}
  class Image < Element
    attr_ole :alt
    attr_ole :src

    # @return [Fixnum] file size of the image in bytes.
    # @macro exists
    def file_size
      assert_exists
      @o.invoke("fileSize").to_i
    end
    
    # @return [Fixnum] width of the image in pixels.
    # @macro exists
    def width
      assert_exists
      @o.invoke("width").to_i
    end
    
    # @return [Fixnum] height of the image in pixels.
    # @macro exists
    def height
      assert_exists
      @o.invoke("height").to_i
    end
    
    # @return [Boolean] true if image is loaded by the browser, false otherwise.
    # @macro exists
    def loaded?
      assert_exists
      file_size != -1
    end
    
    # Save the image to the file.
    #
    # @example
    #   browser.image.save("c:/foo/bar.jpg")
    #
    # @param [String] path path to the file.
    #
    # @note This method will not overwrite a previously existing image.
    #   If an image already exists at the given path then a dialog
    #   will be displayed prompting for overwrite.
    #
    # @todo it should raise an Exception if image already exists.
    def save(path)
      @container.goto(src)
      begin
        fill_save_image_dialog(path)
        @container.document.execCommand("SaveAs")
      ensure
        @container.back
      end
    end

    def to_s
      assert_exists
      r = string_creator
      r += image_string_creator
      return r.join("\n")
    end

    private

    # this method produces the properties for an image as an array
    def image_string_creator
      n = []
      n <<   "src:".ljust(TO_S_SIZE) + self.src.to_s
      n <<   "file date:".ljust(TO_S_SIZE) + self.fileCreatedDate.to_s
      n <<   "file size:".ljust(TO_S_SIZE) + self.fileSize.to_s
      n <<   "width:".ljust(TO_S_SIZE) + self.width.to_s
      n <<   "height:".ljust(TO_S_SIZE) + self.height.to_s
      n <<   "alt:".ljust(TO_S_SIZE) + self.alt.to_s
      return n
    end

    def fill_save_image_dialog(path)
      command = "require 'rubygems';require 'rautomation';" <<
                "window=::RAutomation::Window.new(:title => 'Save Picture');" <<
                "window.text_field(:class => 'Edit', :index => 0).set('#{path.gsub(File::SEPARATOR, File::ALT_SEPARATOR)}');" <<
                "window.button(:value => '&Save').click"
      IO.popen("ruby -e \"#{command}\"")
    end

    # Highlight the image (in fact it adds a border around the image).
    def set_highlight
      perform_highlight do
        @original_border = @o.border
        @o.border = 1
      end
    end

    # Clear the highlight of the image (in fact it removes a border around the image).
    def clear_highlight
      perform_highlight do
        @o.border = @original_border if @original_border
      end
    end

  end
  
end
