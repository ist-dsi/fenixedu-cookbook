################### Properties for Phd Institution Public Candidacy Properties ###################
default['fenixedu-cookbook']['phd']['institution']['public']['candidacy'] = {
  'access_link' => '',
  'referee_form_link' => '',
  'submission_link' => '',
}

################### Properties for Drive Client SDK Configuration ###################
default['fenixedu-cookbook']['drive']['url'] = 'http://localhost:8080/drive'
default['fenixedu-cookbook']['drive']['client']['app'] = {
  'id' => '',
  'user' => '',
}
default['fenixedu-cookbook']['drive']['client']['refresh']['token'] = ''

################### Properties for Papyrus Configuration ###################
default['fenixedu-cookbook']['papyrus'] = {
  'url' => 'http://localhost:8000',
  'token' => 'changethistoken',
}

################### Properties for Bullet Configuration ###################
default['fenixedu-cookbook']['bullet'] = ''

################### Properties for Fenix IST specific properties ###################
default['fenixedu-cookbook']['db']['giaf'] = {
  'alias' => '//localhost:3306/AssiduidadeOracleTeste',
  'pass' => '',
  'user' => 'root',
}

################### Properties for Identification Cards Configuration ###################
# Secret for Institution ID card generation
# PIN for Institution ID card generation
default['fenixedu-cookbook']['app']['institution'] = {
  'aes128_secret_key' => 'aa0bbfaf79654df4',
  'pin' => 0000,
}

# Password used to communicate with the SIBS Web Service, which returns the ID card production state.
# UserName used to communicate with the SIBS Web Service, which returns the ID card production state.
default['fenixedu-cookbook']['sibs']['webservice'] = {
  'password' => '',
  'username' => '',
}

################### Properties for Email Dispatcher Configurations ###################
default['fenixedu-cookbook']['mail']['mime']['id']['suffix'] = 'email-dispatch'
default['fenixedu-cookbook']['mail']['smtp'] = {
  'host' => '',
  'name' => '',
  'port' => 25,
}
# If true, To and Cc recipients will be treated as Bcc recipients. The dispatcher does not guarantee the visibility of these types of recipients in sent emails. This flag exists for the cases where it may be preferable to guarantee that none are visible.
default['fenixedu-cookbook']['mail_sender']['bcc']['recipients'] = false
default['fenixedu-cookbook']['mail_sender']['max']['recipients'] = 50

################### Properties for Scheduler Configuration ###################

# Minutes between attempts to obtain the exclusive execution rights for the scheduler thread. In environments with multiple application servers this ensures that one of them has the scheduler running. Should be greater than 1.
default['fenixedu-cookbook']['scheduler']['lease']['time']['minutes'] = 5
# Number of threads processing the task queue']['
default['fenixedu-cookbook']['scheduler']['queue']['threads']['number'] = 2

################### Properties for Bennu CAS Client Configuration ###################

default['fenixedu-cookbook']['cas'] = {
  # Whether the CAS client is enabled
  'enabled' => false,
  # The base URL of the CAS server
  'serverUrl' => 'http://localhost:8080/cas',
  # The URL to jump to when no callback is specified
  'serviceUrl' => '',
}

################### Properties for Bennu Renderers Configuration ###################

# Specifies if a checksum is generated and verified for each URL to avoid url tampering attacks.
default['fenixedu-cookbook']['filterRequestWithDigest'] = true
# Redirect link to use when a URL tampering is detected. Required when 'filterRequestWithDigest' is true
default['fenixedu-cookbook']['tamperingRedirect'] = '/'
# The HMAC Signature used to validate View State Integrity
default['fenixedu-cookbook']['viewstate']['signature']['key'] = 'somerandomstring'

################### Properties for Sap Sdk Configuration ###################

default['fenixedu-cookbook']['sap']['client']['cache'] = {
  'enabled' => false,
  'aggressive' => true,
  'aggressive_expires' => 360,
  'storeage_dir' => '/dev/null',
}
# This represents the SAP client ID (Mandante) to connect to
default['fenixedu-cookbook']['sap']['principal']['id'] = ''

default['fenixedu-cookbook']['sap']['saml'] = {
  'attribute_qualified_name' => 'istPersonUsername',
  'encryption_keystore_file' => 'sap-encrypt.jks',
  'encryption_alias' => 'sapsamlsvencrypt',
  'encryption_password' => 'password',
  'issuer' => 'SSO',
  'signature_algorithm' => 'http://www.w3.org/2001/04/xmldsig-more#rsa-sha256',
  'signing_keystore_file' => 'sap-sign.jks',
  'signing_alias' => 'sapsamlsv',
  'signing_password' => 'internet',
  'system_user' => 'LO-DOT',
}

