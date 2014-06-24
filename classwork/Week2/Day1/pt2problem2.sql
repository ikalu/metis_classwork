SELECT DISTINCT ON (galleries.id) galleries.id, galleries.name, images.name
  FROM galleries
  JOIN images ON galleries.id = images.gallery_id
  ORDER BY galleries.id, images.id ASC;
