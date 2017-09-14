node{
    stage('prepare code'){
        git"https://github.com/martin-magakian/catNdog"
        sh'cd catNdog/sources/'
        sh'composer install'
	sh'cd ..'
	sh'docker build -t gbformhb/catndog .'
        sh'docker run -it -p 80:80 -p 3306:3306 -e MYSQL_PASS="admin" -v /sources:/var/www/catNdog gbformhb/catndog'
        echo 'do checkout stuff'
    }

    stage('unit test'){

		echo 'End of unit test'
    }

    stage('functional test'){

		echo 'End of functional test'
    }

    stage('prod deploy'){
		echo 'begin deploy on prod server'
		
        sh'docker build -t gbformhb/catndogok'
		sh 'docker --tlsverify -H=165.227.153.55:2376 pull gbformhb/catndogok'
        sh 'dockerr --tlsverify -H=165.227.153.55:2376 rm -f catNdog | true'
        sh 'dockerr --tlsverify -H=165.227.153.55:2376 run -d --name catNdog -p 8082:8080 gbformhb/catndogok'
		
	//	docker.withRegistry('https://hub.docker.com/r/gbformhb/catndog/', 'mdp-hubdocker') {
    //        app.push("${env.BUILD_NUMBER}")
    //        app.push("latest")
	//	}
		
		echo 'End deploy on prod server. great job !!'

    }


}
