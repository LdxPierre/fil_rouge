USE green_village;

INSERT INTO `employee` (`employee_id`, `lastname`, `firstname`, `password`, `title`, `department`, `email`, `phone`) 
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

insert into `product_category` (category_id, name, category_parent, img) 
values (1, 'Guitars', NULL, 'http://dummyimage.com/176x100.png/dddddd/000000'),
(2, 'Basses', NULL, 'http://dummyimage.com/135x100.png/5fa2dd/ffffff'),
(3, 'Electric Guitars', 1, 'http://dummyimage.com/186x100.png/5fa2dd/ffffff'),
(4, 'Drums', NULL, 'http://dummyimage.com/239x100.png/cc0000/ffffff'),
(5, 'Keys', NULL, 'http://dummyimage.com/146x100.png/5fa2dd/ffffff');


insert into product (`product_id`, `name`, `product_desc`, `img`, `price_ht`, `supplier_price_ht`, `stock`, `show`, `supplier_ref`, `category_id`, `supplier_id`) 
values (1, 'Range Rover Sport', 'Crushed between other unpowered watercraft and other watercraft or other object due to collision, sequela', 'http://dummyimage.com/208x100.png/5fa2dd/ffffff', 3691062, 766595, 50, false, '42952-101', 4, 1),
(2, 'A6', 'Iridodialysis, left eye', 'http://dummyimage.com/175x100.png/5fa2dd/ffffff', 4771771, 5332437, 42, true, '49349-425', 4, 1),
(3, 'Mustang', 'Injury of unspecified nerve at hip and thigh level, right leg', 'http://dummyimage.com/206x100.png/cc0000/ffffff', 5639886, 9304487, 22, false, '0268-1520', 4, 1),
(4, 'Precis', 'Laceration without foreign body of left hand, sequela', 'http://dummyimage.com/171x100.png/5fa2dd/ffffff', 9256605, 6327685, 57, false, '55312-328', 1, 1),
(5, 'F150', 'Nondisplaced fracture of triquetrum [cuneiform] bone, right wrist, subsequent encounter for fracture with delayed healing', 'http://dummyimage.com/222x100.png/ff4444/ffffff', 9650707, 4203648, 20, false, '63323-648', 2, 5),
(6, '9000', 'Other human herpesvirus encephalitis', 'http://dummyimage.com/109x100.png/ff4444/ffffff', 3012590, 4484992, 82, false, '68421-8100', 2, 3),
(7, 'Trooper', 'Poisoning by other agents primarily affecting gastrointestinal system, undetermined, sequela', 'http://dummyimage.com/102x100.png/dddddd/000000', 7508997, 2343614, 16, false, '37000-404', 1, 2),
(8, 'Passat', 'Unspecified open wound of unspecified shoulder, subsequent encounter', 'http://dummyimage.com/224x100.png/cc0000/ffffff', 6542811, 8613459, 15, false, '34954-014', 4, 3),
(9, 'Forester', 'Corrosion of third degree of unspecified single finger (nail) except thumb, initial encounter', 'http://dummyimage.com/196x100.png/dddddd/000000', 3597008, 5832284, 85, false, '49999-924', 4, 5),
(10, 'RX-8', 'Embolism due to internal orthopedic prosthetic devices, implants and grafts, sequela', 'http://dummyimage.com/162x100.png/dddddd/000000', 2572018, 724006, 31, false, '66129-110', 4, 5);

INSERT INTO `order_detail` (`product_id`,`order_id`,`quantity`,`price_ht`, `discount`)
VALUES
  (1,9,2,100,0),
  (1,2,8,9920,0),
  (2,4,2,12920,0),
  (4,3,1,5678,0),
  (1,4,5,19800,0),
  (4,4,7,1289,0),
  (2,6,9,10987,0),
  (4,9,3,48692,0),
  (1,5,7,12092,0),
  (3,6,8,57098,0),
  (5,2,7,56436,0),
  (4,1,2,98745,0),
  (4,5,1,04576,0),
  (4,8,2,09457,0),
  (2,8,9,567098,0),
  (5,10,7,567,0),
  (2,7,7,9989,0);

INSERT INTO `cart` (`product_id`,`customer_id`,`quantity`)
VALUES
  (2,6,3),
  (1,4,2),
  (2,7,1),
  (4,1,6),
  (4,10,1);