desc "process linkedin"
task :li do
 LinkedInUser.with_state(:created).limit(100).all.each do |u|
  u.get!
 end
 LinkedInUser.with_state(:friended).limit(100).all.each do |u|
  u.parse!
 end
end
