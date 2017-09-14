node{
    stage('prepare code'){
        git "https://github.com/martin-magakian/catNdog"		
        sh 'cd catNdog/sources/'		
        sh 'composer install'
		sh 'cd ..'		
        echo 'do checkout stuff'
    }

    stage('unit test'){
		sh './vendor/bin/simple-phpunit'	
		echo 'End of unit test'
    }

    stage('functional test'){
		sh 'docker build -t gbformhb/catndog .'
        sh 'docker run -it -p 81:80 -p 3306:3306 -e MYSQL_PASS="admin" --name dockertmp -v /sources:/var/www/catNdog gbformhb/catndog'
		sh 'do functional test'		
		echo 'End of functional test'
    }
	
	stage('test deploy'){
        sh 'docker run -it -p 80:80 -p 3306:3306 -e MYSQL_PASS="admin" -v /sources:/var/www/catNdog gbformhb/catndog'
	}

    stage('prod deploy'){
		echo 'begin deploy on prod server'			
		sh 'docker --tlsverify -H=165.227.153.55:2376 pull gbformhb/catndog'
        sh 'docker --tlsverify -H=165.227.153.55:2376 rm -f catNdog | true'
        sh 'docker --tlsverify -H=165.227.153.55:2376 run -d --name catNdog -p 80:8080 gbformhb/catndog'				
		echo 'End deploy on prod server. great job !!'

    }


}
