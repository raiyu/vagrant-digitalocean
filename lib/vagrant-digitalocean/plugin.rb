module VagrantPlugins
  module DigitalOcean
    class Plugin < Vagrant.plugin('2')
      name 'DigitalOcean'
      description <<-DESC
        This plugin installs a provider that allows Vagrant to manage
        machines using DigitalOcean's API.
      DESC

      config(:digital_ocean, :provider) do
        require_relative 'config'
        Config
      end

      provider(:digital_ocean) do
        require_relative 'provider'
        Provider
      end

      command(:rebuild) do
        require_relative 'commands/rebuild'
        Commands::Rebuild
      end
    end
  end
end
