require 'sinatra'
require 'json'
require './is_question.rb'

get '/detectors/question' do
  content_type :json
  question_text = params[:question_text]
  result = IsQuestion.verify(question_text)
  {result: result}.to_json
end