default['fenixedu-cookbook']['sap']['service'] = {
  'cGroup' => '',
  'fixedAssetCode' => '',
  'institutionCode' => '',
  'url' => '',
  'warehouse' => 1801,
}

################### Properties for OAuth Properties ###################

default['fenixedu-cookbook']['bennu']['oauth'] = {
  # timeouts in seconds
  'access_token_timeout' => 3600,
  'code_timeout' => 60,
}
################### Properties for Parking Configuration ###################

default['fenixedu-cookbook']['parkingCardId']['admin']['password'] = ''
default['fenixedu-cookbook']['exportParkingData'] = {
  'password' => '',
  'username' => '',
}

################### Properties for General CMS Configuration ###################

# When you are developing a theme, you can set this to the directory for online testing
default['fenixedu-cookbook']['theme']['development'] = {
  'directory' => '',
  'mode' => false,
}

################### Properties for Bennu Portal Configuration ###################

# The URL to redirect the user to upon logout.
default['fenixedu-cookbook']['logout']['url'] = ''
# Disables Theme Caching and allows live-reloading of themes

################### Properties for Bennu Core Configurations ###################

# Full application url
default['fenixedu-cookbook']['application_url'] = 'http://localhost:8080'      # Default email for support. This is intended to be the fall-back for when no application specific email is configured.
default['fenixedu-cookbook']['support_email_address'] = ''                     # Whether to allow users to log in with a username/password combination.
default['fenixedu-cookbook']['local_login'] = true                             # Default System Locale. If empty falls back to java system default. Must be included in locales.supported
default['fenixedu-cookbook']['locale_default'] = ''                            # Locales that should be supported in ResourceBundles and other I18N mechanisms. If not specified falls back to a list with only the java system default.
default['fenixedu-cookbook']['locales_supported'] = ''                         # the size threshold after which files will be written to disk
default['fenixedu-cookbook']['static_cache_control_max_age'] = 86400
default['fenixedu-cookbook']['multipart'] = {
  'fileSizeThreshold' => 67108864,                                             # maximum size allowed for uploaded files
  'maxFileSize' => 214748364,                                                  # maximum size allowed for multipart/form-data requests
  'maxRequestSize' => 2252341248,                                              # The String value for the Cache-Control header for static resources
}

