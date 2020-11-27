name := """SGVial-api"""
organization := "org.lego"

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayMinimalJava)

scalaVersion := "2.13.3"

libraryDependencies ++= Seq(
  guice,
  javaJpa,
  "io.vavr" % "vavr" % "0.10.3",
  "org.postgresql" % "postgresql" % "42.2.5",
  "org.projectlombok" % "lombok" % "1.18.16",
  "org.hibernate" % "hibernate-core" % "5.4.9.Final",
)
PlayKeys.externalizeResourcesExcludes += baseDirectory.value / "conf" / "META-INF" / "META-INF/persistence.xml"