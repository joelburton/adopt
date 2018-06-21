DROP DATABASE IF EXISTS adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE public.pets (
    id serial PRIMARY KEY,
    name text NOT NULL,
    species text NOT NULL,
    photo_url text,
    age integer,
    notes text,
    available boolean NOT NULL
);


COPY public.pets (id, name, species, photo_url, age, notes, available) FROM stdin;
1	Woofly	dog	https://www.what-dog.net/Images/faces2/scroll001.jpg	3	Incredibly adorable.	t
2	Porchetta	porcupine	http://kids.sandiegozoo.org/sites/default/files/2017-12/porcupine-incisors.jpg	4	Somewhat spiky!	t
3	Snargle	cat	https://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg	\N		t
4	Dr. Claw	cat		\N		t
\.

SELECT pg_catalog.setval('public.pets_id_seq', 4, true);
