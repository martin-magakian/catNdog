node{
    stage('prepare code'){
        git"https://github.com/martin-magakian/catNdog"

        sh'cd sources/'

        sh'composer install'

        sh'docker run -it -p 80:80 -p 3306:3306 -v /var/www/catNdog martinmagakian/catndog'

        echo 'do checkout stuff'
    }

    stage('unit test'){

    }

    stage('functional test'){


    }

    stage('prod deploy'){

        //sh'docker build -t martinmagakian/catndog'

    }


}