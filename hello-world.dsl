job {
    name('example-job')
    steps {
        dsl {
            script('hello-world.dsl')
        }
    }
}
