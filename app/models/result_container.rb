class ResultContainer

  attr_accessor :result

  @@result

  def self.setResult(resultado)
      @@result = resultado
  end

  def self.getResult
    return @@result
  end

end
