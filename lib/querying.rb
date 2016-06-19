def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM series INNER JOIN 
  BOOKS on books.series_id = series.id WHERE series.id == 1
  ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters 
  ORDER BY motto limit 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species) FROM characters GROUP BY species
  ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
 "SELECT authors.name, subgenres.name FROM subgenres, authors 
 INNER JOIN series ON series.subgenre_id = subgenres.id WHERE 
 series.author_id = authors.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters ON 
  series.id = characters.series_id GROUP BY species 
  ORDER BY COUNT(species) LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(books.title)
  FROM character_books INNER JOIN books, characters
  ON character_books.character_id = characters.id  WHERE 
  character_books.book_id = books.id group by characters.name 
  order by count(books.title) desc"
end

# CREATE TABLE character_books(
# id INTEGER PRIMARY KEY,
# book_id INTEGER, 
# character_id INTEGER
# );