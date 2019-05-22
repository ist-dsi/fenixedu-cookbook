################### Properties for Phd Candidacy Properties ###################

default['fenixedu-cookbook']['phd']['public']['candidacy']['access']['link'] = ''
default['fenixedu-cookbook']['phd']['public']['external']['access']['link'] = ''

################### Properties for Fenix Space Configuration ###################
default['fenixedu-cookbook']['fontSize'] = '0.007'
default['fenixedu-cookbook']['padding'] = '0.025'
default['fenixedu-cookbook']['scaleRatio'] = 1200
default['fenixedu-cookbook']['xAxisOffset'] = '0.075'
default['fenixedu-cookbook']['yAxisOffset'] = '0.3'
################### Properties for Bennu Renderers Configuration ###################
# Specifies if a checksum is generated and verified for each URL to avoid url tampering attacks.
default['fenixedu-cookbook']['filterRequestWithDigest'] = true
# Redirect link to use when a URL tampering is detected. Required when 'filterRequestWithDigest' is true
default['fenixedu-cookbook']['tamperingRedirect'] = '/'

# The HMAC Signature used to validate View State Integrity
default['fenixedu-cookbook']['viewstate']['signature']['key'] = 'somerandomstring'

################### Properties for Scheduler Configuration ###################

# Minutes between attempts to obtain the exclusive execution rights for the scheduler thread. In environments with multiple application servers this ensures that one of them has the scheduler running. Should be greater than 1.
default['fenixedu-cookbook']['scheduler']['lease']['time']['minutes'] = 5
# Number of threads processing the task queue.
default['fenixedu-cookbook']['scheduler']['queue']['threads']['number'] = 2

################### Properties for Bennu Portal Configuration ###################

# The URL to redirect the user to upon logout.
default['fenixedu-cookbook']['logout']['url'] = ''
# Disables Theme Caching and allows live-reloading of themes
default['fenixedu-cookbook']['theme']['development']['mode'] = false

################### Properties for Bennu Core Configurations ###################

# Full application url
default['fenixedu-cookbook']['application']['url'] = 'http://localhost:8080/fenix'
# Default email for support. This is intended to be the fall-back for when no application specific email is configured.
default['fenixedu-cookbook']['default']['support']['email']['address'] = ''
# Whether development mode is on. Throughout the application the behaviour can change according to this setting.
default['fenixedu-cookbook']['development']['mode'] = true
# Whether to allow users to log in with a username/password combination.
default['fenixedu-cookbook']['local']['login'] = true
# Default System Locale. If empty falls back to java system default. Must be included in locales.supported
default['fenixedu-cookbook']['locale']['default'] = 'pt-PT'
# Locales that should be supported in ResourceBundles and other I18N mechanisms. If not specified falls back to a list with only the java system default.
default['fenixedu-cookbook']['locales']['supported'] = 'en-GB, pt-PT'
# the size threshold after which files will be written to disk
default['fenixedu-cookbook']['multipart'] = {
  'fileSizeThreshold' => '67108864',
  # maximum size allowed for uploaded files
  'maxFileSize' => '2147483648',
  # maximum size allowed for multipart/form-data requests
  'maxRequestSize' => '2252341248',
}
# The String value for the Cache-Control header for static resources
default['fenixedu-cookbook']['static']['cache']['control'] = 'max-age=86400'

################### Properties for FenixEdu Academic Configuration ###################

