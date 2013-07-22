class User < ActiveRecord::Base
  state_machine :state, :initial => :created do
   state :created
   state :friended
   state :processed

   before_transition :created => :friended, :do => :load_user
   before_transition :friended => :processed, :do => :process_friends

   event :get do
    transition :created => :friended
   end
   event :parse do
    transition :friended => :processed
   end
  end

  def load_user
   raise "NYI"
  end
  
  def process_friends
   raise "NYI"
  end
end
