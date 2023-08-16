{pkgs,...}:
{
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql;
    port = 5432; 
    initialScript = pkgs.writeText "backend-initScript" ''
        CREATE ROLE nixcloud WITH LOGIN PASSWORD 'nixcloud' CREATEDB;
        CREATE DATABASE nixcloud;
        GRANT ALL PRIVILEGES ON DATABASE nixcloud TO nixcloud;
    '';
  };
}
