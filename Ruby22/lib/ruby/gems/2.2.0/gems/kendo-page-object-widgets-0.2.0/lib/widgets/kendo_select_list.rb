module KendoPageObjectWidgets
  module Widgets
    class KendoSelectList < PageObject::Elements::TextField

      def visible?
        self.parent.visible?
      end

      def self.accessor_methods(accessor, name)

        accessor.send :define_method, "#{name}_options" do
          options = self.send("get_#{name}_options")
          options.map { |li| li.text }
        end

        accessor.send :define_method, "#{name}=" do |value|
          unless value.empty?
            self.send("click_opener_for_#{name}")
            options = self.send("get_#{name}_options")
            list_item = options.list_item_element(:text => value.strip)
            list_item.click
          end
        end

        accessor.send :define_method, "#{name}" do
          selected_option = self.send("#{name}_selected")
          selected_option.text
        end

        accessor.send :define_method, "#{name}_valid?" do
          !self.send("#{name}_text_field").attribute('class').include? 'input-validation-error'
        end

        #private
        accessor.send :define_method, "get_#{name}_options" do
          container = self.send("#{name}_options_container")
          unless container.visible?
            self.send("click_opener_for_#{name}")
            container.when_visible
          end
          self.send("#{name}_options_list")
        end

        accessor.send :define_method, "#{name}_options_container" do
          self.element('div', :id => "#{self.send("#{name}_id")}-list")
        end

        accessor.send :define_method, "#{name}_options_list" do
          self.platform.unordered_list_for(:id => "#{self.send("#{name}_id")}_listbox")
        end

        accessor.send :define_method, "click_opener_for_#{name}" do
          self.send("#{name}_element").parent.span_element(:class => 'k-select').click
        end

        accessor.send :define_method, "#{name}_id" do
          self.send("#{name}_element").attribute('id')
        end

        accessor.send :define_method, "#{name}_text_field" do
          self.send("#{name}_element").parent.text_field_element
        end

        accessor.send :define_method, "#{name}_selected" do
          self.send("#{name}_element").parent.span_element(:class => 'k-input')
        end

        accessor.send :private, "#{name}_selected", "#{name}_text_field", "#{name}_id", "click_opener_for_#{name}", "#{name}_options_list", "#{name}_options_container", "get_#{name}_options"
      end
    end
  end
end
