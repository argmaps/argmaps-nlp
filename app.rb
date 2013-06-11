require 'sinatra'
require 'json'
require './is_question.rb'

post '/detectors/question' do
  content_type :json
  params_json = JSON.parse(request.body.read)
  question_text = params_json['question_text']
  result = IsQuestion.verify(question_text)
  {result: result}.to_json
end
