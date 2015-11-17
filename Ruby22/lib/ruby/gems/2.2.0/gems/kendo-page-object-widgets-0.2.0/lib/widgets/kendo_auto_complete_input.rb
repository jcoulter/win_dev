module KendoPageObjectWidgets
  module Widgets
    class KendoAutoCompleteInput < PageObject::Elements::TextField

      def self.accessor_methods(accessor, name)

        accessor.send :define_method, "#{name}" do
          self.send("#{name}_element").value
        end

        accessor.send :define_method, "#{name}=" do |value|
          self.send("#{name}_element").value= value
          self.send("#{name}_options_container").when_visible
          self.send("#{name}_element").send_keys :tab
        end

        accessor.send :define_method, "#{name}_text=" do |value|
          self.send("#{name}_element").append(value)
          sleep 0.1
        end

        accessor.send :define_method, "#{name}_valid?" do
          !self.send("#{name}_element").attribute('class').include? 'input-validation-error'
        end

        accessor.send :define_method, "#{name}_suggestions" do
          options = self.send("#{name}_options_list")
          options.map { |li| li.text }
        end

        accessor.send :define_method, "#{name}_select=" do |value|
          container = self.send("#{name}_options_container")
         if container.visible?
            options = self.send("#{name}_options_list")
            list_item = options.list_item_element(:text => value.strip)
            list_item.click
          end
        end


        #private

        accessor.send :define_method, "#{name}_options_list" do
          self.platform.unordered_list_for(:id => "#{self.send("#{name}_id")}_listbox")
        end

        accessor.send :define_method, "#{name}_options_container" do
          self.platform.div_for(:id => "#{self.send("#{name}_id")}-list")
        end

        accessor.send :define_method, "#{name}_id" do
          self.send("#{name}_element").attribute('id')
        end

        accessor.send :private, "#{name}_options_container", "#{name}_id"
      end

    end
  end
end

