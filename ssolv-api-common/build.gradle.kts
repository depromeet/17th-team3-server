plugins {
    id("java-test-fixtures")
}

apply(plugin = "java-library")

dependencies {
    api(project(":ssolv-global-utils"))
    api(project(":ssolv-domain"))
    api(project(":ssolv-infrastructure"))

    api("org.springframework.boot:spring-boot-starter-web")
    api("org.springframework.boot:spring-boot-starter-security")
    api("org.springframework.boot:spring-boot-starter-validation")
    api("org.springframework.boot:spring-boot-starter-actuator")
    api("org.springframework.boot:spring-boot-starter-data-jpa")

    // JWT 관련
    api("io.jsonwebtoken:jjwt-api:0.12.6")
    runtimeOnly("io.jsonwebtoken:jjwt-impl:0.12.6")
    runtimeOnly("io.jsonwebtoken:jjwt-jackson:0.12.6")

    api("org.springdoc:springdoc-openapi-starter-webmvc-ui:2.8.5")

    // Prometheus 매트릭
    api("io.micrometer:micrometer-registry-prometheus")

    // Tracing (Tempo / OpenTelemetry)
    api("io.micrometer:micrometer-tracing-bridge-otel")
    api("io.opentelemetry:opentelemetry-exporter-otlp")
    api("net.ttddyy.observation:datasource-micrometer-spring-boot:1.0.1")

    // Jackson Kotlin 모듈
    api("com.fasterxml.jackson.module:jackson-module-kotlin")

    // Test Fixtures dependencies
    testFixturesImplementation("org.springframework.boot:spring-boot-starter-test")
    testFixturesImplementation("org.springframework.security:spring-security-test")
    testFixturesImplementation("io.mockk:mockk:1.13.9")
    testFixturesImplementation("com.ninja-squad:springmockk:4.0.2")
}

tasks {
    jar {
        enabled = true
    }
    bootJar {
        enabled = false
    }
}
