FROM		logstash:5
MAINTAINER	phirov@163.com

RUN		mkdir -p /tmp/logstash/ && \
		wget -P /tmp/logstash https://github.com/phirov/logstash-input-s3/archive/v3.1.2.tar.gz && \
		cd /tmp/logstash && \
		tar xzf v3.1.2.tar.gz && \
		echo "alias ls='ls --color=auto'" >> $HOME/.bashrc && \
		# use buildin jruby && gem to install new plugin
		echo 'PATH=/usr/share/logstash/vendor/jruby/bin:/usr/share/logstash/vendor/bundle/jruby/1.9/bin/:$PATH' >> $HOME/.bashrc && \
		export PATH=/usr/share/logstash/vendor/jruby/bin:/usr/share/logstash/vendor/bundle/jruby/1.9/bin/:$PATH && \
		cd /usr/share/logstash && \
		sed -i 's/gem "logstash-input-s3"/gem "logstash-input-s3", :path => "\/tmp\/logstash\/logstash-input-s3-3.1.2"/g' Gemfile && \
		gem build /tmp/logstash/logstash-input-s3-3.1.2/logstash-input-s3.gemspec && \
		./bin/logstash-plugin install --no-verify
		#./bin/logstash-plugin update --no-verify

ENTRYPOINT	["/docker-entrypoint.sh"]
CMD		["-e", ""]
