divert(-1)
dnl This is the macro config file used to generate the /etc/sendmail.cf
dnl file. If you modify thei file you will have to regenerate the
dnl /etc/sendmail.cf by running this macro config through the m4
dnl preprocessor:
dnl
dnl        m4 /etc/sendmail.mc > /etc/sendmail/cf
dnl
dnl You will need to have the sendmail-cf package installed for this to
dnl work.
include(`../m4/cf.m4')
define(`confDEF_USER_ID',``8:12'')
OSTYPE(`linux')
undefine(`UUCP_RELAY')
undefine(`BITNET_RELAY')
define(`confAUTO_REBUILD')
define(`confTO_CONNECT', `1m')
define(`confTRY_NULL_MX_LIST',true)
define(`confDONT_PROBE_INTERFACES',true)
define(`PROCMAIL_MAILER_PATH',`/usr/bin/procmail')
FEATURE(`smrsh',`/usr/sbin/smrsh')
FEATURE(`mailertable', `hash -o /etc/mail/mailertable')
FEATURE(`virtusertable',`hash -o /etc/mail/virtusertable')
FEATURE(redirect)
FEATURE(always_add_domain)
FEATURE(use_cw_file)
FEATURE(local_procmail)
MAILER(procmail)
MAILER(smtp)
MAILER(sms)
FEATURE(`access_db')
FEATURE(`blacklist_recipients')
dnl We strongly recommend to comment this one out if you want to protect
dnl yourself from spam. However, the laptop and users on computers that do
dnl not hav 24x7 DNS do need this.
FEATURE(`accept_unresolvable_domains')
dnl FEATURE(`relay_based_on_MX')
