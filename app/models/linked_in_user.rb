class LinkedInUser < RestUser
 LI = RC::Builder.client do
  use RC::JsonResponse, true
  use RC::DefaultSite, 'http://api.linkedin.com/v1/people-search?keywords=[space delimited keywords]'
 end
  def load_user(parm)
   client = LI.new
   resp = client.get("http://api.linkedin.com/v1/people-search?keywords=#{parm}&format=json")
   p resp
  end

  def process_friends

  end
end
