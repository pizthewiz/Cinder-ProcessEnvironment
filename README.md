# Cinder-ProcessEnvironment
`Cinder-ProcessEnvironment` is a [CinderBlock](http://libcinder.org/docs/welcome/CinderBlocks.html) to access the environment variables of the application process.

### EXAMPLE
```C++
void DisplayApp::setup() {
  // enable file logging if the ENV variable XCODE is not defined
  map<string, string> env = Cinder::ProcessEnvironment::GetEnvironment();
  if (env.count("XCODE") == 0) {
    fs::path filePath = expandPath("~/Desktop/Display.log");
    log::manager()->enableFileLogging(filePath);
  }
}
```
