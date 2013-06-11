require 'open-nlp'
OpenNLP.load

class IsQuestion
  PARSER = OpenNLP::Parser.new

  def self.verify(str)
    parse = PARSER.parse(str)
    child = parse.get_children[0]
    return false unless child

    type = child.get_type
    type == 'SBARQ' || type == 'SQ'
  end
end
