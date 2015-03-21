# Cinder-ProcessEnvironment
`Cinder-ProcessEnvironment` is a [CinderBlock](http://libcinder.org/docs/welcome/CinderBlocks.html) to access the environment variables of the application process.

**NOTE** - This is now available in Cinder, see [Utilities.h](https://github.com/cinder/Cinder/blob/glNext/include/cinder/Utilities.h#L68):
```C++
std::map<std::string, std::string> getEnvironmentVariables();
```
with a Windows implementation as well, see [#744](https://github.com/cinder/Cinder/pull/744) for more detail.

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
