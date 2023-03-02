USE green_village;

INSERT INTO `employee` (`employee_id`, `lastname`, `firstname`, `password`, `job_title`, `department`, `email`, `phone`) 
VALUES (1, 'Gatecliffe', 'Aigneis', 'vCNYAH1AzL', 'Food Chemist', 'Business Development', 'agatecliffe0@tuttocitta.it', '561-262-0586'),
    (2, 'Lodin', 'Tobiah', 'fTZBIf3Ntn', 'Operator', 'Marketing', 'tlodin1@indiatimes.com', '723-421-5962'),
    (3, 'Bullar', 'Laureen', 'Ih5F5w86BL8', 'Assistant Manager', 'Sales', 'lbullar2@yale.edu', '238-980-0348'),
    (4, 'Mirams', 'Gradey', '6JrZTlw68Re', 'Executive Secretary', 'Support', 'gmirams3@statcounter.com', '575-822-9840'),
    (5, 'Bavage', 'Warde', 'VeqU9chgn', 'VP Accounting', 'Services', 'wbavage4@usnews.com', '984-939-0421'),
    (6, 'Thunnerclef', 'Mehetabel', '1M9nS2Z9W5', 'Marketing Manager', 'Human Resources', 'mthunnerclef5@macromedia.com', '803-741-2221'),
    (7, 'Sunter', 'Morie', 'HrwQIOjcw', 'Recruiter', 'Human Resources', 'msunter6@tiny.cc', '537-176-6961'),
    (8, 'Bowler', 'Karalynn', 'BEobnsVo1', 'Software Consultant', 'Support', 'kbowler7@wp.com', '164-116-5870'),
    (9, 'Barker', 'Deloria', 'j0IC2qQ', 'Nuclear Power Engineer', 'Accounting', 'dbarker8@prlog.org', '856-520-6064'),
    (10, 'Roubottom', 'Poul', 'ZPXSTt', 'Safety Technician I', 'Human Resources', 'proubottom9@examiner.com', '532-484-9082');

INSERT INTO `customer` (`customer_id`,`password`,`category`,`customer_firstname`,`customer_lastname`,`email`,`phone`,`address`,`city`,`region`,`postal_code`,`country`,`employee_id`)
VALUES
  (1,"YNX43QVA9CO","part","Gretchen","Cohen","sem.mollis@hotmail.couk","1-717-381-4124","P.O. Box 766, 825 Mattis. Av.","Ciudad Santa Catarina","Lviv oblast","8345","Canada",7),
  (2,"CJE61NTK8HR","part","Wallace","Walker","vitae@icloud.couk","818-0572","Ap #943-9270 Orci, Rd.","Lutsk","Puntarenas","1926 EB","South Africa",9),
  (3,"JUQ48VEJ4DQ","part","Arden","Eaton","pellentesque.ut.ipsum@hotmail.ca","278-5678","P.O. Box 326, 846 Maecenas Road","Stockholm","Kahramanmaraş","3072","Brazil",3),
  (4,"QIM75TUP6BH","part","Ahmed","Conrad","malesuada.ut@protonmail.com","1-808-664-3725","Ap #997-2245 Lorem Av.","Changwon","Gilgit Baltistan","635102","Singapore",4),
  (5,"LPU02KRG5MH","part","Norman","Horn","molestie.dapibus@yahoo.couk","1-251-247-8451","P.O. Box 609, 372 Aliquet Road","Rauco","Vestland","7412","Singapore",7);

INSERT INTO `customer` (`customer_id`,`password`,`category`,`company_name`,`contact_name`,`contact_title`,`email`,`phone`,`address`,`city`,`region`,`postal_code`,`country`,`employee_id`)
VALUES
  (6,"IGF33LYO4OH","pro","Varius Inc.","Martin Holcomb","Payroll","sem.mollis@hotmail.couk","1-717-381-4124","P.O. Box 766, 825 Mattis. Av.","Ciudad Santa Catarina","Lviv oblast","8345","Canada",7),
  (7,"VHF76XOX8DW","pro","Dolor Quam Elementum Industries","Ulysses Best","Media Relations","vitae@icloud.couk","818-0572","Ap #943-9270 Orci, Rd.","Lutsk","Puntarenas","1926 EB","South Africa",4),
  (8,"VPX36HRL6FK","pro","Diam Duis Mi Ltd","Jesse Montgomery","Quality Assurance","pellentesque.ut.ipsum@hotmail.ca","278-5678","P.O. Box 326, 846 Maecenas Road","Stockholm","Kahramanmaraş","3072","Brazil",7),
  (9,"JQC28GBT3UE","pro","Cras Interdum Corporation","Aphrodite Wynn","Asset Management","malesuada.ut@protonmail.com","1-808-664-3725","Ap #997-2245 Lorem Av.","Changwon","Gilgit Baltistan","635102","Singapore",6),
  (10,"ONQ82LWT1DV","pro","Turpis In Inc.","Briar Barr","Advertising","molestie.dapibus@yahoo.couk","1-251-247-8451","P.O. Box 609, 372 Aliquet Road","Rauco","Vestland","7412","Singapore",6);

