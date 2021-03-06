require 'spec_helper'

describe 'Search field' do
  it 'searches an article' do
    visit(IndexPage) do |page|
      page.search = 'Ruby'
      page.submit_search
    end

    expect(on(ArticlePage).main_header).to eq('Ruby')
  end
end
