SELECT galleries.name
FROM galleries
JOIN images on galleries.id = images.gallery_id
GROUP BY galleries.id
ORDER BY galleries.id DESC LIMIT 1;
