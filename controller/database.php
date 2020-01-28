<?php

class Database {

    private $tokenAuth;
    private $pdo;

    public function _construct() {
        $this->tokenAuth = array(
            'dbname' => 'camagru_db',
            'host' => 'localhost:8080',
            'user' => 'root',
            'password' => 'cecourt'    
        );
    }

    /* Connexion a la base de donnees */
    public function getPDO() {
        try {
            if($this->pdo == NULL) {
                $pdo = new PDO('mysql:dbname=' . $this->tokenAuth['dbname'] . ';host=' . $this->tokenAuth['host'], $this->tokenAuth['user'], $this->tokenAuth['password']);
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            }
        } catch (PDOException $e) {
            var_dump($e);
        }
    }

    /* Fermer la connexion a la base de donnees */
    private function shutdown() {
        $this->pdo = null;
        return true;
    }

    /* Requete query a la base de donnees */
    public function query($statement) {
        $request = $this->getPDO()->query($statement);
        $this->shutdown();
        return $request;
    }

    /* Requete prepare a la base de donnees */
    public function prepare($statement, $values) {
        $request = $this->getPDO()->prepare($statement);
        $request->execute($values);
        $this->shutdown();
        return $request;
    }
}

