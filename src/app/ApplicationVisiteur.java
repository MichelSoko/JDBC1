package app;

import java.util.ArrayList;
import java.util.List;

import metier.Visiteur;

public class ApplicationVisiteur {

	/*
	 * Build path : postgresql-42.2.5
	 * Installer et configurer PostgreSQL
	 * 
	 * Executer le shell script dans le dossier resources pour créer la BDD avec un utilisateur
	 */
	
	public static void main(String args[]) {

		Visiteur visiteur = new Visiteur();

		visiteur.ouvrirConnexion();
		visiteur.ajouterTypeSociete("Assurance");
		visiteur.afficherTypeSociete("A");

		List<String> types = new ArrayList<String>();
		types.add("Transporteur");
		types.add("Armateur");
		visiteur.ajouterListeTypeSociete(types);
		visiteur.afficherTypeSociete("A");

		visiteur.fermerConnexion();

	}

}