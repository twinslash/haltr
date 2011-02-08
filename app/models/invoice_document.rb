class InvoiceDocument < Invoice

  # https://rails.lighthouseapp.com/projects/8994/tickets/2389-sti-changes-behavior-depending-on-environment
  require_association "received_invoice"
  require_association "issued_invoice"

  unloadable

  has_many :payments, :foreign_key => :invoice_id, :dependent => :nullify

  attr_accessor :legal_filename, :legal_invoice

  def final_md5
    #TODO: check #2451 to store md5 on invoice.
    self.events.collect {|e| e unless e.final_md5.blank? }.compact.sort.last.final_md5 rescue nil
  end

  def initial_md5
    self.events.collect {|e| e unless e.md5.blank? }.compact.sort.last.md5 rescue nil
  end

  def fetch_legal_by_http 
    url = Setting.plugin_haltr["trace_url"]
    url = URI.parse(url.gsub(/\/$/,'')) # remove trailing slash
    http = Net::HTTP.new(url.host,url.port)
    http.start() do |http|
      full_url = "#{url.path.blank? ? "/" : "#{url.path}/"}b2b_messages/get_legal_invoice?md5=#{self.initial_md5}"
      logger.debug "Fetching legal GET #{full_url}" if logger && logger.debug?
      req = Net::HTTP::Get.new(full_url)
      response = http.request(req)
      if response.is_a? Net::HTTPOK
        # retrieve filename from response headers
        if response["Content-Disposition"]
          self.legal_filename = response["Content-Disposition"].match('filename=\\".*\\"').to_s.gsub(/filename=/,'').gsub(/\"/,'').gsub(/^legal_/,'')
        else
          self.legal_filename = "invoice.xml"
        end
        self.legal_invoice = response.body
        return true
      else
        return false
      end
    end
  rescue Exception => e
    logger.error "Error retrieving invoice #{id} legal by http: #{e.message}"
    return false
  end

end

