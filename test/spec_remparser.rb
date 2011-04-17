require 'bacon'
require 'treetop'
require 'polyglot'
require 'date'

require_relative File.join('..', 'lib', 'remparser')

describe RemindParser do

  before do
    @parser = RemindParser.new
  end

  it "should return a hash structure when asking for #content_hash" do
    line = "2011/04/07 * * * * Test Text"
    res = @parser.parse(line)

    res.content_hash.should.equal({
      :date    => Date.parse('2011/04/07'),
      :special => "*",
      :tag     => "*",
      :dur     => 0,
      :time    => 0,
      :body    => 
        {
          :text => "Test Text"
        }
    })
  end

  it "should parse the time given in the body if present" do
    line = "2011/04/08 * * 180 1200 8:00-11:00pm Test Text"
    res = @parser.parse(line)

    res.content_hash.should.equal({
      :date    => Date.parse('2011/04/08'),
      :special => "*",
      :tag     => "*",
      :dur     => 180,
      :time    => 1200,
      :body    => {
          :text  => "Test Text",
          :time  => {
            :start => "8:00",
            :end   => "11:00",
            :tod   => "pm"
          }
      }
    })
  end

end
