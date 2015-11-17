# encoding: utf-8
require File.expand_path("watirspec/spec_helper", File.dirname(__FILE__))

describe "SelectList" do
  before do
    browser.goto(WatirSpec.url_for("frames.html"))
  end

  context "#select" do
    it "selects option within frame" do
      list = browser.frame.select_list
      list.should exist
      list.should be_selected("value1")
      list.select "value2"
      list.should be_selected("value2")
    end
  end
end