INSERT INTO `supplier` (`supplier_id`,`name`,`address`,`city`,`region`,`postal_code`,`country`,`contact_name`,`contact_title`,`phone`,`email`,`employee_id`)
VALUES
  (1,"Ut Molestie Ltd","685-9785 Montes, Rd.","Hưng Yên","Agder","RC3 4PT","United Kingdom","Jin Colon","luctus et","702-9532","dictum@protonmail.com",1),
  (2,"Nunc Ullamcorper PC","P.O. Box 736, 5157 Risus. Ave","Dublin","Coquimbo","6875","United States","Jennifer Barrera","Vivamus","539-7725","vivamus.sit@icloud.ca",2),
  (3,"Eu Enim Corp.","Ap #109-6693 Eu, Road","Burin","Cusco","135849","Netherlands","Lilah Keller","dictum","215-8697","vitae@hotmail.org",3),
  (4,"Netus Et Corporation","125-3067 Taciti Ave","Mosjøen","Waals-Brabant","N14 3VG","Brazil","Nevada Branch","egestas a,","1-485-495-7058","consectetuer.adipiscing@google.couk",4),
  (5,"Duis Sit Ltd","787-6565 Amet, Avenue","Banda Aceh","Northwest Territories","16062","Pakistan","Aline Foley","mollis vitae, posuere","322-7202","ut.nisi@google.net",5);

INSERT INTO `orders` (`order_id`,`payement`,`discount`,`ship_name`,`ship_address`,`ship_city`,`ship_region`,`ship_postal_code`,`ship_country`,`status`,`bill_address`,`bill_city`,`bill_region`,`bill_postal_code`,`bill_country`,`customer_id`)
VALUES
  (1,"virement","0.2553617762","Virginia Hensley","144-6648 Praesent Street","Mohmand Agency","Møre og Romsdal","8358","Turkey","transit","P.O. Box 676, 9394 Ultrices Avenue","Burnie","Baden Württemberg","866744","Nigeria",5),
  (2,"commande","0.1001815578","Mason Hayden","Ap #110-8840 Lectus Rd.","Hard","Guerrero","17-24","Colombia","transit","5559 Molestie Street","Toowoomba","Calabarzon","11833-87245","Netherlands",6),
  (3,"cheque","0.0703485666","Stewart Watts","Ap #378-5553 Cubilia Road","Zwelitsha","La Rioja","1191","Ireland","transit","4374 Nisi Road","Gudivada","Nevada","7404","United Kingdom",3),
  (4,"commande","0.2745004182","Chester Kane","8947 Lorem, Rd.","Tasikmalaya","Bursa","6415","Sweden","transit","495-332 Porttitor Rd.","Manokwari","Gilgit Baltistan","X3 9JI","Russian Federation",7),
  (5,"commande","0.1126388639","Carter Douglas","Ap #928-9846 Non Street","Kędzierzyn-Koźle","Berwickshire","68-16","Sweden","transit","Ap #366-5068 Fusce St.","Höchst","Dōngběi","595886","Singapore",9),
  (6,"commande","0.3175741037","Abbot Rocha","7782 Sed, Street","Iligan","Limón","65740","Pakistan","transit","P.O. Box 304, 4695 Faucibus Ave","Bukit Batok","Brandenburg","8791","Brazil",4),
  (7,"commande","0.2932463665","Kenyon Kelly","9459 Nullam Av.","Zoerle-Parwijs","Hawaii","352282","Ukraine","transit","Ap #354-7567 Torquent Rd.","Huancayo","Henegouwen","6854","Turkey",3),
  (8,"commande","0.2968514907","Constance Lawson","P.O. Box 850, 1700 Turpis Av.","Robelmont","Heredia","95468-236","Chile","transit","Ap #423-5760 Tellus. Rd.","Sart-Dames-Avelines","O'Higgins","47-322","Norway",9),
  (9,"commande","0.2149957455","Lev Donaldson","Ap #338-9657 Pellentesque Avenue","Langenhagen","Orenburg Oblast","59761-67213","South Korea","transit","703-6094 Vitae Ave","Paraíso","Azad Kashmir","48374-97510","South Korea",1),
  (10,"commande","0.2453839158","Rahim Knapp","274-6983 Orci Rd.","Castelmarte","Arunachal Pradesh","15953","Spain","transit","Ap #254-1243 Phasellus St.","Ninhue","Putumayo","32184","Canada",6);

