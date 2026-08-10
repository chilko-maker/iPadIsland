#import <UIKit/UIKit.h>

// 1. Activer la Dynamic Island (System Aperture) dans le SpringBoard
%hook SBSystemApertureController

- (BOOL)isSystemApertureAvailable {
    return YES;
}

%end

%hook SBSystemApertureSettings

- (BOOL)isSystemApertureEnabled {
    return YES;
}

%end

// 2. Activer les notifications & Live Activities (Musique, Appels, Minuteur...)
%hook SBSystemAperturePrototypingProperties

- (BOOL)isSystemApertureEnabled {
    return YES;
}

%end

// 3. Force la prise en charge des alertes système (Bouton Silencieux, Charge, etc.)
%hook SBLockScreenManager

- (BOOL)isSystemApertureSupported {
    return YES;
}

%end
