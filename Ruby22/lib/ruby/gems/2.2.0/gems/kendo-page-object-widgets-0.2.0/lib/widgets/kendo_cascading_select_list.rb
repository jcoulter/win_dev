module KendoPageObjectWidgets
  module Widgets
    class KendoCascadingSelectList < PageObject::Elements::TextField

      def visible?
        self.parent.visible?
      end

      def self.accessor_methods(accessor, name)

        accessor.send :define_method, "#{name}=" do |value|
          wait_until { self.send("is_#{name}_enabled?") }
          self.send("click_opener_for_#{name}")
          unless value.empty?
            options = self.send("get_#{name}_options")
            list_item = options.list_item_element(:text => value.strip)
            list_item.click
          end
          sleep(0.3) # closing animation
        end

        accessor.send :define_method, "#{name}_options" do
          options = self.send("get_#{name}_options")
          options.map { |li| li.text }
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

        accessor.send :define_method, "click_opener_for_#{name}" do
          self.send("#{name}_element").parent.span_element(:class => 'k-select').click
        end

        accessor.send :define_method, "#{name}_options_list" do
          self.platform.unordered_list_for(:id => "#{self.send("#{name}_id")}_listbox")
        end

        accessor.send :define_method, "#{name}_id" do
          self.send("#{name}_element").attribute('id')
        end

        accessor.send :define_method, "is_#{name}_enabled?" do
          self.send("#{name}_element").parent.attribute('aria-disabled') == "false"
        end

        accessor.send :private, "get_#{name}_options", "#{name}_options_list", "#{name}_options_container", "click_opener_for_#{name}", "#{name}_id", "is_#{name}_enabled?"
      end
    end
  end
end