INSERT INTO `product_category` (`category_id`,`name`, `category_parent`)
VALUES
  (1,"Key", NULL),
  (2,"Corde", NULL),
  (3,"Professionnel", NULL),
  (4,"Machine", 3),
  (5,"Quelquechose", 1);

insert into product (`product_id`, `name`, `product_desc`, `img`, `price_ht`, `supplier_price_ht`, `stock`, `show`, `supplier_ref`, `category_id`, `supplier_id`) 
values (1, 'Melon', 'Other contact with pig', 'http://dummyimage.com/219x100.png/cc0000/ffffff', 16671.35, 80259.59, 83, false, '54868-5625', 2, 2),
(2, 'Cheese - Goat', 'Ankylosis, left hip', 'http://dummyimage.com/115x100.png/ff4444/ffffff', 82428.76, 9372.72, 80, true, '0113-0668', 4, 1),
(3, 'Soup - French Onion', 'Reiter''s disease', 'http://dummyimage.com/122x100.png/dddddd/000000', 27523.31, 99658.68, 50, true, '36800-766', 3, 5),
(4, 'Sauce - Caesar Dressing', 'Presence of artificial wrist joint', 'http://dummyimage.com/131x100.png/cc0000/ffffff', 34412.8, 37078.48, 82, true, '54868-3064', 2, 1),
(5, 'Mushroom - Lg - Cello', 'Abnormal level of substances chiefly nonmedicinal as to source in specimens from male genital organs', 'http://dummyimage.com/140x100.png/dddddd/000000', 41136.1, 35703.73, 7, false, '49371-030', 4, 5),
(6, 'Sweet Pea Sprouts', 'Nondisplaced supracondylar fracture without intracondylar extension of lower end of right femur, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion', 'http://dummyimage.com/109x100.png/dddddd/000000', 17166.39, 917.91, 47, false, '63739-079', 2, 5),
(7, 'Ginger - Ground', 'Breakdown (mechanical) of intraocular lens, sequela', 'http://dummyimage.com/101x100.png/ff4444/ffffff', 22849.18, 93759.06, 76, true, '63459-701', 5, 1),
(8, 'Chives - Fresh', 'Complete traumatic metacarpophalangeal amputation of other finger, initial encounter', 'http://dummyimage.com/180x100.png/5fa2dd/ffffff', 9929.2, 80740.49, 77, true, '13533-691', 2, 3),
(9, 'Water - Aquafina Vitamin', 'Spondylopathy, unspecified', 'http://dummyimage.com/222x100.png/dddddd/000000', 89566.69, 84951.17, 52, true, '0338-0703', 1, 5),
(10, 'Tortillas - Flour, 8', 'Autoimmune lymphoproliferative syndrome [ALPS]', 'http://dummyimage.com/137x100.png/cc0000/ffffff', 13535.83, 74415.71, 80, true, '27437-106', 4, 4);

INSERT INTO `order_detail` (`product_id`,`order_id`,`quantity`,`discount`)
VALUES
  (1,9,2,0),
  (1,2,8,0),
  (2,4,2,0),
  (4,3,1,0),
  (1,4,5,0),
  (4,4,7,0),
  (2,6,9,0),
  (4,9,3,0),
  (1,5,7,0),
  (3,6,8,0),
  (5,2,7,0),
  (4,1,2,0),
  (4,5,1,0),
  (4,8,2,0),
  (2,8,9,0),
  (5,10,7,0),
  (2,7,7,0);

INSERT INTO `cart` (`product_id`,`customer_id`,`quantity`)
VALUES
  (2,6,3),
  (1,4,2),
  (2,7,1),
  (4,1,6),
  (4,10,1);