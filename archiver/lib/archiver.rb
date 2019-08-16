require "archiver/version"

module Archiver
  class Error < StandardError; end
  #activated_at:timestamp

  def self.archive(data)
    data.update({ archived_at: Time.now })
  end

  def self.restore(data)
    data.update({ archived_at: nil })
  end

  def self.archived?(data)
    data.archived_at.present?
  end
end
