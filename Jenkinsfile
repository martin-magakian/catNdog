node{
    stage('prepare code'){
        git"https://github.com/martin-magakian/catNdog"

        sh'cd catNdog/sources/'

        sh'composer install'
		
		sh'cd ..'

        sh'docker run -it -p 80:80 -p 3306:3306 -v /var/www/catNdog catndog'

        echo 'do checkout stuff'
    }

    stage('unit test'){

    }

    stage('functional test'){


    }

    stage('prod deploy'){

        //sh'docker build -t catndog'
		
		docker.withRegistry('https://hub.docker.com/r/gbformhb/catndog/', 'mdp-hubdocker') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
		}
    }


}