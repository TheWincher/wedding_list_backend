CREATE TABLE IF NOT EXISTS invites (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    presence BOOLEAN DEFAULT NULL,
    kid BOOLEAN NOT NULL,
    code CHAR(8) NOT NULL,
    comment TEXT DEFAULT NULL,
    diner BOOLEAN DEFAULT TRUE
);

INSERT INTO invites (name, kid, code) VALUES ('Emmanuel Louchez', FALSE, '23LW4PC2');
INSERT INTO invites (name, kid, code) VALUES ('Alexandra Seignobos', FALSE, '23LW4PC2');

--Alexandra
INSERT INTO invites (name, kid, code) VALUES ('David Seignobos', FALSE, '43rOzyZC');
INSERT INTO invites (name, kid, code) VALUES ('Valérie Seignobos', FALSE, '43rOzyZC');
INSERT INTO invites (name, kid, code) VALUES ('Thomas Seignobos', FALSE, '8rHgYcIL');
INSERT INTO invites (name, kid, code) VALUES ('Laurent Seignobos', FALSE, 'VAnHX33M');
INSERT INTO invites (name, kid, code) VALUES ('Érika Seignobos', FALSE, 'VAnHX33M');
INSERT INTO invites (name, kid, code) VALUES ('Léobin Seignobos', FALSE, 'VAnHX33M');
INSERT INTO invites (name, kid, code) VALUES ('Noéline Seignobos', FALSE, 'VAnHX33M');
INSERT INTO invites (name, kid, code) VALUES ('Laurent Louis', FALSE, 'S2yr5fyc');
INSERT INTO invites (name, kid, code) VALUES ('Guillaume Louis', FALSE, 'l4P8ZUKq');
INSERT INTO invites (name, kid, code) VALUES ('Julien Louis', FALSE, '0jJcllrK');
INSERT INTO invites (name, kid, code) VALUES ('Émilie Pipard', FALSE, '0jJcllrK');
INSERT INTO invites (name, kid, code) VALUES ('François Redon', FALSE, 'FUJ5Aa21');
INSERT INTO invites (name, kid, code) VALUES ('Sandrine Redon', FALSE, 'FUJ5Aa21');
INSERT INTO invites (name, kid, code) VALUES ('Florian Redon', FALSE, 'FxwuLBWi');
INSERT INTO invites (name, kid, code) VALUES ('Marion Grosfilley', FALSE, 'MttJW3AB');
INSERT INTO invites (name, kid, code) VALUES ('Jérémy Grosfilley', FALSE, 'MttJW3AB');
INSERT INTO invites (name, kid, code) VALUES ('Cirilla Grosfilley', TRUE, 'MttJW3AB');
INSERT INTO invites (name, kid, code) VALUES ('Philippe Tartare', FALSE, 'tqgtXhLT');
INSERT INTO invites (name, kid, code) VALUES ('Sylvie Tartare', FALSE, 'tqgtXhLT');
INSERT INTO invites (name, kid, code) VALUES ('Chloé Tartare', FALSE, 'H1i1kLt5');
INSERT INTO invites (name, kid, code) VALUES ('Mec Chloé', FALSE, 'H1i1kLt5');
INSERT INTO invites (name, kid, code) VALUES ('Antoine Tartare', FALSE, 'oooizSY1');
INSERT INTO invites (name, kid, code) VALUES ('Renée Seignobos', FALSE, 'n1HLmoPO');
INSERT INTO invites (name, kid, code) VALUES ('Mimi Bon', FALSE, 'ClJe55Ki');
INSERT INTO invites (name, kid, code) VALUES ('Daniel Bon', FALSE, 'CZv6Ywwk');
INSERT INTO invites (name, kid, code) VALUES ('Muriel Bon', FALSE, 'CZv6Ywwk');
INSERT INTO invites (name, kid, code) VALUES ('Mathieu Bon', FALSE, 'CZv6Ywwk');
INSERT INTO invites (name, kid, code) VALUES ('Nicolas Bon', FALSE, 'CZv6Ywwk');
INSERT INTO invites (name, kid, code) VALUES ('Christophe Basset', FALSE, 'gFTx4dAJ');
INSERT INTO invites (name, kid, code) VALUES ('Magali Basset', FALSE, 'gFTx4dAJ');
INSERT INTO invites (name, kid, code) VALUES ('Elsa Basset', FALSE, 'u9CascUL'); 
INSERT INTO invites (name, kid, code) VALUES ('Etienne Basset', FALSE, 'u9CascUL'); 
INSERT INTO invites (name, kid, code) VALUES ('Alexandre Basset', FALSE, 'Qipp2pZt'); 
INSERT INTO invites (name, kid, code) VALUES ('Céline Basset', FALSE, 'Qipp2pZt'); 
INSERT INTO invites (name, kid, code) VALUES ('Eléna Basset', TRUE, 'Qipp2pZt');
INSERT INTO invites (name, kid, code) VALUES ('Denis Richard', FALSE, 'moFXTQoM');
INSERT INTO invites (name, kid, code) VALUES ('Régine Domart', FALSE, 'H8hEW2s2');
INSERT INTO invites (name, kid, code) VALUES ('Philippe Domart', FALSE, 'H8hEW2s2');
INSERT INTO invites (name, kid, code) VALUES ('Alain Perrier', FALSE, 'k4tu8Rmu');
INSERT INTO invites (name, kid, code) VALUES ('Nathalie Perrier', FALSE, 'k4tu8Rmu');
INSERT INTO invites (name, kid, code) VALUES ('Ludovic Teyssere', FALSE, 'ocm036Pk');
INSERT INTO invites (name, kid, code) VALUES ('Charlotte Teyssere', FALSE, 'ocm036Pk');
INSERT INTO invites (name, kid, code) VALUES ('Denis Audemard', FALSE, '2FmWNY6y');
INSERT INTO invites (name, kid, code) VALUES ('Nathalie Audemard', FALSE, '2FmWNY6y');
INSERT INTO invites (name, kid, code) VALUES ('Mathilde Martins', FALSE, 'BhBBcIjJ');
INSERT INTO invites (name, kid, code) VALUES ('Nicolas Dorlac', FALSE, 'BhBBcIjJ');
INSERT INTO invites (name, kid, code) VALUES ('Joëlle Martins Pitel', FALSE, 'BhBBcIjJ'); --TODO nom de famille
INSERT INTO invites (name, kid, code) VALUES ('Carlos Martins', FALSE, 'BhBBcIjJ');
INSERT INTO invites (name, kid, code) VALUES ('Élise Dorlac', TRUE, 'BhBBcIjJ');
INSERT INTO invites (name, kid, code) VALUES ('Adèle Dorlac', TRUE, 'BhBBcIjJ');
INSERT INTO invites (name, kid, code) VALUES ('Claire-Anna Lemus', FALSE, '4alzzLqg'); 
INSERT INTO invites (name, kid, code) VALUES ('Jonathan Lemus', FALSE, '4alzzLqg');
INSERT INTO invites (name, kid, code) VALUES ('Laurie Mermier', FALSE, 'I108k5Ix');
INSERT INTO invites (name, kid, code) VALUES ('Jimmy Monnet', FALSE, 'I108k5Ix');
INSERT INTO invites (name, kid, code) VALUES ('Shana Barragan', FALSE, 'wKSpl0EC');

