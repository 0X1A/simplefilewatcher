// Copyright (c) 2009 James Wynn <james@jameswynn.com>
// All rights reserved. This file is part of simplefilewatcher, distributed
// under the MIT license. For full terms please see the LICENSE file.

#include "FileWatcher.h"
#include "FileWatcherImpl.h"

#if FILEWATCHER_PLATFORM == FILEWATCHER_PLATFORM_WIN32
#include "FileWatcherWin32.h"
#define FILEWATCHER_IMPL FileWatcherWin32
#elif FILEWATCHER_PLATFORM == FILEWATCHER_PLATFORM_KQUEUE
#include "FileWatcherOSX.h"
#define FILEWATCHER_IMPL FileWatcherOSX
#elif FILEWATCHER_PLATFORM == FILEWATCHER_PLATFORM_LINUX
#include "FileWatcherLinux.h"
#define FILEWATCHER_IMPL FileWatcherLinux
#endif

namespace FW
{

//--------
FileWatcher::FileWatcher() { mImpl.reset(new FILEWATCHER_IMPL()); }

//--------
FileWatcher::~FileWatcher()
{
	mImpl.reset();
}

//--------
WatchID FileWatcher::addWatch(const String &directory,
			      FileWatchListener *watcher)
{
	return mImpl->addWatch(directory, watcher, false);
}

//--------
WatchID FileWatcher::addWatch(const String &directory,
			      FileWatchListener *watcher, bool recursive)
{
	return mImpl->addWatch(directory, watcher, recursive);
}

//--------
void FileWatcher::removeWatch(const String &directory)
{
	mImpl->removeWatch(directory);
}

//--------
void FileWatcher::removeWatch(WatchID watchid) { mImpl->removeWatch(watchid); }

//--------
void FileWatcher::update() { mImpl->update(); }

}; // namespace FW
