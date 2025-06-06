// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import Foundation

extension Notification.Name {
    // add a property to allow the observation of firefox accounts
    public static let FirefoxAccountChanged = Notification.Name("FirefoxAccountChanged")

    public static let FirefoxAccountStateChange = Notification.Name("FirefoxAccountStateChange")

    public static let RegisterForPushNotifications = Notification.Name("RegisterForPushNotifications")

    public static let FirefoxAccountProfileChanged = Notification.Name("FirefoxAccountProfileChanged")

    public static let PrivateDataClearedHistory = Notification.Name("PrivateDataClearedHistory")
    public static let PrivateDataClearedDownloadedFiles = Notification.Name("PrivateDataClearedDownloadedFiles")

    // Fired when the user finishes navigating to a page and the location has changed
    public static let OnLocationChange = Notification.Name("OnLocationChange")

    // MARK: Notification UserInfo Keys

    // Fired when the login synchronizer has finished applying remote changes
    public static let DataRemoteLoginChangesWereApplied = Notification.Name("DataRemoteLoginChangesWereApplied")

    public static let ProfileDidStartSyncing = Notification.Name("ProfileDidStartSyncing")
    public static let ProfileDidFinishSyncing = Notification.Name("ProfileDidFinishSyncing")

    public static let DatabaseWasRecreated = Notification.Name("DatabaseWasRecreated")
    public static let DatabaseWasClosed = Notification.Name("DatabaseWasClosed")
    public static let DatabaseWasReopened = Notification.Name("DatabaseWasReopened")

    public static let RustPlacesOpened = Notification.Name("RustPlacesOpened")

    public static let DynamicFontChanged = Notification.Name("DynamicFontChanged")

    public static let ReachabilityStatusChanged = Notification.Name("ReachabilityStatusChanged")

    public static let HomePanelPrefsChanged = Notification.Name("HomePanelPrefsChanged")

    public static let TrackingProtectionViewControllerDidDismiss =
    Notification.Name("TrackingProtectionViewControllerDidDismiss")

    public static let TrackingProtectionViewControllerDidAppear =
    Notification.Name("TrackingProtectionViewControllerDidAppear")

    public static let FileDidDownload = Notification.Name("FileDidDownload")

    public static let SearchBarPositionDidChange = Notification.Name("SearchBarPositionDidChange")

    public static let WallpaperDidChange = Notification.Name("WallpaperDidChange")

    public static let TopTabsTabClosed = Notification.Name("TopTabsTabClosed")

    public static let ShowHomepage = Notification.Name("ShowHomepage")

    public static let StopDownloads = Notification.Name("StopDownloads")

    public static let TabsTrayDidClose = Notification.Name("TabsTrayDidClose")

    public static let TabsTrayDidSelectHomeTab = Notification.Name("TabsTrayDidSelectHomeTab")

    public static let TabsPrivacyModeChanged = Notification.Name("TabsPrivacyModeChanged")

    public static let OpenClearRecentHistory = Notification.Name("OpenClearRecentHistory")

    public static let RemoteTabNotificationTapped = Notification.Name("RemoteTabNotificationTapped")

    public static let OpenRecentlyClosedTabs = Notification.Name("OpenRecentlyClosedTabs")

    public static let LibraryPanelStateDidChange = Notification.Name("LibraryPanelStateDidChange")

    public static let LibraryPanelBookmarkTitleChanged = Notification.Name("LibraryPanelBookmarkTitleChanged")

    public static let SearchSettingsChanged = Notification.Name("SearchSettingsChanged")

    public static let SponsoredAndNonSponsoredSuggestionsChanged = Notification.Name("SponsoredAndNonSponsoredSuggestions")

    public static let TabDataUpdated = Notification.Name("TabDataUpdated")

    public static let PendingBlobDownloadAddedToQueue = Notification.Name("PendingBlobDownloadAddedToQueue")

    public static let TabMimeTypeDidSet = Notification.Name("TabMimeTypeDidSet")

    public static let ThemeDidChange = Notification.Name("ThemeDidChange")

    // MARK: Web Engine

    public static let ReaderModeSessionChanged = Notification.Name("ReaderModeSessionChanged")

    // MARK: Tab manager

    // Tab manager creates a toast for undo recently closed tabs and a notification is
    // fired when user taps on undo button on Toast
    public static let DidTapUndoCloseAllTabToast = Notification.Name("DidTapUndoCloseAllTabToast")

    // MARK: Downloads

    // General notification posted when a file has been deleted from the downloads manager
    public static let DownloadPanelFileWasDeleted = Notification.Name("DownloadPanelFileWasDeleted")

    // MARK: Settings

    public static let BlockPopup = Notification.Name("BlockPopup")
    public static let AutoPlayChanged = Notification.Name("AutoPlayChanged")
    public static let BookmarksUpdated = Notification.Name("BookmarksUpdated")
    public static let ReadingListUpdated = Notification.Name("ReadingListUpdated")
    public static let TopSitesUpdated = Notification.Name("TopSitesUpdated")
    public static let PageZoomLevelUpdated = Notification.Name("PageZoomLevelUpdated")
    public static let PageZoomSettingsChanged = Notification.Name("PageZoomSettingsChanged")

    // Search
    public static let DefaultSearchEngineUpdated = Notification.Name("DefaultSearchEngineUpdated")
    public static let SearchSettingsDidUpdateDefaultSearchEngine =
    Notification.Name("SearchSettingsDidUpdateDefaultSearchEngine")
}
