SELECT COUNT(images)
FROM galleries
JOIN images on galleries.id = images.gallery_id
WHERE images.name ILIKE '%Sushi%'
GROUP BY galleries;