--Manu
INSERT INTO invites (name, kid, code) VALUES ('Michaël Louchez', FALSE, '6KNkDLWk');
INSERT INTO invites (name, kid, code) VALUES ('Eve Louchez', FALSE, '6KNkDLWk');
INSERT INTO invites (name, kid, code) VALUES ('Alexis Louchez', FALSE, 'oMBRA7iq');
INSERT INTO invites (name, kid, code) VALUES ('Mélissa Bertholon', FALSE, 'oMBRA7iq');
INSERT INTO invites (name, kid, code) VALUES ('Clara Louchez', FALSE, 'oMBRA7iq');
INSERT INTO invites (name, kid, code) VALUES ('Gérard Matuszak', FALSE, '5Gx7f0Ec');
INSERT INTO invites (name, kid, code) VALUES ('Louise-Marie Matuszak', FALSE, '5Gx7f0Ec');
INSERT INTO invites (name, kid, code) VALUES ('Olivier Fotia', FALSE, 'LoEckzZH');
INSERT INTO invites (name, kid, code) VALUES ('Virginie Matuszak', FALSE, '5uBs41ZV');
INSERT INTO invites (name, kid, code) VALUES ('Philippe Matuszak', FALSE, 'm38EtZRo');
INSERT INTO invites (name, kid, code) VALUES ('Angélique Matuszak', FALSE, 'm38EtZRo');
INSERT INTO invites (name, kid, code) VALUES ('Mélina Matuszak', FALSE, 'm38EtZRo');
INSERT INTO invites (name, kid, code) VALUES ('Raphaël Fotia', FALSE, 'HFF7AlA7');
INSERT INTO invites (name, kid, code) VALUES ('Léonie Lallouet', FALSE, 'HFF7AlA7');
INSERT INTO invites (name, kid, code) VALUES ('Amandine Fotia', FALSE, 'dmvnFV1s');
INSERT INTO invites (name, kid, code) VALUES ('Axel Vimeux', FALSE, 'dmvnFV1s');
INSERT INTO invites (name, kid, code) VALUES ('Alice Matuszak', FALSE, 'mLTfbCmM');
INSERT INTO invites (name, kid, code) VALUES ('Bruno Papin', FALSE, 'mLTfbCmM'); 
INSERT INTO invites (name, kid, code) VALUES ('Sylvain Lefebvre', FALSE, '0vihmaSF'); 
INSERT INTO invites (name, kid, code) VALUES ('Cyrielle Lefebvre', FALSE, 'WR13ootA'); 
INSERT INTO invites (name, kid, code) VALUES ('Marc Berthot', FALSE, 'WR13ootA');
INSERT INTO invites (name, kid, code) VALUES ('Evann', FALSE, 'WR13ootA');
INSERT INTO invites (name, kid, code) VALUES ('Lyam', TRUE, 'WR13ootA');
INSERT INTO invites (name, kid, code) VALUES ('Dominique Louchez', FALSE, 'kYJPF1sf');
INSERT INTO invites (name, kid, code) VALUES ('Franck Louchez', FALSE, 'heq5HDaj');
INSERT INTO invites (name, kid, code) VALUES ('Sandrine Louchez', FALSE, 'heq5HDaj');
INSERT INTO invites (name, kid, code) VALUES ('Thierry Louchez', FALSE, 'xguAElFo');
INSERT INTO invites (name, kid, code) VALUES ('Patricia Louchez', FALSE, 'xguAElFo');
INSERT INTO invites (name, kid, code) VALUES ('Patrick Louchez', FALSE, 'vJbKJ31D');
INSERT INTO invites (name, kid, code) VALUES ('Véronique Louchez', FALSE, 'vJbKJ31D');

