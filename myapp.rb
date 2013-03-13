require 'sinatra'
require 'json'

get '/index' do
  erb :index
end

get '/show' do
#  @data = get '/data'  <-- that didn't work.
  # Recording type

  @data =   [{
                 :ident => "12345",
                 :recording_time => "02/21/2013",
                 :duration => 123,
                 :gate => "Billing",
                 :agent_id => "22111",
                 :qa_score => 45,
                 :qa_poss_score => 50,
                 :survey_score => 10,
                 :survey_poss_score => 10,
             },
             {
                 :ident => "12346",
                 :recording_time => "02/21/2013",
                 :duration => 345,
                 :gate => "Billing",
                 :agent_id => "21333",
                 :qa_score => 49,
                 :qa_poss_score => 50,
                 :survey_score => 9,
                 :survey_poss_score => 10,
             }].to_json

      erb :show, :locals => {:data => @data}
end



get '/data' do
  content_type :json

  [{
       :ident => "12345",
       :recording_time => "02/21/2013",
       :duration => 123,
       :gate => "Billing",
       :agent_id => "22111",
       :qa_score => 45,
       :qa_poss_score => 50,
       :survey_score => 10,
       :survey_poss_score => 10,
   },
   {
       :ident => "12346",
       :recording_time => "02/21/2013",
       :duration => 345,
       :gate => "Billing",
       :agent_id => "21333",
       :qa_score => 49,
       :qa_poss_score => 50,
       :survey_score => 9,
       :survey_poss_score => 10,
   }].to_json
end
