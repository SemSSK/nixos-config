{pkgs,config,...}:
{
  services.ollama = {
    enable = true;
    # Optional: preload models, see https://ollama.com/library
    loadModels = [ "deepseek-r1:1.5b"];
  };
}
