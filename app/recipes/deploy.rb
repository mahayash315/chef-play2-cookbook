#
# Cookbook Name:: app
# Recipe:: deploy
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
node[:deploy].each do |application, deploy|
  opsworks_play2 do
    app application
    deploy_data deploy
  end
end