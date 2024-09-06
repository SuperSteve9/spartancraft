plugins {
    id("java-library")
    id("com.github.johnrengelman.shadow") version "6.1.0"
}

group = "net.minecraft"
version = "c0.0.14a_08"

repositories {
    mavenCentral()
}

val natives: Configuration by configurations.creating
natives.isTransitive = true

dependencies {
    implementation(group = "org.lwjgl.lwjgl", name = "lwjgl", version = "2.9.3")
    implementation(group = "org.lwjgl.lwjgl", name = "lwjgl_util", version = "2.9.3")
    natives(group = "org.lwjgl.lwjgl", name = "lwjgl-platform", version = "2.9.3", classifier = "natives-windows")
    natives(group = "net.java.jinput", name = "jinput-platform", version = "2.0.5", classifier = "natives-windows")
}


task("run", JavaExec::class) {
    jvmArgs = listOf("-Dorg.lwjgl.librarypath=${project.projectDir.toPath()}\\run\\natives")
    main = "com.mojang.minecraft.Main"
    classpath = sourceSets["main"].runtimeClasspath
    workingDir("${project.projectDir.toPath()}\\run")
    dependsOn("extractNatives")
}

task("extractNatives", Copy::class) {
    dependsOn(natives)
    from(natives.map { zipTree(it) })
    into("${project.projectDir.toPath()}\\run\\natives")
}

tasks.withType<com.github.jengelman.gradle.plugins.shadow.tasks.ShadowJar> {
    archiveClassifier.set("")
    mergeServiceFiles()
    manifest {
        attributes["Main-Class"] = "com.mojang.minecraft.Main" // Ensure the main class is specified here
    }
}
