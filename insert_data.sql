\c postgres
\c mydb;
INSERT INTO tv_shows (title, synopsis, release_year)
VALUES
  ('Friends', 'New York friends', 1994),
  ('Breaking Bad', 'Chemistry teacher', 2008),
  ('The Office', 'Paper company', 2005),
  ('Game of Thrones', NULL, 2011),
  ('Stranger Things', 'Upside Down', 2016);

-- Insert some sample data into the character table
INSERT INTO characters (name, description, tv_show_id)
VALUES
  ('Ross', 'Paleontologist', 1),
  ('Walter White', 'Chemist turned drug dealer', 2),
  ('Jim Halpert', 'Office worker', 3),
  ('Jon Snow', NULL, 4),
  ('Eleven', 'Telekinetic girl', 5);