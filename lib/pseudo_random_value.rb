class PseudoRandomValue
  def initialize(arr_symbols)
    if arr_symbols.first.is_a? Array
      @arr_symbols = arr_symbols
    else arr_symbols.first.is_a? String
      @arr_symbols = arr_symbols.map {|s| s.split("") }
    end

    raise RuntimeError.new("Empty arr_symbols") if arr_symbols.empty?
  end

  def new_value(token_counter)
    token_counter = 1 if token_counter == 0
    output_value = output_value(@arr_symbols, token_counter).reverse
    maximum_value = maximum_value(@arr_symbols)

    message = "Sorry, number of characters is over"
    raise RuntimeError.new(message) if token_counter >= maximum_value

    output_value.join
  end

  private

  def output_value(arr_symbols, token_counter)
    arr_symbols.map.with_index do |symbols, i|
      symbols[token_counter / (symbols.length ** i) % symbols.length]
    end
  end

  def maximum_value(arr_symbols)
    arr_symbols[0].length ** arr_symbols.size + 1
  end
end