--Apéro 
INSERT INTO invites (name, kid, code, diner) VALUES ('Jacqueline Bon', FALSE, 'BzwzXJwb', FALSE); 
INSERT INTO invites (name, kid, code, diner) VALUES ('Patrick Bon', FALSE, 'BzwzXJwb', FALSE); 
INSERT INTO invites (name, kid, code, diner) VALUES ('Philippe Bon', FALSE, 'f5amRXOC', FALSE); 
INSERT INTO invites (name, kid, code, diner) VALUES ('Alain Mourier', FALSE, 'WWKinttI', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Chantal Mourier', FALSE, 'WWKinttI', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Yvette Chantre', FALSE, 'DgGHkW60', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Yvan Mourier', FALSE, '0jBpS96r', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Thierry Seignobos', FALSE, '2GDEBiEQ', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Corine Seignobos', FALSE, '2GDEBiEQ', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Nicole Nicolas', FALSE, 's332j6rx', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Magali Laberrigue', FALSE, 'jW9UvZKI', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Guy Laberrigue', FALSE, 'jW9UvZKI', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Alain Mourier', FALSE, '1BjjTA6J', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Bernadette Bois', FALSE, '1BjjTA6J', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Eric Levoir', FALSE, 'vxtEfn5J', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Françoise Levoir', FALSE, 'vxtEfn5J', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Thierry Rouby', FALSE, 'jQTLeXZr', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Nadine Rouby', FALSE, 'jQTLeXZr', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Jimmy Mourier', FALSE, 'iGTJPMnh', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Eugénie Mourier', FALSE, 'iGTJPMnh', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Christian Monier', FALSE, 'Ax5HEqF3', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Solange Monier', FALSE, 'Ax5HEqF3', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Philippe Bard', FALSE, 'wFyhfFiM', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Véronique Bard', FALSE, 'wFyhfFiM', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Gérard Monier', FALSE, 'Sv0rLeQ2', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Pascale Monier', FALSE, 'Sv0rLeQ2', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Pauline Monier', FALSE, 'QRDjdhkA', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Damien Ramousse', FALSE, 'QRDjdhkA', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Laurent Boime', FALSE, 'IlhQMDjH', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Carine Boime', FALSE, 'IlhQMDjH', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Christelle Barbe', FALSE, 'kGz1lwng', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Denis Barbe', FALSE, 'kGz1lwng', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Christophe Martin', FALSE, 'E8Ny5KGb', FALSE); 
INSERT INTO invites (name, kid, code, diner) VALUES ('Nathalie Martin', FALSE, 'E8Ny5KGb', FALSE); 
INSERT INTO invites (name, kid, code, diner) VALUES ('Sylvie Reynaud', FALSE, 'YCqbZhR2', FALSE);
-- Boulot Valérie
INSERT INTO invites (name, kid, code, diner) VALUES ('Sonia Romain', FALSE, 'b5GQjAfj', FALSE); 
INSERT INTO invites (name, kid, code, diner) VALUES ('Yann Romain', FALSE, 'b5GQjAfj', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Emma Aulanier', FALSE, 'pf6ildl7', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Sandrine Jullien', FALSE, 'LEqWgRFR', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Nicolas Jullien', FALSE, 'LEqWgRFR', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Emmanuel Caillet', FALSE, 'p7moJrv5', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Céline Caillet', FALSE, 'p7moJrv5', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Léane Caillet', FALSE, 'p7moJrv5', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Lalie Caillet', FALSE, 'p7moJrv5', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Louna Caillet', FALSE, 'p7moJrv5', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Maryline Parant', FALSE, 'sJUTMZNN', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Jean-Jacques Parant', FALSE, 'sJUTMZNN', FALSE);
INSERT INTO invites (name, kid, code, diner) VALUES ('Rodelin Nzaba', FALSE, '2Xod3KNP', FALSE); 
INSERT INTO invites (name, kid, code, diner) VALUES ('Lucie Beck', FALSE, '2Xod3KNP', FALSE);