module BooksHelper
  def load_rate rate
    if rate
      remain = rate % 1
      rate_int = rate.to_i
      unrated = 5 - rate_int
      unrated_half = unrated - 1
      if remain < 0.25
        [rate_int, 0, unrated]
      elsif remain < 0.75
        [rate_int, 1, unrated_half]
      else
        [rate_int + 1, 0, unrated_half]
      end
    else
      [0, 0, 5]
    end
  end
end
