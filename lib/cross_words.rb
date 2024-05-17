class CrossWords
  def self.intersect(horizontal:, vertical:)
    common_chars = (horizontal.chars & vertical.chars)

    return 'No intersection found.' if common_chars.empty?

    hor_length = horizontal.length
    vert_length = vertical.length

    if hor_length >= vert_length
      common_chars.sort_by! { |char| horizontal.index(char) }
    else
      common_chars.sort_by! { |char| vertical.index(char) }
    end
    chosen_char = common_chars.first
    hor_intersection_index = horizontal.index(chosen_char)
    vert_intersection_index = vertical.index(chosen_char)

    crossed_pattern = []

    vertical.chars.each_with_index do |vert_char, col_index|
      column_array = []

      horizontal.chars.each_with_index do |hor_char, row_index|
        column_array << if col_index == vert_intersection_index && row_index == hor_intersection_index
                          chosen_char
                        elsif col_index == vert_intersection_index
                          hor_char
                        elsif row_index == hor_intersection_index
                          vert_char
                        else
                          ' '
                        end
      end

      crossed_pattern << column_array.join.rstrip
    end

    "#{crossed_pattern.join("\n")}\n"
  end
end