default['fenixedu-cookbook']['active']['student']['personal']['data']['authorization']['choices'] = 'NO_END'
default['fenixedu-cookbook']['ciist']['sms'] = {
  'password' => '',
  'shouldRun' => '',
  'username' => '',
}
default['fenixedu-cookbook']['ciist']['sms']['gateway']['url'] = ''
default['fenixedu-cookbook']['generic']['application']['email']['confirmation']['link'] = 'http://localhost:8080/fenix/publico/genericApplications.do?method=confirmEmail&confirmationCode='
default['fenixedu-cookbook']['generic']['application']['email']['recommendation']['link'] = 'http://localhost:8080/fenix/publico/genericApplications.do?method=uploadRecommendation&confirmationCode='
# The host of the SMTP server used to send Emails
default['fenixedu-cookbook']['mail']['smtp']['host'] = ''
# The name of the SMTP server used to send Emails
default['fenixedu-cookbook']['mail']['smtp']['name'] = ''
default['fenixedu-cookbook']['mailSender']['max']['recipients'] = 50
default['fenixedu-cookbook']['max']['days']['between']['promise']['and']['payment'] = 2
default['fenixedu-cookbook']['max']['new']['payment']['codes']['per']['event'] = 3
default['fenixedu-cookbook']['maximum']['number']['of']['credits']['for']['enrolment'] = 40.5
default['fenixedu-cookbook']['mobility']['default']['erasmus']['program'] = 'ERASMUS'
default['fenixedu-cookbook']['phd']['public']['candidacy']['submission']['link'] = ''
default['fenixedu-cookbook']['physicalAddress']['requiresValidation'] = true
default['fenixedu-cookbook']['raides']['request']['info'] = false
default['fenixedu-cookbook']['receipt']['min']['year']['to']['create'] = 2006
default['fenixedu-cookbook']['receipt']['numberSeries']['for']['years'] = ''
default['fenixedu-cookbook']['semester']['for']['from']['enrolments'] = 1
# indicates if pending request should be stored in database to recover current session after new login
default['fenixedu-cookbook']['semester']['for']['from']['mark']['sheet']['managment'] = 2
# institution entity code to be used in atm machines with reference to perform payments
default['fenixedu-cookbook']['sibs']['entityCode'] = 1111
default['fenixedu-cookbook']['start']['semester']['for']['bolonha'] = {
  'degrees' => 1,
  'transition' => 1,
}
default['fenixedu-cookbook']['start']['year']['for']['bolonha'] = {
  'degrees' => '2006/2007',
  'transition' => '2007/2008',
}
default['fenixedu-cookbook']['twilio']['default']['messaging']['service']['sid'] = ''
default['fenixedu-cookbook']['twilio']['from']['number'] = ''
default['fenixedu-cookbook']['twilio']['sid'] = ''
default['fenixedu-cookbook']['twilio']['stoken'] = ''
default['fenixedu-cookbook']['use']['global']['interest']['rate']['table']['for']['event']['penalties'] = false
default['fenixedu-cookbook']['webServices']['internationalRegistration'] = {
  'password' => '',
  'url' => '',
  'username' => '',
}
default['fenixedu-cookbook']['year']['for']['from']['enrolments'] = '2004/2005'
# identifies the execution period after which mark sheet are to be managed in the fenix system.
default['fenixedu-cookbook']['year']['for']['from']['mark']['sheet']['managment'] = '2005/2006'

################### Properties for Phd Institution Public Candidacy Properties ###################

default['fenixedu-cookbook']['phd']['institution']['public']['candidacy']['access']['link'] = ''
default['fenixedu-cookbook']['phd']['institution']['public']['candidacy']['referee']['form']['link'] = ''
default['fenixedu-cookbook']['phd']['institution']['public']['candidacy']['submission']['link'] = ''

################### Properties for Email Dispatcher Configurations ###################

default['fenixedu-cookbook']['messaging']['files']['prune']['min']['days'] = 3
default['fenixedu-cookbook']['messaging']['jwt']['api']['algorithm'] = 'HS256'
default['fenixedu-cookbook']['messaging']['jwt']['api']['secret']['key'] = 'somerandomstring'
default['fenixedu-cookbook']['messaging']['jwt']['api']['ttl']['ms'] = 1800000
default['fenixedu-cookbook']['messaging']['pebble']['newlineTrimming'] = false

################### Properties for EPFL Properties ###################

default['fenixedu-cookbook']['phd']['epfl']['public']['candidacy']['access']['link'] = ''
default['fenixedu-cookbook']['phd']['epfl']['public']['candidacy']['referee']['form']['link'] = ''
default['fenixedu-cookbook']['phd']['epfl']['public']['candidacy']['submission']['link'] = ''

default['fenixedu-cookbook']['framework'] = {
  'dbAlias' => '//localhost:3306/fenixedu',
  'dbUsername' => 'root',
  'dbPassword' => '',
  'updateRepositoryStructureIfNeeded' => true,
}
