CREATE TABLE IF NOT EXISTS invites (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL,
    presence INTEGER NOT NULL,
    kid INTEGER NOT NULL,
    code TEXT NOT NULL,
    comment TEXT DEFAULT NULL,
    diner INTEGER DEFAULT 1
);

INSERT INTO invites (name, presence, kid, code) VALUES ("Emmanuel Louchez", 0, 0, "23LW4PC2");
INSERT INTO invites (name, presence, kid, code) VALUES ("Alexandra Seignobos", 0, 0, "23LW4PC2");
INSERT INTO invites (name, presence, kid, code) VALUES ("David Seignobos", 0, 0, "43rOzyZC");
INSERT INTO invites (name, presence, kid, code) VALUES ("Valérie Seignobos", 0, 0, "43rOzyZC");
INSERT INTO invites (name, presence, kid, code) VALUES ("Thomas Seignobos", 0, 0, "8rHgYcIL");
INSERT INTO invites (name, presence, kid, code) VALUES ("Laurent Seignobos", 0, 0, "VAnHX33M");
INSERT INTO invites (name, presence, kid, code) VALUES ("Érika Seignobos", 0, 0, "VAnHX33M");
INSERT INTO invites (name, presence, kid, code) VALUES ("Léobin Seignobos", 0, 0, "VAnHX33M");
INSERT INTO invites (name, presence, kid, code) VALUES ("Noéline Seignobos", 0, 0, "VAnHX33M");
INSERT INTO invites (name, presence, kid, code) VALUES ("Laurent Louis", 0, 0, "S2yr5fyc");
INSERT INTO invites (name, presence, kid, code) VALUES ("Guillaume Louis", 0, 0, "l4P8ZUKq");
INSERT INTO invites (name, presence, kid, code) VALUES ("Julien Louis", 0, 0, "0jJcllrK");
INSERT INTO invites (name, presence, kid, code) VALUES ("Émilie Pipard", 0, 0, "0jJcllrK");
INSERT INTO invites (name, presence, kid, code) VALUES ("François Redon", 0, 0, "FUJ5Aa21");
INSERT INTO invites (name, presence, kid, code) VALUES ("Sandrine Redon", 0, 0, "FUJ5Aa21");
INSERT INTO invites (name, presence, kid, code) VALUES ("Florian Redon", 0, 0, "FxwuLBWi");
INSERT INTO invites (name, presence, kid, code) VALUES ("Marion Grosfilley", 0, 0, "MttJW3AB");
INSERT INTO invites (name, presence, kid, code) VALUES ("Jérémy Grosfilley", 0, 0, "MttJW3AB");
INSERT INTO invites (name, presence, kid, code) VALUES ("Cirilla Grosfilley", 0, 1, "MttJW3AB");
INSERT INTO invites (name, presence, kid, code) VALUES ("Philippe Tartare", 0, 0, "tqgtXhLT");
INSERT INTO invites (name, presence, kid, code) VALUES ("Sylvie Tartare", 0, 0, "tqgtXhLT");
INSERT INTO invites (name, presence, kid, code) VALUES ("Chloé Tartare", 0, 0, "H1i1kLt5");
INSERT INTO invites (name, presence, kid, code) VALUES ("Mec Chloé", 0, 0, "H1i1kLt5");
INSERT INTO invites (name, presence, kid, code) VALUES ("Antoine Tartare", 0, 0, "oooizSY1");
INSERT INTO invites (name, presence, kid, code) VALUES ("Renée Seignobos", 0, 0, "n1HLmoPO");
INSERT INTO invites (name, presence, kid, code) VALUES ("Mimi Bon", 0, 0, "ClJe55Ki");
INSERT INTO invites (name, presence, kid, code) VALUES ("Daniel Bon", 0, 0, "CZv6Ywwk");
INSERT INTO invites (name, presence, kid, code) VALUES ("Muriel Bon", 0, 0, "CZv6Ywwk");
INSERT INTO invites (name, presence, kid, code) VALUES ("Mathieu Bon", 0, 0, "CZv6Ywwk");
INSERT INTO invites (name, presence, kid, code) VALUES ("Nicolas Bon", 0, 0, "CZv6Ywwk");
INSERT INTO invites (name, presence, kid, code) VALUES ("Christophe Basset", 0, 0, "gFTx4dAJ");
INSERT INTO invites (name, presence, kid, code) VALUES ("Magali Basset", 0, 0, "gFTx4dAJ");
INSERT INTO invites (name, presence, kid, code) VALUES ("Elsa Basset", 0, 0, "u9CascUL"); 
INSERT INTO invites (name, presence, kid, code) VALUES ("Etienne Basset", 0, 0, "u9CascUL"); 
INSERT INTO invites (name, presence, kid, code) VALUES ("Alexandre Basset", 0, 0, "Qipp2pZt"); 
INSERT INTO invites (name, presence, kid, code) VALUES ("Céline Basset", 0, 0, "Qipp2pZt"); 
INSERT INTO invites (name, presence, kid, code) VALUES ("Enfant Basset", 0, 1, "Qipp2pZt"); --Prénom
INSERT INTO invites (name, presence, kid, code) VALUES ("Denis Richard", 0, 0, "moFXTQoM");
INSERT INTO invites (name, presence, kid, code) VALUES ("Régine Domart", 0, 0, "H8hEW2s2");
INSERT INTO invites (name, presence, kid, code) VALUES ("Philippe Domart", 0, 0, "H8hEW2s2");
INSERT INTO invites (name, presence, kid, code) VALUES ("Alain Perrier", 0, 0, "k4tu8Rmu");
INSERT INTO invites (name, presence, kid, code) VALUES ("Nathalie Perrier", 0, 0, "k4tu8Rmu");
INSERT INTO invites (name, presence, kid, code) VALUES ("Ludovic Teyssere", 0, 0, "ocm036Pk");
INSERT INTO invites (name, presence, kid, code) VALUES ("Charlotte Teyssere", 0, 0, "ocm036Pk");
INSERT INTO invites (name, presence, kid, code) VALUES ("Denis Audemard", 0, 0, "2FmWNY6y");
INSERT INTO invites (name, presence, kid, code) VALUES ("Nathalie Audemard", 0, 0, "2FmWNY6y");
INSERT INTO invites (name, presence, kid, code) VALUES ("Mathilde Martins", 0, 0, "BhBBcIjJ");
INSERT INTO invites (name, presence, kid, code) VALUES ("Nicolas Dorlac", 0, 0, "BhBBcIjJ");
INSERT INTO invites (name, presence, kid, code) VALUES ("Joëlle Martins Pitel", 0, 0, "BhBBcIjJ"); --TODO nom de famille
INSERT INTO invites (name, presence, kid, code) VALUES ("Carlos Martins", 0, 0, "BhBBcIjJ");
INSERT INTO invites (name, presence, kid, code) VALUES ("Élise Dorlac", 0, 1, "BhBBcIjJ");
INSERT INTO invites (name, presence, kid, code) VALUES ("Adèle Dorlac", 0, 1, "BhBBcIjJ");
INSERT INTO invites (name, presence, kid, code) VALUES ("Claire-Anna Lemus", 0, 0, "4alzzLqg"); 
INSERT INTO invites (name, presence, kid, code) VALUES ("Jonathan Lemus", 0, 0, "4alzzLqg");
INSERT INTO invites (name, presence, kid, code) VALUES ("Laurie Mermier", 0, 0, "I108k5Ix");
INSERT INTO invites (name, presence, kid, code) VALUES ("Jimmy Monnet", 0, 0, "I108k5Ix");
INSERT INTO invites (name, presence, kid, code) VALUES ("Shana Barragan", 0, 0, "wKSpl0EC");
INSERT INTO invites (name, presence, kid, code) VALUES ("Michaël Louchez", 0, 0, "6KNkDLWk");
INSERT INTO invites (name, presence, kid, code) VALUES ("Eve Louchez", 0, 0, "6KNkDLWk");
INSERT INTO invites (name, presence, kid, code) VALUES ("Alexis Louchez", 0, 0, "oMBRA7iq");
INSERT INTO invites (name, presence, kid, code) VALUES ("Mélissa Bertholon", 0, 0, "oMBRA7iq");
INSERT INTO invites (name, presence, kid, code) VALUES ("Clara Louchez", 0, 0, "oMBRA7iq");
INSERT INTO invites (name, presence, kid, code) VALUES ("Gérard Matuszak", 0, 0, "5Gx7f0Ec");
INSERT INTO invites (name, presence, kid, code) VALUES ("Louise-Marie Matuszak", 0, 0, "5Gx7f0Ec");
INSERT INTO invites (name, presence, kid, code) VALUES ("Olivier Fotia", 0, 0, "LoEckzZH");
INSERT INTO invites (name, presence, kid, code) VALUES ("Virginie Matuszak", 0, 0, "5uBs41ZV");
INSERT INTO invites (name, presence, kid, code) VALUES ("Philippe Matuszak", 0, 0, "m38EtZRo");
INSERT INTO invites (name, presence, kid, code) VALUES ("Angélique Matuszak", 0, 0, "m38EtZRo");
INSERT INTO invites (name, presence, kid, code) VALUES ("Mélina Matuszak", 0, 0, "m38EtZRo");
INSERT INTO invites (name, presence, kid, code) VALUES ("Raphaël Fotia", 0, 0, "HFF7AlA7");
INSERT INTO invites (name, presence, kid, code) VALUES ("Léonie Lallouet", 0, 0, "HFF7AlA7");
INSERT INTO invites (name, presence, kid, code) VALUES ("Amandine Fotia", 0, 0, "dmvnFV1s");
INSERT INTO invites (name, presence, kid, code) VALUES ("Axel Vimeux", 0, 0, "dmvnFV1s");
INSERT INTO invites (name, presence, kid, code) VALUES ("Alice Matuszak", 0, 0, "mLTfbCmM");
INSERT INTO invites (name, presence, kid, code) VALUES ("Bruno Papin", 0, 0, "mLTfbCmM"); 
INSERT INTO invites (name, presence, kid, code) VALUES ("Sylvain Lefebvre", 0, 0, "0vihmaSF"); 
INSERT INTO invites (name, presence, kid, code) VALUES ("Cyrielle Lefebvre", 0, 0, "WR13ootA"); 
INSERT INTO invites (name, presence, kid, code) VALUES ("Marc Berthot", 0, 0, "WR13ootA");
INSERT INTO invites (name, presence, kid, code) VALUES ("Evann", 0, 0, "WR13ootA");
INSERT INTO invites (name, presence, kid, code) VALUES ("Lyam", 0, 1, "WR13ootA");
INSERT INTO invites (name, presence, kid, code) VALUES ("Dominique Louchez", 0, 0, "kYJPF1sf");
INSERT INTO invites (name, presence, kid, code) VALUES ("Franck Louchez", 0, 0, "heq5HDaj");
INSERT INTO invites (name, presence, kid, code) VALUES ("Sandrine Louchez", 0, 0, "heq5HDaj");
INSERT INTO invites (name, presence, kid, code) VALUES ("Thierry Louchez", 0, 0, "xguAElFo");
INSERT INTO invites (name, presence, kid, code) VALUES ("Patricia Louchez", 0, 0, "xguAElFo");
INSERT INTO invites (name, presence, kid, code) VALUES ("Patrick Louchez", 0, 0, "vJbKJ31D");
INSERT INTO invites (name, presence, kid, code) VALUES ("Véronique Louchez", 0, 0, "vJbKJ31D");

--Apéro 
INSERT INTO invites (name, presence, kid, code, diner) VALUES ("Jacqueline Bon", 0, 0, "BzwzXJwb", 0); 
INSERT INTO invites (name, presence, kid, code, diner) VALUES ("Patrick Bon", 0, 0, "BzwzXJwb", 0); 
INSERT INTO invites (name, presence, kid, code, diner) VALUES ("Philippe Bon", 0, 0, "f5amRXOC", 0); 
INSERT INTO invites (name, presence, kid, code, diner) VALUES ("Alain Mourier", 0, 0, "WWKinttI", 0);
INSERT INTO invites (name, presence, kid, code, diner) VALUES ("Chantal Mourier", 0, 0, "WWKinttI", 0);