#James MacArthur

# match everything
# run /srv/salt/cron.sls or /srv/salt/cron/init.sls
base:
  '*':
    - cron

# match only one hose - 925078812.acs.edcc.edu
# run /srv/salt/packages/git.sls

  '925078812.acs.edcc.edu':
    - packages.git 