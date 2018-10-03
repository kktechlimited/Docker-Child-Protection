
Bundler.require(:couch_watcher)

module CouchChanges
  MODELS_TO_WATCH = [
    Child,
    Incident,
    TracingRequest,
    PotentialMatch,
    Lookup,
    Location,
    FormSection,
    PrimeroModule,
    Agency,
    User,
    Role,
    SystemSettings,
    ConfigurationBundle,
    BulkExport
  ]

  class << self
    def logger
      @_logfile ||= "#{ENV['RAILS_LOG_PATH']}/output.log"
      @_logger ||= Logger.new(@_logfile, 1, 50.megabytes)
    end

    def run(history_file=nil)
      logger.info "Starting up Couch change watcher..."
      EventMachine.run do
        CouchChanges::Watcher.new(MODELS_TO_WATCH, history_file).watch_for_changes
      end
    end

  end
end


CouchChanges.run ARGV[0] if __FILE__ == $0

