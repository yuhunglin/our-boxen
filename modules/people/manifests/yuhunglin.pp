class people::yuhunglin {
  include people::yuhunglin::applications
  include people::yuhunglin::application_settings
  notify { 'class people::yuhunglin declared': }
}