require "spec_helper"

describe Balanced::Pager do
  describe "#adjust_pagination_params" do
    subject { Balanced::Pager.new 'a uri'}

    it "sets limit based on per" do
      params = subject.send(:adjust_pagination_params, per: 5)
      params[:limit].should == 5
    end

    it "sets offset based on page and default limit" do
      params = subject.send(:adjust_pagination_params, page: 2)
      params[:offset].should == 10
    end

    it "sets offset based on page and per" do
      params = subject.send(:adjust_pagination_params, page: 2, per: 4)
      params[:offset].should == 4
    end

    it "prefers per to limit" do
      params = subject.send(:adjust_pagination_params, per: 5, limit: 10)
      params[:limit].should == 5
    end

    it "falls back to limit" do
      params = subject.send(:adjust_pagination_params, limit: 3)
      params[:limit].should == 3
    end

    it "prefers page to offset" do
      params = subject.send(:adjust_pagination_params, page: 2, offset: 0)
      params[:offset].should == 10
    end

    it "falls back to offset" do
      params = subject.send(:adjust_pagination_params, offset: 6)
      params[:offset].should == 6
    end
  end
end
