module KendoPageObjectWidgets
  module Widgets
    class KendoComboboxAutoComplete < PageObject::Elements::TextField

      def self.accessor_methods(accessor, name)

        accessor.send :define_method, "#{name}_filter=" do |value|
          self.send("#{name}_text_field").value = value
          self.send("#{name}_options_container").when_visible
        end

        accessor.send :define_method, "#{name}_text=" do |text|
          text_field = self.send("#{name}_text_field")
          text_field.value = text
          sleep 0.5
          text_field.send_keys :tab
        end

        accessor.send :define_method, "#{name}=" do |value|
          self.send("#{name}_filter=", value)
          self.send("#{name}_text_field").send_keys :tab
        end

        accessor.send :define_method, "#{name}_valid?" do
          !self.send("#{name}_text_field").attribute('class').include? 'input-validation-error'
        end

        accessor.send :define_method, "#{name}_options" do
          self.send("#{name}_opener")
          options = self.send("#{name}_options_list")
          options.map { |li| li.text }
        end

        accessor.send :define_method, "#{name}_suggestions" do
          options = self.send("#{name}_options_list")
          options.map { |li| li.text }
        end

        accessor.send :define_method, "#{name}_text" do
          self.send("#{name}_text_field").value
        end

        #private

        accessor.send :define_method, "#{name}_opener" do
          container = self.send("#{name}_options_container")
          self.send("#{name}_select_list_opener") unless container.visible?
          container.when_visible
        end

        accessor.send :define_method, "#{name}_options_container" do
          self.platform.div_for(:id => "#{self.send("#{name}_id")}-list")
        end

        accessor.send :define_method, "#{name}_options_list" do
          self.platform.unordered_list_for(:id => "#{self.send("#{name}_id")}_listbox")
        end

        accessor.send :define_method, "#{name}_text_field" do
          self.platform.text_field_for(:name => "#{self.send("#{name}_id")}_input")
        end

        accessor.send :define_method, "#{name}_select_list_opener" do
          self.send("#{name}_element").parent.span_element(:class => 'k-select').click
        end

        accessor.send :define_method, "#{name}_id" do
          self.send("#{name}_element").attribute('id')
        end

        accessor.send :private, "#{name}_text_field", "#{name}_id", "#{name}_select_list_opener", "#{name}_options_list", "#{name}_options_container", "#{name}_opener"

      end

    end
  end
end

