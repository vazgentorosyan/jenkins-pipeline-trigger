def pipelineJobName = "HelloWorld"

pipelineJob(pipelineJobName) {
    parameters {
        stringParam('NAME', 'World', 'Enter your name')
    }

    definition {
        cps {
            script(readFileFromWorkspace('hello-world.groovy'))
        }
    }
}

// Create a Groovy script file in the Jenkins workspace directory that will print a message to the console
fileExists('hello-world.groovy') ?: writeWorkspaceFile('hello-world.groovy', """
    def name = params.NAME ?: 'World'
    echo "Hello, \${name}!"
""")
