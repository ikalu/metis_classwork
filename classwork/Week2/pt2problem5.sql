SELECT galleries.id
FROM galleries
JOIN images ON galleries.id = images.gallery_id
ORDER BY images DESC LIMIT 1;
