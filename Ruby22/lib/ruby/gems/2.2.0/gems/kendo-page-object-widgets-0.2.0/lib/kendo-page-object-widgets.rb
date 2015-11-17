require 'version'
require 'page-object'
require_relative 'widgets/kendo_auto_complete_input'
require_relative 'widgets/kendo_combobox_auto_complete'
require_relative 'widgets/kendo_cascading_select_list'
require_relative 'widgets/kendo_select_list'

module KendoPageObjectWidgets
  PageObject.register_widget(:auto_complete_input, Widgets::KendoAutoCompleteInput, 'text_field')
  PageObject.register_widget(:combobox_auto_complete, Widgets::KendoComboboxAutoComplete, 'text_field')
  PageObject.register_widget(:cascading_drop_down, Widgets::KendoCascadingSelectList, 'text_field')
  PageObject.register_widget(:kendo_select_list, Widgets::KendoSelectList, 'text_field')
end
