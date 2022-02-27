# Notes on Rails


# Copy CSV to database

COPY attendances
FROM '/home/imam07/Downloads/attendances_202010131906.csv'
DELIMITER ',' CSV HEADER;

# Rails rescue from

include ActiveSupport::Rescuable
rescue_from ActiveRecord::RecordInvalid, with: :failed_checkin_rescuer

private

def failed_checkin_rescuer(error)
 Rollbar.info(error)
 {
   status: false, 
   message: 'check_in failed'
 }
end
