INSERT INTO tb_user (name, email, password) VALUES ('Alex Green', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Brown', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Java Spring - Completo', 'https://cdn.shopaccino.com/igmguru/products/java-training-igmguru188702274l-80792456690491_m.webp?v=548', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReSTZICWY_20MxWxIfbmx-lt2Ge_tMM5oAF9t0jNkQxR2H2hhysZtV4gr6&s=10');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2026-09-16T19:00:00Z', TIMESTAMP WITH TIME ZONE  '2026-10-15T19:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2026-08-15T19:00:00Z', TIMESTAMP WITH TIME ZONE  '2026-09-15T19:00:00Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Nova versão do curso Java Spring', TIMESTAMP WITH TIME ZONE '2026-09-16T19:00:00Z', false, '/courses/1', 1);

INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/html5-circle-f2daa60cb7da17f243bf34a11bfa5930-5d48cb37edbef.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Fórum', 'Tire suas dúvidas', 2, 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/html5-circle-f2daa60cb7da17f243bf34a11bfa5930-5d48cb37edbef.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives', 'Lives exclusicas para a turma', 3, 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/html5-circle-f2daa60cb7da17f243bf34a11bfa5930-5d48cb37edbef.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Introdução ao HTML', 1, 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/html5-circle-f2daa60cb7da17f243bf34a11bfa5930-5d48cb37edbef.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Esqueleto da página HTML', 1, 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/html5-circle-f2daa60cb7da17f243bf34a11bfa5930-5d48cb37edbef.jpg', 2, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Primeira página HTML', 1, 'https://www.cursoemvideo.com/wp-content/uploads/bb-plugin/cache/html5-circle-f2daa60cb7da17f243bf34a11bfa5930-5d48cb37edbef.jpg', 3, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2026-09-16T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2026-09-16T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de apoio do Capítulo 1', 'https://www.youtube.com/@DevSuperior');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do Capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, 'Material de apoio do Capítulo 1', 'https://www.youtube.com/@DevSuperior');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, 'Material de apoio do Capítulo 1', 'https://www.youtube.com/@DevSuperior');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Tarefa do Capítulo 1', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2026-10-30T19:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
