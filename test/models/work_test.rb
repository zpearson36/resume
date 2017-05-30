require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  def setup
    @work = Work.new(company: "Example company", name: "Example",
            start: Date.parse("5/5/1999"), end: Date.parse("6/6/1999"),
            description: " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam pretium a erat in consectetur. Curabitur imperdiet vehicula dictum. Sed tincidunt tortor a dolor aliquam, scelerisque feugiat elit varius. Duis lobortis, massa vitae hendrerit convallis, tellus arcu dapibus lorem, nec lobortis risus urna sit amet massa. Nulla libero libero, aliquam eget nunc ut, dignissim hendrerit purus. Nullam nec massa ante. Pellentesque mattis arcu et magna viverra, sit amet dignissim nulla vestibulum. Cras rhoncus lorem eget convallis fermentum. Maecenas in lacus ligula. In eget suscipit tellus. Sed eu libero suscipit, eleifend libero non, varius nibh. Phasellus sit amet tortor molestie, maximus mauris quis, porttitor elit. Suspendisse bibendum, orci ut vulputate pharetra, ante urna fringilla risus, ut fermentum nisi turpis at nulla. Maecenas tincidunt malesuada nunc sed blandit. Nam mattis elementum lacinia. Mauris vel leo non diam imperdiet rutrum.
Proin condimentum mi ultrices eros pretium ultricies. Praesent ac purus ultricies, condimentum turpis in, vehicula arcu. Mauris sagittis sapien et dictum ornare. Morbi ut efficitur leo. Nunc nec dui in diam aliquam dignissim eget vitae enim. Ut imperdiet euismod tellus, eget porta turpis ultrices id. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum eget nunc venenatis, hendrerit neque quis, euismod lorem. Duis dictum posuere diam. Proin lacinia tincidunt sollicitudin. Sed et rhoncus nibh. Ut semper est a viverra luctus. Suspendisse et finibus sem, a fermentum elit. Etiam ultricies erat sed massa porta sodales. Suspendisse enim augue, feugiat eu luctus at, ornare id lectus. Ut lacinia a nibh ut efficitur. ")
  end

  test "should be valid" do
    assert @work.valid?
  end

  test "company should be present" do
    @work.company = "      "
    assert_not @work.valid?
  end

  test "name should be present" do
    @work.name = "      "
    assert_not @work.valid?
  end

  test "start should be present" do
    @work.start = "      "
    assert_not @work.valid?
  end

  test "end should be present" do
    @work.end = "      "
    assert_not @work.valid?
  end

  test "description should be present" do
    @work.description = "      "
    assert_not @work.valid?
  end

  # test "start date should accept valid" do
  #   validate_dates = %w[01/12/1989, 12/21/5989, 03/30/2000, 04/12/1980, 10/12/1989, 01/05/0000]
  #   validate_dates.each do |startDate|
  #     @work.start = startDate.to_date
  #     assert @work.valid?, "#{startDate.inspect} should be valid"
  #   end
  # end
  #
  # test "end date should accept valid" do
  #   validate_dates = %w[01/12/1989 12/21/5989 03/30/2000 04/12/1980 10/12/1989 01/05/0000]
  #   validate_dates.each do |endDate|
  #     @work.end = endDate.to_date
  #     assert @work.valid?, "#{endDate.inspect} should be valid"
  #   end
  # end

end
