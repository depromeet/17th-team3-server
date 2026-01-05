dependencies {
    implementation(project(":ssolv-global-utils"))

    implementation("org.springframework.boot:spring-boot-starter")
    implementation("jakarta.persistence:jakarta.persistence-api:3.1.0")
    implementation("org.hibernate.orm:hibernate-core")
    implementation("org.springdoc:springdoc-openapi-starter-webmvc-ui:2.8.5")

    testImplementation("org.junit.jupiter:junit-jupiter")
    testImplementation("org.jetbrains.kotlin:kotlin-test-junit5")
}

tasks {
    jar {
        enabled = true
    }
    bootJar {
        enabled = false
    }
}
