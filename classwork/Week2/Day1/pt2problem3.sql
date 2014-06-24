SELECT COUNT(images)
FROM galleries
JOIN images ON galleries.id = images.gallery_id
GROUP BY galleries;