#
#
# ################### Properties for Registration Process Configuration ###################
#
# certifier.jwt.secret =
# certifier.url =
# signer.jwt.secret =
# signer.jwt.user = fenix
# signer.queue.alameda = 1
# signer.queue.taguspark = 2
# signer.url = https://localhost:8443/
# store.app.id =
# store.app.refresh.token =
# store.directory.name = documentos-oficiais/declaracoes
# store.url = http://localhost:8080/drive
# store.user =
#
#
# ################### Properties for EPFL Properties ###################
#
# phd.epfl.public.candidacy.access.link =
# phd.epfl.public.candidacy.referee.form.link =
# phd.epfl.public.candidacy.submission.link =
#
#
# ################### Properties for Giaf Invoice Configuration ###################
#
# # Filename to the client list from GIAF and corresponding VAT numbers.
# pt.indra.mygiaf.client.map = /dev/null
# # File store used to store files regarding invoices and reciepts from GIAF.
# pt.indra.mygiaf.invoice.dir = /dev/null
# # File store used to store files regarding documents from SAP.
# pt.sap.documents.dir = /dev/null
# # Filename with the bcc email addresses to report errors.
# pt.sap.mails.bcc = /dev/null
# # Filename with the email addresses to report errors.
# pt.sap.mails.to = /dev/null
# # Filename with the bcc email addresses to report errors.
# pt.sap.sync.active = true
#
#
# ################### Properties for Sap Group Integration Configuration ###################
#
#
#
# ################### Properties for Teacher Credits Configuration ###################
#
# lastSemesterForCredits =
# lastYearForCredits = 2010/2011
# startSemesterForCredits = 2
# startYearForCredits = 2002/2003
#
#
# ################### Properties for Email Dispatcher Configurations ###################
#
# messaging.files.prune.min.days = 3
# messaging.jwt.api.algorithm = HS256
# messaging.jwt.api.secret.key = somerandomstring
# messaging.jwt.api.ttl.ms = 1800000
# messaging.pebble.newlineTrimming = false
#
#
# ################### Properties for FenixEdu IST CMS Components specific properties ###################
#
# sotisURL = https://sotis.tecnico.ulisboa.pt
#
#
# ################### Properties for FenixEdu Academic Configuration ###################
#
# active.student.personal.data.authorization.choices = NO_END
# ciist.sms.gateway.url =
# ciist.sms.password =
# ciist.sms.shouldRun =
# ciist.sms.username =
# generic.application.email.confirmation.link = http://localhost:8080/fenix/publico/genericApplications.do?method=confirmEmail&confirmationCode=
# generic.application.email.recommendation.link = http://localhost:8080/fenix/publico/genericApplications.do?method=uploadRecommendation&confirmationCode=
# # The host of the SMTP server used to send Emails
# mail.smtp.host =
# # The name of the SMTP server used to send Emails
# mail.smtp.name =
# mailSender.max.recipients = 50
# max.days.between.promise.and.payment = 2
# max.new.payment.codes.per.event = 3
# maximum.number.of.credits.for.enrolment = 40.5
# mobility.default.erasmus.program = ERASMUS
# phd.public.candidacy.submission.link =
# physicalAddress.requiresValidation = true
# raides.request.info = false
# receipt.min.year.to.create = 2006
# receipt.numberSeries.for.years =
# semester.for.from.enrolments = 1
# # indicates if pending request should be stored in database to recover current session after new login
# semester.for.from.mark.sheet.managment = 2
# # institution entity code to be used in atm machines with reference to perform payments
# sibs.entityCode = 1111
# start.semester.for.bolonha.degrees = 1
# start.semester.for.bolonha.transition = 1
# start.year.for.bolonha.degrees = 2006/2007
# start.year.for.bolonha.transition = 2007/2008
# twilio.default.messaging.service.sid =
# twilio.from.number =
# twilio.sid =
# twilio.stoken =
# use.global.interest.rate.table.for.event.penalties = false
# webServices.internationalRegistration.password =
# webServices.internationalRegistration.url =
# webServices.internationalRegistration.username =
# year.for.from.enrolments = 2004/2005
# # identifies the execution period after which mark sheet are to be managed in the fenix system.
# year.for.from.mark.sheet.managment = 2005/2006
#
#
# ################### Properties for Phd Candidacy Properties ###################
#
# phd.public.candidacy.access.link =
# phd.public.external.access.link =
#
#
# ################### Properties for BPI Integration Configuration ###################
#
# converter.secret = changeme
# converter.url = http://localhost:8000
#
#
# ################### Properties for Renates Integration Configuration ###################
#
# renates.establishment.code = 0000
# renates.file.entries.limit = 1000
# renates.file.entries.start.date = 31/12/2009
# renates.organic.unit.code = 0000
# renates.orientator.info.request.header.value =
# renates.orientator.info.request.url =
#
#
# ################### Properties for Fenix Space Configuration ###################
#
# fontSize = 0.007
# padding = 0.025
# scaleRatio = 1200
# xAxisOffset = 0.075
# yAxisOffset = 0.3
#
#
# ################### Properties for FenixEdu IST Integration specific properties ###################
#
# # The password for parking information
# api.parking.password =
# # The url to get parking information
# api.parking.url =
# # The username for parking information
# api.parking.username =
# externalServices.ISTConnect.password =
# externalServices.ISTConnect.username =
# externalServices.koha.password =
# externalServices.koha.username =
# fenix.api.canteen.defaultName = alameda
# fenix.api.canteen.secret =
# fenix.api.canteen.url =
# fenix.api.canteen.user =
# fenix.api.contacts.url =
# fenix.api.news.rss.url.en =
# fenix.api.news.rss.url.pt =
# fenix.api.shuttle.url =
# ist.cas.enabled = false
# ldap.sync.services.password =
# ldap.sync.services.username =
# legacyFilesRedirectMapLocation =
# pushnotifications.server = http://127.0.0.1:8000/
# pushnotifications.token = someaccesstoken
# scheduler.watchdog.file = /tmp/fenix-scheduler-watchdog
# # used in header payments file and represents entity service identification (i.e. sibs). Default value '50000000' (sibs identification)
# sibs.destinationInstitutionId = 50000000
# # used in header payments file, and represents institution identification accordding to transfer service (i.e. sibs). Must be given by the entity that is peforming this service. Format: '9XXXXXXX'
# sibs.sourceInstitutionId = 11111111
# # The email address to send notifications about the AFS store quotas.
# store.quota.warning.email =
# ticketing.jwt.secret =
# ticketing.url = http://127.0.0.1:8000/
#
#
