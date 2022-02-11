import CCoz

//Begin tells Coz-Profiler to begin a profiled transaction
public func cozBegin(_ name: String) {
    ccozBegin(name.asCString())
}

//End tells Coz-Profiler to end the profiled transaction
public func cozEnd(_ name: String) {
    ccozEnd(name.asCString())
}

//NamedProgress marks a named progress checkpoint in the span of a profiled transaction
public func cozProgressNamed(_ name: String) {
    ccozProgressNamed(name.asCString())
}

//Progress marks an anonymous progress checkpoint in the span of a profiled transaction.
//Coz will try to pick up the line numbers and filename in this case
public func cozProgress() {
    ccozProgress()
}
