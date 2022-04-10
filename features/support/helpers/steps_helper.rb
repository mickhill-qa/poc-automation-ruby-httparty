# Helper de ajuda aos steps
module StepsHelper
  def expect_true_data(data)
    data_exist = !( data.nil? )
    expect( data_exist ).to eql true
  end
end

World StepsHelper
