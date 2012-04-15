.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$DummyAnimation;,
        Lcom/android/server/wm/WindowManagerService$PolicyThread;,
        Lcom/android/server/wm/WindowManagerService$WMThread;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field static final CUSTOM_SCREEN_ROTATION:Z = false

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_ORIENTATION:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_BOOT:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DRAG:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_SCREENSHOT:Z = false

.field static final DEBUG_SCREEN_ON:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_TOKEN_MOVEMENT:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field static final FREEZE_LAYER:I = 0x1e8481

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAYER_OFFSET_BLUR:I = 0x2

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final MASK_LAYER:I = 0x1e8480

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field final mAllowBootMessages:Z

.field private mAllowDisableKeyguard:I

.field mAltOrientation:Z

.field mAnimationPending:Z

.field mAppDisplayHeight:I

.field mAppDisplayWidth:I

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBaseDisplayHeight:I

.field mBaseDisplayWidth:I

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurDisplayHeight:I

.field mCurDisplayWidth:I

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mDeferredRotationPauseCount:I

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mDragInputHandler:Landroid/view/InputHandler;

.field mDragState:Lcom/android/server/wm/DragState;

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFakeWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/FakeWindowImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mForceDisplayEnabled:Z

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardEnabled:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/wm/Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mInputManager:Lcom/android/server/wm/InputManager;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLastWindowForcedOrientation:I

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field mRebuildTmp:[Lcom/android/server/wm/WindowState;

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSystemBooted:Z

.field private mTVOutOn:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/os/IRemoteCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/wm/Watermark;

.field mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

.field mWindowAnimationScale:F

.field private mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6531
    new-instance v0, Lcom/android/server/wm/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V
    .registers 12
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "showBootMsgs"

    .prologue
    .line 759
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 260
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    .line 265
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .line 267
    new-instance v4, Lcom/android/server/wm/WindowManagerService$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const-string v6, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    .line 286
    new-instance v4, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 322
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 328
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 333
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 340
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 359
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 364
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 370
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    .line 377
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 382
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 387
    const/16 v4, 0x14

    new-array v4, v4, [Lcom/android/server/wm/WindowState;

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 392
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 398
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 416
    const/16 v4, 0x14

    new-array v4, v4, [Lcom/android/server/wm/WindowState;

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    .line 421
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 430
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 432
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 435
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 436
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 437
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 438
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 450
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    .line 451
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 452
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 453
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 454
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 455
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 456
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 457
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 458
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 460
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 461
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    .line 462
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    .line 463
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 467
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 468
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 469
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 470
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 471
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 472
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 473
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    .line 475
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 477
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 482
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 494
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 498
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 499
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 500
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 501
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 502
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 503
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 504
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    .line 506
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    .line 510
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 511
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 512
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 513
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 515
    new-instance v4, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v4, p0}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 517
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 518
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 522
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 526
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 527
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 533
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 537
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 540
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 543
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 548
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 549
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 551
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 552
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 553
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    .line 554
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    .line 565
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 569
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mTVOutOn:Z

    .line 571
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 572
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 582
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 583
    new-instance v4, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDragInputHandler:Landroid/view/InputHandler;

    .line 644
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 647
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 649
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 656
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 6252
    new-instance v4, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v4, p0}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 7364
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 760
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 761
    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    .line 762
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    .line 763
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 766
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 767
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 768
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 769
    .local v2, pmc:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "SCREEN_FROZEN"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 771
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 773
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 774
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 777
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_animation_scale"

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "transition_animation_scale"

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 783
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 784
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v4, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 786
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 787
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_238

    .line 789
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mTVOutOn:Z

    .line 793
    :cond_238
    const/16 v4, 0xa

    const-string v5, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 795
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 797
    new-instance v4, Lcom/android/server/wm/InputManager;

    invoke-direct {v4, p1, p0}, Lcom/android/server/wm/InputManager;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    .line 799
    new-instance v3, Lcom/android/server/wm/WindowManagerService$PolicyThread;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v3, v4, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 800
    .local v3, thr:Lcom/android/server/wm/WindowManagerService$PolicyThread;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService$PolicyThread;->start()V

    .line 802
    monitor-enter v3

    .line 803
    :goto_25a
    :try_start_25a
    iget-boolean v4, v3, Lcom/android/server/wm/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_25c
    .catchall {:try_start_25a .. :try_end_25c} :catchall_272

    if-nez v4, :cond_264

    .line 805
    :try_start_25e
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_261
    .catchall {:try_start_25e .. :try_end_261} :catchall_272
    .catch Ljava/lang/InterruptedException; {:try_start_25e .. :try_end_261} :catch_262

    goto :goto_25a

    .line 806
    :catch_262
    move-exception v4

    goto :goto_25a

    .line 809
    :cond_264
    :try_start_264
    monitor-exit v3
    :try_end_265
    .catchall {:try_start_264 .. :try_end_265} :catchall_272

    .line 811
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v4}, Lcom/android/server/wm/InputManager;->start()V

    .line 814
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 815
    return-void

    .line 809
    :catchall_272
    move-exception v4

    :try_start_273
    monitor-exit v3
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_272

    throw v4
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZLcom/android/server/wm/WindowManagerService$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/WindowManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mTVOutOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mTVOutOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 31
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 869
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 870
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v20, v0

    .line 871
    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 873
    .local v14, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 874
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 876
    .local v8, attached:Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_236

    .line 877
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 878
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_207

    .line 879
    add-int/lit8 v12, v21, -0x1

    .line 880
    .local v12, index:I
    if-ltz v12, :cond_df

    .line 884
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8a

    .line 886
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 887
    const/16 v21, 0x0

    .line 1008
    .end local v12           #index:I
    :cond_5b
    :goto_5b
    if-eqz p2, :cond_6c

    .line 1010
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1068
    .end local v21           #tokenWindowsPos:I
    :cond_6c
    :goto_6c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_89

    if-eqz p2, :cond_89

    .line 1069
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_89
    return-void

    .line 889
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_8a
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 890
    .local v7, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v7, :cond_c0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c0

    .line 892
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 893
    add-int/lit8 v21, v21, -0x1

    goto :goto_5b

    .line 895
    :cond_c0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I

    move-result v16

    .line 896
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_5b

    .line 905
    add-int/lit8 v26, v16, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 906
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5b

    .line 916
    .end local v7           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v16           #newIdx:I
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 917
    .local v4, NA:I
    const/16 v17, 0x0

    .line 918
    .local v17, pos:Lcom/android/server/wm/WindowState;
    add-int/lit8 v11, v4, -0x1

    .local v11, i:I
    :goto_ed
    if-ltz v11, :cond_105

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .line 920
    .local v19, t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_148

    .line 921
    add-int/lit8 v11, v11, -0x1

    .line 935
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_105
    if-eqz v17, :cond_16f

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 938
    .local v7, atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_13d

    .line 939
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 940
    .local v5, NC:I
    if-lez v5, :cond_13d

    .line 941
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 942
    .local v9, bottom:Lcom/android/server/wm/WindowState;
    iget v0, v9, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_13d

    .line 943
    move-object/from16 v17, v9

    .line 947
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/wm/WindowState;
    :cond_13d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_5b

    .line 928
    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    :cond_148
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_16a

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_16a

    .line 929
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 918
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_16a
    add-int/lit8 v11, v11, -0x1

    goto :goto_ed

    .line 958
    .local v6, NW:I
    :cond_16d
    add-int/lit8 v11, v11, -0x1

    .line 951
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    :cond_16f
    if-ltz v11, :cond_199

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/AppWindowToken;

    .line 953
    .restart local v19       #t:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 954
    .restart local v6       #NW:I
    if-lez v6, :cond_16d

    .line 955
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v6, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 960
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/wm/AppWindowToken;
    .restart local v17       #pos:Lcom/android/server/wm/WindowState;
    :cond_199
    if-eqz v17, :cond_1de

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 964
    .restart local v7       #atoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_1d3

    .line 965
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 966
    .restart local v5       #NC:I
    if-lez v5, :cond_1d3

    .line 967
    iget-object v0, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v5, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 968
    .local v22, top:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_1d3

    .line 969
    move-object/from16 v17, v22

    .line 973
    .end local v5           #NC:I
    .end local v22           #top:Lcom/android/server/wm/WindowState;
    :cond_1d3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_5b

    .line 976
    .end local v7           #atoken:Lcom/android/server/wm/WindowToken;
    :cond_1de
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 977
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_1e3
    if-ge v11, v3, :cond_1f5

    .line 978
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 979
    .local v23, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v0, v15, :cond_204

    .line 987
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_1f5
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 988
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5b

    .line 977
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    :cond_204
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e3

    .line 994
    .end local v4           #NA:I
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v17           #pos:Lcom/android/server/wm/WindowState;
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_207
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 995
    .restart local v15       #myLayer:I
    add-int/lit8 v11, v3, -0x1

    .restart local v11       #i:I
    :goto_20d
    if-ltz v11, :cond_221

    .line 996
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v0, v15, :cond_233

    .line 997
    add-int/lit8 v11, v11, 0x1

    .line 1001
    :cond_221
    if-gez v11, :cond_224

    const/4 v11, 0x0

    .line 1005
    :cond_224
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1006
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5b

    .line 995
    :cond_233
    add-int/lit8 v11, v11, -0x1

    goto :goto_20d

    .line 1016
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    :cond_236
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1017
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 1018
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 1019
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 1020
    .local v25, windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_24b
    if-ge v11, v4, :cond_28d

    .line 1021
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    .line 1022
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 1023
    .local v24, wSublayer:I
    move/from16 v0, v24

    if-lt v0, v13, :cond_269

    .line 1024
    move/from16 v13, v24

    .line 1025
    move-object/from16 v25, v23

    .line 1027
    :cond_269
    if-gez v18, :cond_2a9

    .line 1030
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_2c8

    .line 1031
    if-eqz p2, :cond_280

    .line 1033
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1035
    :cond_280
    if-ltz v24, :cond_284

    move-object/from16 v23, v8

    .end local v23           #w:Lcom/android/server/wm/WindowState;
    :cond_284
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 1052
    .end local v24           #wSublayer:I
    :cond_28d
    :goto_28d
    if-lt v11, v4, :cond_6c

    .line 1053
    if-eqz p2, :cond_29e

    .line 1055
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    :cond_29e
    if-gez v18, :cond_2cb

    .line 1058
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_6c

    .line 1042
    .restart local v23       #w:Lcom/android/server/wm/WindowState;
    .restart local v24       #wSublayer:I
    :cond_2a9
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_2c8

    .line 1043
    if-eqz p2, :cond_2be

    .line 1045
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1047
    :cond_2be
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_28d

    .line 1020
    :cond_2c8
    add-int/lit8 v11, v11, 0x1

    goto :goto_24b

    .line 1060
    .end local v23           #w:Lcom/android/server/wm/WindowState;
    .end local v24           #wSublayer:I
    :cond_2cb
    if-ltz v13, :cond_2d8

    .end local v25           #windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    :goto_2cd
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_6c

    .restart local v25       #windowWithLargestSublayer:Lcom/android/server/wm/WindowState;
    :cond_2d8
    move-object/from16 v25, v8

    goto :goto_2cd
.end method

.method private applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .registers 9
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 3064
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_85

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v2, :cond_85

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 3066
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 3067
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_29

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_1a
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3129
    .local v0, a:Landroid/view/animation/Animation;
    :goto_1e
    if-eqz v0, :cond_23

    .line 3138
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3144
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_23
    :goto_23
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_89

    const/4 v2, 0x1

    :goto_28
    return v2

    .line 3067
    :cond_29
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_1a

    .line 3070
    :cond_2c
    const/4 v1, 0x0

    .line 3071
    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_8c

    .line 3123
    :goto_30
    if-eqz v1, :cond_83

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_36
    goto :goto_1e

    .line 3073
    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_37
    if-eqz p4, :cond_3b

    const/4 v1, 0x4

    .line 3076
    :goto_3a
    goto :goto_30

    .line 3073
    :cond_3b
    const/4 v1, 0x5

    goto :goto_3a

    .line 3078
    :sswitch_3d
    if-eqz p4, :cond_41

    const/4 v1, 0x6

    .line 3081
    :goto_40
    goto :goto_30

    .line 3078
    :cond_41
    const/4 v1, 0x7

    goto :goto_40

    .line 3083
    :sswitch_43
    if-eqz p4, :cond_48

    const/16 v1, 0x8

    .line 3086
    :goto_47
    goto :goto_30

    .line 3083
    :cond_48
    const/16 v1, 0x9

    goto :goto_47

    .line 3088
    :sswitch_4b
    if-eqz p4, :cond_50

    const/16 v1, 0xa

    .line 3091
    :goto_4f
    goto :goto_30

    .line 3088
    :cond_50
    const/16 v1, 0xb

    goto :goto_4f

    .line 3093
    :sswitch_53
    if-eqz p4, :cond_58

    const/16 v1, 0xc

    .line 3096
    :goto_57
    goto :goto_30

    .line 3093
    :cond_58
    const/16 v1, 0xd

    goto :goto_57

    .line 3098
    :sswitch_5b
    if-eqz p4, :cond_60

    const/16 v1, 0xe

    .line 3101
    :goto_5f
    goto :goto_30

    .line 3098
    :cond_60
    const/16 v1, 0xf

    goto :goto_5f

    .line 3103
    :sswitch_63
    if-eqz p4, :cond_68

    const/16 v1, 0x10

    .line 3106
    :goto_67
    goto :goto_30

    .line 3103
    :cond_68
    const/16 v1, 0x11

    goto :goto_67

    .line 3108
    :sswitch_6b
    if-eqz p4, :cond_70

    const/16 v1, 0x12

    .line 3111
    :goto_6f
    goto :goto_30

    .line 3108
    :cond_70
    const/16 v1, 0x13

    goto :goto_6f

    .line 3113
    :sswitch_73
    if-eqz p4, :cond_78

    const/16 v1, 0x14

    .line 3116
    :goto_77
    goto :goto_30

    .line 3113
    :cond_78
    const/16 v1, 0x15

    goto :goto_77

    .line 3118
    :sswitch_7b
    if-eqz p4, :cond_80

    const/16 v1, 0x16

    :goto_7f
    goto :goto_30

    :cond_80
    const/16 v1, 0x17

    goto :goto_7f

    .line 3123
    :cond_83
    const/4 v0, 0x0

    goto :goto_36

    .line 3141
    .end local v1           #animAttr:I
    :cond_85
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAnimation()V

    goto :goto_23

    .line 3144
    :cond_89
    const/4 v2, 0x0

    goto :goto_28

    .line 3071
    nop

    :sswitch_data_8c
    .sparse-switch
        0x1006 -> :sswitch_37
        0x1008 -> :sswitch_43
        0x100a -> :sswitch_53
        0x100d -> :sswitch_63
        0x100e -> :sswitch_73
        0x2007 -> :sswitch_3d
        0x2009 -> :sswitch_4b
        0x200b -> :sswitch_5b
        0x200c -> :sswitch_6b
        0x200f -> :sswitch_7b
    .end sparse-switch
.end method

.method private final assignLayersLocked()V
    .registers 8

    .prologue
    .line 7324
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7325
    .local v0, N:I
    const/4 v1, 0x0

    .line 7326
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 7335
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_65

    .line 7336
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 7337
    .local v4, w:Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_21

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v5, :cond_21

    if-lez v3, :cond_40

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_40

    .line 7339
    :cond_21
    add-int/lit8 v2, v2, 0x5

    .line 7340
    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 7345
    :goto_25
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_46

    .line 7346
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 7352
    :goto_32
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_59

    .line 7353
    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 7335
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 7342
    :cond_40
    iget v2, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    .line 7343
    iput v2, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_25

    .line 7347
    :cond_46
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_54

    .line 7348
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_32

    .line 7350
    :cond_54
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_32

    .line 7354
    :cond_59
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_3d

    .line 7355
    iget v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_3d

    .line 7362
    .end local v4           #w:Lcom/android/server/wm/WindowState;
    :cond_65
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 1074
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 1076
    .local v0, fl:I
    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 1090
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 1092
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I
    .registers 17
    .parameter "rotated"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 6037
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 6038
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 6040
    if-eqz p1, :cond_2f

    .line 6041
    move/from16 v4, p4

    .line 6042
    .local v4, unrotDw:I
    move v5, p3

    .line 6047
    .local v5, unrotDh:I
    :goto_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6048
    .local v7, sw:I
    const/4 v8, 0x1

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6049
    const/4 v2, 0x2

    move-object v0, p0

    move v1, v7

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6050
    const/4 v8, 0x3

    move-object v6, p0

    move-object v9, p2

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/WindowManagerService;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v7

    .line 6051
    return v7

    .line 6044
    .end local v4           #unrotDw:I
    .end local v5           #unrotDh:I
    .end local v7           #sw:I
    :cond_2f
    move v4, p3

    .line 6045
    .restart local v4       #unrotDw:I
    move/from16 v5, p4

    .restart local v5       #unrotDh:I
    goto :goto_c
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 9171
    const/4 v4, 0x0

    .line 9174
    .local v4, result:Lcom/android/server/wm/WindowState;
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 9175
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 9176
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_32

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    move-object v1, v7

    .line 9179
    .local v1, nextApp:Lcom/android/server/wm/WindowToken;
    :goto_1d
    if-ltz v0, :cond_67

    .line 9180
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 9188
    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v5, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 9191
    .local v5, thisApp:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_34

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v7, :cond_34

    .line 9192
    add-int/lit8 v0, v0, -0x1

    .line 9193
    goto :goto_1d

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_32
    move-object v1, v8

    .line 9176
    goto :goto_1d

    .line 9199
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_34
    if-eqz v5, :cond_60

    if-eqz v1, :cond_60

    if-eq v5, v1, :cond_60

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_60

    .line 9201
    move v3, v2

    .line 9202
    .local v3, origAppIndex:I
    :cond_42
    if-lez v2, :cond_55

    .line 9203
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v7, :cond_49

    .line 9236
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :goto_48
    return-object v8

    .line 9210
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_49
    add-int/lit8 v2, v2, -0x1

    .line 9211
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 9212
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    if-ne v1, v5, :cond_42

    .line 9216
    :cond_55
    if-eq v5, v1, :cond_60

    .line 9220
    move v2, v3

    .line 9221
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/wm/WindowToken;
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 9226
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/wm/WindowToken;
    :cond_60
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 9229
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/wm/AppWindowToken;
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_67
    move-object v8, v4

    .line 9236
    goto :goto_48

    .line 9233
    .restart local v5       #thisApp:Lcom/android/server/wm/AppWindowToken;
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_69
    add-int/lit8 v0, v0, -0x1

    .line 9234
    goto :goto_1d
.end method

.method private computeSmallestWidthAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V
    .registers 21
    .parameter "rotated"
    .parameter "dw"
    .parameter "dh"
    .parameter "density"
    .parameter "outConfig"

    .prologue
    .line 6003
    if-eqz p1, :cond_60

    .line 6004
    move/from16 v2, p3

    .line 6005
    .local v2, unrotDw:I
    move/from16 v6, p2

    .line 6010
    .local v6, unrotDh:I
    :goto_6
    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v4, p4

    move v5, v2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 6011
    .local v8, sw:I
    const/4 v9, 0x1

    move-object v7, p0

    move/from16 v10, p4

    move v11, v6

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 6012
    const/4 v9, 0x2

    move-object v7, p0

    move/from16 v10, p4

    move v11, v2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 6013
    const/4 v9, 0x3

    move-object v7, p0

    move/from16 v10, p4

    move v11, v6

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->reduceConfigWidthSize(IIFII)I

    move-result v8

    .line 6014
    const/16 v10, 0x24

    .line 6016
    .local v10, sl:I
    const/4 v11, 0x0

    move-object v9, p0

    move/from16 v12, p4

    move v13, v2

    move v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 6017
    const/4 v11, 0x1

    move-object v9, p0

    move/from16 v12, p4

    move v13, v6

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 6018
    const/4 v11, 0x2

    move-object v9, p0

    move/from16 v12, p4

    move v13, v2

    move v14, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 6019
    const/4 v11, 0x3

    move-object v9, p0

    move/from16 v12, p4

    move v13, v6

    move v14, v2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/wm/WindowManagerService;->reduceConfigLayout(IIFII)I

    move-result v10

    .line 6020
    move-object/from16 v0, p5

    iput v8, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 6021
    move-object/from16 v0, p5

    iput v10, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 6022
    return-void

    .line 6007
    .end local v2           #unrotDw:I
    .end local v6           #unrotDh:I
    .end local v8           #sw:I
    .end local v10           #sl:I
    :cond_60
    move/from16 v2, p2

    .line 6008
    .restart local v2       #unrotDw:I
    move/from16 v6, p3

    .restart local v6       #unrotDh:I
    goto :goto_6
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/wm/WindowState;)I
    .registers 9
    .parameter "win"

    .prologue
    const/4 v4, -0x1

    .line 854
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 855
    .local v2, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 856
    .local v1, jmax:I
    if-nez v1, :cond_b

    move v0, v4

    .line 865
    :cond_a
    :goto_a
    return v0

    .line 859
    :cond_b
    add-int/lit8 v0, v1, -0x1

    .local v0, j:I
    :goto_d
    if-ltz v0, :cond_1e

    .line 860
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 861
    .local v3, wentry:Lcom/android/server/wm/WindowState;
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_a

    .line 859
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .end local v3           #wentry:Lcom/android/server/wm/WindowState;
    :cond_1e
    move v0, v4

    .line 865
    goto :goto_a
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .registers 8
    .parameter "hashCode"

    .prologue
    .line 5858
    const/4 v4, -0x1

    if-ne p1, v4, :cond_8

    .line 5859
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5874
    :goto_7
    return-object v2

    .line 5862
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5863
    :try_start_b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 5864
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5866
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_28

    .line 5867
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5868
    .local v2, w:Lcom/android/server/wm/WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 5869
    monitor-exit v5

    goto :goto_7

    .line 5872
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    .end local v3           #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_22
    move-exception v4

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v4

    .line 5866
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    .restart local v3       #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 5872
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_28
    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_22

    .line 5874
    const/4 v2, 0x0

    goto :goto_7
.end method

.method private findWindowOffsetLocked(I)I
    .registers 11
    .parameter "tokenPos"

    .prologue
    .line 4274
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4276
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_24

    .line 4277
    move v2, v0

    .line 4278
    .local v2, i:I
    :cond_f
    if-lez v2, :cond_24

    .line 4279
    add-int/lit8 v2, v2, -0x1

    .line 4280
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4281
    .local v5, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 4282
    add-int/lit8 v7, v2, 0x1

    .line 4327
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :goto_23
    return v7

    .line 4287
    :cond_24
    :goto_24
    if-lez p1, :cond_86

    .line 4290
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 4293
    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_37

    .line 4296
    add-int/lit8 p1, p1, -0x1

    .line 4297
    goto :goto_24

    .line 4299
    :cond_37
    iget-object v7, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4300
    .restart local v2       #i:I
    :cond_3d
    if-lez v2, :cond_83

    .line 4301
    add-int/lit8 v2, v2, -0x1

    .line 4302
    iget-object v7, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 4303
    .restart local v5       #win:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4304
    .local v3, j:I
    :cond_4f
    if-lez v3, :cond_71

    .line 4305
    add-int/lit8 v3, v3, -0x1

    .line 4306
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4307
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v7, :cond_4f

    .line 4308
    add-int/lit8 v4, v0, -0x1

    .local v4, pos:I
    :goto_61
    if-ltz v4, :cond_4f

    .line 4309
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6e

    .line 4312
    add-int/lit8 v7, v4, 0x1

    goto :goto_23

    .line 4308
    :cond_6e
    add-int/lit8 v4, v4, -0x1

    goto :goto_61

    .line 4317
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    .end local v4           #pos:I
    :cond_71
    add-int/lit8 v4, v0, -0x1

    .restart local v4       #pos:I
    :goto_73
    if-ltz v4, :cond_3d

    .line 4318
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_80

    .line 4320
    add-int/lit8 v7, v4, 0x1

    goto :goto_23

    .line 4317
    :cond_80
    add-int/lit8 v4, v4, -0x1

    goto :goto_73

    .line 4324
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/wm/WindowState;
    :cond_83
    add-int/lit8 p1, p1, -0x1

    .line 4325
    goto :goto_24

    .line 4327
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_86
    const/4 v7, 0x0

    goto :goto_23
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V
    .registers 4
    .parameter "updateInputWindows"

    .prologue
    .line 9167
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 9168
    return-void
.end method

.method static fixScale(F)F
    .registers 2
    .parameter "scale"

    .prologue
    .line 4670
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_b

    const/4 p0, 0x0

    .line 4672
    :cond_6
    :goto_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 4671
    :cond_b
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    const/high16 p0, 0x41a0

    goto :goto_6
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .parameter "lp"

    .prologue
    .line 2924
    if-eqz p1, :cond_25

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_25

    .line 2928
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2929
    .local v0, packageName:Ljava/lang/String;
    :goto_c
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2930
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_17

    .line 2931
    const-string v0, "android"

    .line 2935
    :cond_17
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2938
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_21
    return-object v2

    .line 2928
    :cond_22
    const-string v0, "android"

    goto :goto_c

    .line 2938
    :cond_25
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 5
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2944
    if-eqz p1, :cond_16

    .line 2945
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_b

    .line 2946
    const-string p1, "android"

    .line 2950
    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 2953
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .prologue
    .line 6461
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6462
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 6463
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 2

    .prologue
    .line 6467
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 8
    .parameter "tokens"
    .parameter "index"
    .parameter "defUnits"
    .parameter "defDps"
    .parameter "dm"

    .prologue
    .line 9354
    array-length v2, p0

    if-ge p1, v2, :cond_13

    .line 9355
    aget-object v0, p0, p1

    .line 9356
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 9358
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    move-result v1

    .line 9368
    .end local v0           #str:Ljava/lang/String;
    :goto_11
    return v1

    .line 9360
    .restart local v0       #str:Ljava/lang/String;
    :catch_12
    move-exception v2

    .line 9364
    .end local v0           #str:Ljava/lang/String;
    :cond_13
    if-nez p2, :cond_17

    move v1, p3

    .line 9365
    goto :goto_11

    .line 9367
    :cond_17
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 9368
    .local v1, val:I
    goto :goto_11
.end method

.method private isSystemSecure()Z
    .registers 4

    .prologue
    .line 5573
    const-string v0, "1"

    const-string v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "0"

    const-string v1, "ro.debuggable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 3027
    const/4 v0, 0x0

    .line 3028
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3029
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 3030
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 3031
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 3032
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 3033
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3036
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_14
    if-eqz v0, :cond_1b

    .line 3037
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 3039
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 3043
    const/4 v0, 0x0

    .line 3044
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3045
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_e

    .line 3046
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 3047
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_e

    .line 3048
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 3049
    move v0, p2

    .line 3052
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_e
    if-eqz v0, :cond_15

    .line 3053
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 3055
    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 6
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    .line 2403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2405
    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_3d

    .line 2406
    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2410
    :goto_3c
    return-void

    .line 2408
    :cond_3d
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;
    .registers 6
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"
    .parameter "allowBootMsgs"

    .prologue
    .line 663
    new-instance v0, Lcom/android/server/wm/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)V

    .line 664
    .local v0, thr:Lcom/android/server/wm/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$WMThread;->start()V

    .line 666
    monitor-enter v0

    .line 667
    :goto_9
    :try_start_9
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_17

    if-nez v1, :cond_13

    .line 669
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_9

    .line 670
    :catch_11
    move-exception v1

    goto :goto_9

    .line 673
    :cond_13
    :try_start_13
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$WMThread;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-exit v0

    return-object v1

    .line 674
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V
    .registers 7
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    const/4 v2, 0x0

    .line 4433
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    .line 4436
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .line 4439
    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v0

    .line 4441
    if-eqz p3, :cond_28

    .line 4442
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4443
    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 4445
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 4447
    :cond_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4448
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4449
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4451
    :cond_28
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .registers 10
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v6, 0x0

    .line 4455
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4457
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_1c

    .line 4458
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4459
    .local v3, token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_19

    .line 4460
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    .line 4457
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4465
    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 4468
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_38

    .line 4469
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4470
    .restart local v3       #token:Lcom/android/server/wm/WindowToken;
    if-eqz v3, :cond_35

    .line 4471
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 4468
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 4475
    .end local v3           #token:Lcom/android/server/wm/WindowToken;
    :cond_38
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4476
    const/4 v4, 0x3

    invoke-direct {p0, v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v4

    if-nez v4, :cond_47

    .line 4478
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 4480
    :cond_47
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4481
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4482
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4485
    return-void
.end method

.method private notifyFocusChanged()V
    .registers 6

    .prologue
    .line 5844
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5845
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5846
    monitor-exit v4

    .line 5855
    :cond_c
    return-void

    .line 5848
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5849
    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5850
    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 5851
    array-length v0, v2

    .line 5852
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_c

    .line 5853
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 5852
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 5850
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method private notifyWindowsChanged()V
    .registers 6

    .prologue
    .line 5829
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5830
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5831
    monitor-exit v4

    .line 5840
    :cond_c
    return-void

    .line 5833
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5834
    .local v2, windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 5835
    .restart local v2       #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 5836
    array-length v0, v2

    .line 5837
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_c

    .line 5838
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 5837
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 5835
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 7366
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-eqz v7, :cond_e

    .line 7370
    const-string v7, "WindowManager"

    const-string v8, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7446
    :cond_d
    :goto_d
    return-void

    .line 7374
    :cond_e
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v7, :cond_d

    .line 7381
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v7, :cond_d

    .line 7386
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7387
    const/4 v3, 0x0

    .line 7390
    .local v3, recoveringMemory:Z
    :try_start_19
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_65

    .line 7391
    const/4 v3, 0x1

    .line 7393
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4f

    .line 7394
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 7395
    .local v6, ws:Lcom/android/server/wm/WindowState;
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7396
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 7393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 7398
    .end local v6           #ws:Lcom/android/server/wm/WindowState;
    :cond_4f
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 7399
    const-string v7, "WindowManager"

    const-string v8, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7400
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    .line 7401
    .local v4, tmp:Ljava/lang/Object;
    monitor-enter v4
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_5f} :catch_99

    .line 7403
    const-wide/16 v7, 0xfa

    :try_start_61
    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_96
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_e9

    .line 7406
    :goto_64
    :try_start_64
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_96

    .line 7413
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :cond_65
    :goto_65
    :try_start_65
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 7415
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7416
    .local v0, N:I
    if-lez v0, :cond_dc

    .line 7417
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v7, v7

    if-ge v7, v0, :cond_7b

    .line 7418
    add-int/lit8 v7, v0, 0xa

    new-array v7, v7, [Lcom/android/server/wm/WindowState;

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 7420
    :cond_7b
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7421
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 7422
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_88
    if-ge v2, v0, :cond_a2

    .line 7423
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v5, v7, v2

    .line 7424
    .local v5, w:Lcom/android/server/wm/WindowState;
    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v7, v5}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_93} :catch_d0

    .line 7422
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 7406
    .end local v0           #N:I
    .end local v5           #w:Lcom/android/server/wm/WindowState;
    .restart local v4       #tmp:Ljava/lang/Object;
    :catchall_96
    move-exception v7

    :try_start_97
    monitor-exit v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    :try_start_98
    throw v7
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_99} :catch_99

    .line 7408
    .end local v2           #i:I
    .end local v4           #tmp:Ljava/lang/Object;
    :catch_99
    move-exception v1

    .line 7409
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while force removing for memory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 7427
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_a2
    const/4 v7, 0x0

    :try_start_a3
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7428
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7429
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7430
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 7438
    .end local v2           #i:I
    :cond_ae
    :goto_ae
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 7439
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7440
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_ce
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_ce} :catch_d0

    goto/16 :goto_d

    .line 7442
    .end local v0           #N:I
    :catch_d0
    move-exception v1

    .line 7443
    .restart local v1       #e:Ljava/lang/RuntimeException;
    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7444
    const-string v7, "WindowManager"

    const-string v8, "Unhandled exception while laying out windows"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 7433
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #N:I
    :cond_dc
    const/4 v7, 0x0

    :try_start_dd
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    .line 7434
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v7, :cond_ae

    .line 7435
    const-wide/16 v7, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_e8
    .catch Ljava/lang/RuntimeException; {:try_start_dd .. :try_end_e8} :catch_d0

    goto :goto_ae

    .line 7404
    .end local v0           #N:I
    .restart local v2       #i:I
    .restart local v4       #tmp:Ljava/lang/Object;
    :catch_e9
    move-exception v7

    goto/16 :goto_64
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .registers 96
    .parameter "recoveringMemory"

    .prologue
    .line 7593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v5, :cond_e

    .line 7594
    const-string v5, "WindowManager"

    const-string v8, "skipping performLayoutAndPlaceSurfacesLockedInner with no mDisplay"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8921
    :goto_d
    return-void

    .line 7598
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v42

    .line 7599
    .local v42, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move/from16 v48, v0

    .line 7600
    .local v48, dw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v44, v0

    .line 7601
    .local v44, dh:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v59, v0

    .line 7602
    .local v59, innerDw:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v58, v0

    .line 7606
    .local v58, innerDh:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v5, :cond_3c

    .line 7607
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7608
    const/4 v5, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 7613
    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    .local v57, i:I
    :goto_46
    if-ltz v57, :cond_5a

    .line 7614
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 7613
    add-int/lit8 v57, v57, -0x1

    goto :goto_46

    .line 7618
    :cond_5a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_64
    if-ltz v57, :cond_78

    .line 7619
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 7618
    add-int/lit8 v57, v57, -0x1

    goto :goto_64

    .line 7622
    :cond_78
    const/16 v69, 0x1

    .line 7623
    .local v69, orientationChangeComplete:Z
    const/16 v56, 0x0

    .line 7624
    .local v56, holdScreen:Lcom/android/server/wm/Session;
    const/high16 v72, -0x4080

    .line 7625
    .local v72, screenBrightness:F
    const/high16 v35, -0x4080

    .line 7626
    .local v35, buttonBrightness:F
    const/16 v50, 0x0

    .line 7627
    .local v50, focusDisplayed:Z
    const/16 v29, 0x0

    .line 7628
    .local v29, animating:Z
    const/16 v41, 0x0

    .line 7629
    .local v41, createWatermark:Z
    const/16 v82, 0x0

    .line 7630
    .local v82, updateRotation:Z
    const/16 v73, 0x0

    .line 7632
    .local v73, screenRotationFinished:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    if-nez v5, :cond_9b

    .line 7633
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 7634
    const/16 v41, 0x1

    .line 7640
    :cond_9b
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 7642
    if-eqz v41, :cond_a3

    .line 7643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->createWatermark()V

    .line 7645
    :cond_a3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_b4

    .line 7646
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 7648
    :cond_b4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v5, :cond_c5

    .line 7649
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 7653
    :cond_c5
    const/16 v85, 0x0

    .line 7654
    .local v85, wallpaperForceHidingChanged:Z
    const/16 v71, 0x0

    .line 7655
    .local v71, repeats:I
    const/16 v38, 0x0

    .line 7658
    .local v38, changes:I
    :cond_cb
    add-int/lit8 v71, v71, 0x1

    .line 7659
    const/4 v5, 0x6

    move/from16 v0, v71

    if-le v0, v5, :cond_3c0

    .line 7660
    :try_start_d2
    const-string v5, "WindowManager"

    const-string v8, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7661
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 8324
    :goto_de
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_c45

    const/16 v74, 0x1

    .line 8326
    .local v74, someoneLosingFocus:Z
    :goto_ea
    const/16 v65, 0x0

    .line 8327
    .local v65, obscured:Z
    const/16 v34, 0x0

    .line 8328
    .local v34, blurring:Z
    const/16 v46, 0x0

    .line 8329
    .local v46, dimming:Z
    const/16 v40, 0x0

    .line 8330
    .local v40, covered:Z
    const/16 v76, 0x0

    .line 8332
    .local v76, syswin:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 8334
    .local v19, N:I
    add-int/lit8 v57, v19, -0x1

    :goto_fe
    if-ltz v57, :cond_f7c

    .line 8335
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8337
    .local v83, w:Lcom/android/server/wm/WindowState;
    const/16 v47, 0x0

    .line 8338
    .local v47, displayed:Z
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 8339
    .local v32, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v31, v0

    .line 8341
    .local v31, attrFlags:I
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_eac

    .line 8356
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    .line 8361
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_1ce

    .line 8363
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_c49

    .line 8366
    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v88, v0

    .line 8367
    .local v88, width:I
    move-object/from16 v0, v83

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v55, v0

    .line 8373
    .local v55, height:I
    :goto_143
    const/4 v5, 0x1

    move/from16 v0, v88

    if-ge v0, v5, :cond_14a

    .line 8374
    const/16 v88, 0x1

    .line 8376
    :cond_14a
    const/4 v5, 0x1

    move/from16 v0, v55

    if-ge v0, v5, :cond_151

    .line 8377
    const/16 v55, 0x1

    .line 8379
    :cond_151
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    move/from16 v0, v88

    int-to-float v8, v0

    cmpl-float v5, v5, v8

    if-nez v5, :cond_167

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    move/from16 v0, v55

    int-to-float v8, v0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_c5b

    :cond_167
    const/16 v75, 0x1

    .line 8380
    .local v75, surfaceResized:Z
    :goto_169
    if-eqz v75, :cond_179

    .line 8381
    move/from16 v0, v88

    int-to-float v5, v0

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    .line 8382
    move/from16 v0, v55

    int-to-float v5, v0

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    .line 8385
    :cond_179
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_195

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F
    :try_end_191
    .catch Ljava/lang/RuntimeException; {:try_start_d2 .. :try_end_191} :catch_701

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1bc

    .line 8391
    :cond_195
    :try_start_195
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    .line 8392
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    .line 8393
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v8, v10}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_195 .. :try_end_1bc} :catch_c5f

    .line 8404
    :cond_1bc
    :goto_1bc
    if-eqz v75, :cond_1ce

    .line 8408
    const/4 v5, 0x1

    :try_start_1bf
    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    .line 8409
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move/from16 v0, v88

    move/from16 v1, v55

    invoke-virtual {v5, v0, v1}, Landroid/view/Surface;->setSize(II)V
    :try_end_1ce
    .catch Ljava/lang/RuntimeException; {:try_start_1bf .. :try_end_1ce} :catch_cb0

    .line 8423
    .end local v55           #height:I
    .end local v75           #surfaceResized:Z
    .end local v88           #width:I
    :cond_1ce
    :goto_1ce
    :try_start_1ce
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_2a1

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    if-ne v5, v8, :cond_2a1

    .line 8424
    move-object/from16 v0, v83

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf9

    const/4 v5, 0x1

    :goto_1f1
    or-int/2addr v5, v8

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 8426
    move-object/from16 v0, v83

    iget-boolean v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cfc

    const/4 v5, 0x1

    :goto_209
    or-int/2addr v5, v8

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 8428
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v5, v8, :cond_cff

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_22c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_cff

    :cond_22c
    const/16 v39, 0x1

    .line 8439
    .local v39, configChanged:Z
    :goto_22e
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8440
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v5, :cond_24d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v5, :cond_24d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z

    if-nez v5, :cond_24d

    if-eqz v39, :cond_d03

    .line 8452
    :cond_24d
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8453
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8454
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 8460
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_28c

    .line 8464
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    .line 8465
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    .line 8466
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    .line 8467
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_28c

    .line 8468
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 8471
    :cond_28c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a1

    .line 8475
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v0, v83

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8487
    .end local v39           #configChanged:Z
    :cond_2a1
    :goto_2a1
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v5, :cond_2ad

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_d39

    .line 8488
    :cond_2ad
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-nez v5, :cond_2ca

    .line 8490
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 8493
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_2ca

    .line 8494
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z
    :try_end_2c3
    .catch Ljava/lang/RuntimeException; {:try_start_1ce .. :try_end_2c3} :catch_701

    .line 8496
    :try_start_2c3
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_2ca
    .catch Ljava/lang/RuntimeException; {:try_start_2c3 .. :try_end_2ca} :catch_d1c

    .line 8508
    :cond_2ca
    :goto_2ca
    :try_start_2ca
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_2d5

    .line 8509
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8575
    :cond_2d5
    :goto_2d5
    if-eqz v47, :cond_304

    .line 8576
    if-nez v40, :cond_2e9

    .line 8577
    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2e9

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2e9

    .line 8579
    const/16 v40, 0x1

    .line 8582
    :cond_2e9
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_2fd

    .line 8583
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_2fb

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v5, :cond_ea5

    .line 8584
    :cond_2fb
    const/16 v69, 0x0

    .line 8593
    :cond_2fd
    :goto_2fd
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 8601
    :cond_304
    :goto_304
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v5, :cond_30f

    .line 8603
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 8606
    :cond_30f
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v36

    .line 8608
    .local v36, canBeSeen:Z
    if-eqz v74, :cond_321

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v0, v5, :cond_321

    if-eqz v36, :cond_321

    .line 8609
    const/16 v50, 0x1

    .line 8612
    :cond_321
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move/from16 v0, v65

    if-eq v5, v0, :cond_eb9

    const/16 v66, 0x1

    .line 8615
    .local v66, obscuredChanged:Z
    :goto_32b
    move/from16 v0, v65

    move-object/from16 v1, v83

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v65, :cond_3af

    .line 8616
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_395

    .line 8617
    move/from16 v0, v31

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_345

    .line 8618
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v56, v0

    .line 8620
    :cond_345
    if-nez v76, :cond_35f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_35f

    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-gez v5, :cond_35f

    .line 8622
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v72, v0

    .line 8624
    :cond_35f
    if-nez v76, :cond_379

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_379

    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-gez v5, :cond_379

    .line 8626
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v35, v0

    .line 8628
    :cond_379
    if-eqz v36, :cond_395

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d8

    if-eq v5, v8, :cond_393

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d4

    if-eq v5, v8, :cond_393

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7da

    if-ne v5, v8, :cond_395

    .line 8632
    :cond_393
    const/16 v76, 0x1

    .line 8636
    :cond_395
    if-eqz v36, :cond_ebd

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_ebd

    const/16 v68, 0x1

    .line 8637
    .local v68, opaqueDrawn:Z
    :goto_39f
    if-eqz v68, :cond_ec1

    move-object/from16 v0, v83

    move/from16 v1, v59

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_ec1

    .line 8641
    const/16 v65, 0x1

    .line 8700
    .end local v68           #opaqueDrawn:Z
    :cond_3af
    :goto_3af
    if-eqz v66, :cond_3bc

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v5, v0, :cond_3bc

    .line 8704
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperVisibilityLocked()V

    .line 8334
    :cond_3bc
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_fe

    .line 7665
    .end local v19           #N:I
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v34           #blurring:Z
    .end local v36           #canBeSeen:Z
    .end local v40           #covered:Z
    .end local v46           #dimming:Z
    .end local v47           #displayed:Z
    .end local v65           #obscured:Z
    .end local v66           #obscuredChanged:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v76           #syswin:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_3c0
    and-int/lit8 v5, v38, 0x7

    if-eqz v5, :cond_3fc

    .line 7668
    and-int/lit8 v5, v38, 0x4

    if-eqz v5, :cond_3d8

    .line 7669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3d8

    .line 7670
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 7671
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7674
    :cond_3d8
    and-int/lit8 v5, v38, 0x2

    if-eqz v5, :cond_3f3

    .line 7676
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v5

    if-eqz v5, :cond_3f3

    .line 7677
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7678
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 7681
    :cond_3f3
    and-int/lit8 v5, v38, 0x1

    if-eqz v5, :cond_3fc

    .line 7682
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7687
    :cond_3fc
    const/4 v5, 0x4

    move/from16 v0, v71

    if-ge v0, v5, :cond_413

    .line 7688
    if-nez v71, :cond_411

    const/4 v5, 0x1

    :goto_404
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    move-result v38

    .line 7689
    if-eqz v38, :cond_41c

    .line 8320
    :cond_40d
    :goto_40d
    if-nez v38, :cond_cb

    goto/16 :goto_de

    .line 7688
    :cond_411
    const/4 v5, 0x0

    goto :goto_404

    .line 7693
    :cond_413
    const-string v5, "WindowManager"

    const-string v8, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7694
    const/16 v38, 0x0

    .line 7697
    :cond_41c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    add-int/lit8 v81, v5, 0x1

    move/from16 v0, v81

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 7701
    .local v81, transactionSequence:I
    const/16 v80, 0x0

    .line 7702
    .local v80, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 7703
    .local v20, NAT:I
    const/16 v57, 0x0

    :goto_434
    move/from16 v0, v57

    move/from16 v1, v20

    if-ge v0, v1, :cond_457

    .line 7704
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-wide/from16 v0, v42

    move/from16 v2, v59

    move/from16 v3, v58

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_454

    .line 7706
    const/16 v80, 0x1

    .line 7703
    :cond_454
    add-int/lit8 v57, v57, 0x1

    goto :goto_434

    .line 7709
    :cond_457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 7710
    .local v22, NEAT:I
    const/16 v57, 0x0

    :goto_461
    move/from16 v0, v57

    move/from16 v1, v22

    if-ge v0, v1, :cond_484

    .line 7711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    move-wide/from16 v0, v42

    move/from16 v2, v59

    move/from16 v3, v58

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_481

    .line 7713
    const/16 v80, 0x1

    .line 7710
    :cond_481
    add-int/lit8 v57, v57, 0x1

    goto :goto_461

    .line 7723
    :cond_484
    move/from16 v29, v80

    .line 7725
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_4a4

    .line 7726
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_4a4

    .line 7727
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v5

    if-eqz v5, :cond_689

    .line 7728
    const/16 v29, 0x1

    .line 7736
    :cond_4a4
    :goto_4a4
    const/16 v79, 0x0

    .line 7737
    .local v79, tokenMayBeDrawn:Z
    const/16 v86, 0x0

    .line 7738
    .local v86, wallpaperMayChange:Z
    const/16 v51, 0x0

    .line 7739
    .local v51, forceHiding:Z
    const/16 v92, 0x0

    .line 7740
    .local v92, windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    const/16 v90, 0x0

    .line 7741
    .local v90, windowAnimationBackground:Lcom/android/server/wm/WindowState;
    const/16 v91, 0x0

    .line 7743
    .local v91, windowAnimationBackgroundColor:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 7745
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 7747
    .restart local v19       #N:I
    add-int/lit8 v57, v19, -0x1

    :goto_4c5
    if-ltz v57, :cond_848

    .line 7748
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 7750
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 7752
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_60a

    .line 7754
    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_4f6

    .line 7755
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_4f6

    .line 7759
    const/16 v86, 0x1

    .line 7763
    :cond_4f6
    move-object/from16 v0, v83

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    move/from16 v87, v0

    .line 7765
    .local v87, wasAnimating:Z
    move/from16 v28, v59

    .line 7766
    .local v28, animDw:I
    move/from16 v27, v58

    .line 7772
    .local v27, animDh:I
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v5

    if-eqz v5, :cond_534

    .line 7776
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v8, 0x10a0052

    invoke-static {v5, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v25

    .line 7778
    .local v25, a:Landroid/view/animation/Animation;
    move-object/from16 v0, v83

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7779
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v28, v5, v8

    .line 7780
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v83

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v27, v5, v8

    .line 7784
    .end local v25           #a:Landroid/view/animation/Animation;
    :cond_534
    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    move/from16 v3, v28

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowState;->stepAnimationLocked(JII)Z

    move-result v63

    .line 7790
    .local v63, nowAnimating:Z
    if-eqz v63, :cond_581

    .line 7791
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_57f

    .line 7792
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_55f

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_55f

    .line 7794
    move-object/from16 v92, v83

    .line 7796
    :cond_55f
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_57f

    .line 7797
    if-eqz v90, :cond_575

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v90

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ge v5, v8, :cond_57f

    .line 7799
    :cond_575
    move-object/from16 v90, v83

    .line 7800
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v91

    .line 7805
    :cond_57f
    const/16 v29, 0x1

    .line 7811
    :cond_581
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_5d4

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_5d4

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-eqz v5, :cond_5d4

    .line 7813
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_5b0

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v5

    if-eqz v5, :cond_5b0

    .line 7815
    move-object/from16 v92, v83

    .line 7817
    :cond_5b0
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v5

    if-eqz v5, :cond_5d4

    .line 7818
    if-eqz v90, :cond_5c8

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v90

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ge v5, v8, :cond_5d4

    .line 7820
    :cond_5c8
    move-object/from16 v90, v83

    .line 7821
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v91

    .line 7827
    :cond_5d4
    if-eqz v87, :cond_5e6

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v5, :cond_5e6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-ne v5, v0, :cond_5e6

    .line 7828
    const/16 v86, 0x1

    .line 7831
    :cond_5e6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_69f

    .line 7832
    if-nez v87, :cond_68f

    if-eqz v63, :cond_68f

    .line 7836
    const/16 v85, 0x1

    .line 7837
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 7878
    :cond_5ff
    :goto_5ff
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 7881
    .end local v27           #animDh:I
    .end local v28           #animDw:I
    .end local v63           #nowAnimating:Z
    .end local v87           #wasAnimating:Z
    :cond_60a
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    .line 7882
    .local v30, atoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v30, :cond_83d

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_61e

    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_83d

    .line 7883
    :cond_61e
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    move/from16 v0, v81

    if-eq v5, v0, :cond_63a

    .line 7884
    move/from16 v0, v81

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:I

    .line 7885
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 7886
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 7888
    :cond_63a
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_649

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_685

    :cond_649
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v5, :cond_685

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v5, :cond_685

    .line 7905
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v83

    if-eq v0, v5, :cond_830

    .line 7906
    move-object/from16 v0, v30

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_669

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v5, :cond_685

    .line 7907
    :cond_669
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 7908
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_685

    .line 7909
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 7914
    const/16 v79, 0x1

    .line 7747
    :cond_685
    :goto_685
    add-int/lit8 v57, v57, -0x1

    goto/16 :goto_4c5

    .line 7730
    .end local v19           #N:I
    .end local v30           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v51           #forceHiding:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    .end local v86           #wallpaperMayChange:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_689
    const/16 v73, 0x1

    .line 7731
    const/16 v82, 0x1

    goto/16 :goto_4a4

    .line 7838
    .restart local v19       #N:I
    .restart local v27       #animDh:I
    .restart local v28       #animDw:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v51       #forceHiding:Z
    .restart local v63       #nowAnimating:Z
    .restart local v79       #tokenMayBeDrawn:Z
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    .restart local v86       #wallpaperMayChange:Z
    .restart local v87       #wasAnimating:Z
    .restart local v90       #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .restart local v91       #windowAnimationBackgroundColor:I
    .restart local v92       #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_68f
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_5ff

    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_5ff

    .line 7839
    const/16 v51, 0x1

    goto/16 :goto_5ff

    .line 7841
    :cond_69f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_5ff

    .line 7843
    if-eqz v51, :cond_6c6

    .line 7844
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v37

    .line 7872
    .local v37, changed:Z
    :cond_6b7
    :goto_6b7
    if-eqz v37, :cond_5ff

    move-object/from16 v0, v32

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x10

    and-int/2addr v5, v8

    if-eqz v5, :cond_5ff

    .line 7874
    const/16 v86, 0x1

    goto/16 :goto_5ff

    .line 7848
    .end local v37           #changed:Z
    :cond_6c6
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v37

    .line 7851
    .restart local v37       #changed:Z
    if-eqz v37, :cond_6b7

    .line 7852
    if-eqz v85, :cond_6e9

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_6e9

    .line 7858
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v25

    .line 7859
    .restart local v25       #a:Landroid/view/animation/Animation;
    if-eqz v25, :cond_6e9

    .line 7860
    move-object/from16 v0, v83

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 7863
    .end local v25           #a:Landroid/view/animation/Animation;
    :cond_6e9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_6fb

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v5, v8, :cond_6b7

    .line 7868
    :cond_6fb
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z
    :try_end_700
    .catch Ljava/lang/RuntimeException; {:try_start_2ca .. :try_end_700} :catch_701

    goto :goto_6b7

    .line 8732
    .end local v19           #N:I
    .end local v20           #NAT:I
    .end local v22           #NEAT:I
    .end local v27           #animDh:I
    .end local v28           #animDw:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v37           #changed:Z
    .end local v51           #forceHiding:Z
    .end local v63           #nowAnimating:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v80           #tokensAnimating:Z
    .end local v81           #transactionSequence:I
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    .end local v86           #wallpaperMayChange:Z
    .end local v87           #wasAnimating:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :catch_701
    move-exception v49

    .line 8733
    .local v49, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v8, "Unhandled exception in Window Manager"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8736
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_70b
    :goto_70b
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 8741
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_71b

    .line 8742
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v5}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V

    .line 8748
    :cond_71b
    if-eqz v69, :cond_734

    .line 8749
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-eqz v5, :cond_731

    .line 8750
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 8751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8753
    :cond_731
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 8756
    :cond_734
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v57

    .line 8757
    if-lez v57, :cond_7b3

    .line 8759
    :cond_73e
    add-int/lit8 v57, v57, -0x1

    .line 8760
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/wm/WindowState;

    .line 8764
    .local v89, win:Lcom/android/server/wm/WindowState;
    const/16 v45, 0x0

    .line 8765
    .local v45, diff:I
    :try_start_74e
    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v5, v8, :cond_ff8

    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_76c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v45

    if-eqz v45, :cond_ff8

    :cond_76c
    const/16 v39, 0x1

    .line 8776
    .restart local v39       #configChanged:Z
    :goto_76e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v89

    iput-object v5, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 8779
    move-object/from16 v0, v89

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, v89

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceW:F

    float-to-int v11, v5

    move-object/from16 v0, v89

    iget v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceH:F

    float-to-int v12, v5

    move-object/from16 v0, v89

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v89

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v89

    iget-boolean v15, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-eqz v39, :cond_ffc

    move-object/from16 v0, v89

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    :goto_798
    invoke-interface/range {v10 .. v16}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 8782
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 8783
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 8784
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceResized:Z
    :try_end_7aa
    .catch Landroid/os/RemoteException; {:try_start_74e .. :try_end_7aa} :catch_1000

    .line 8788
    .end local v39           #configChanged:Z
    :goto_7aa
    if-gtz v57, :cond_73e

    .line 8789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8793
    .end local v45           #diff:I
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    :cond_7b3
    const/16 v84, 0x0

    .line 8794
    .local v84, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v57

    .line 8795
    if-lez v57, :cond_7f5

    .line 8797
    :cond_7bf
    add-int/lit8 v57, v57, -0x1

    .line 8798
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/android/server/wm/WindowState;

    .line 8799
    .restart local v89       #win:Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 8800
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v89

    if-ne v5, v0, :cond_7df

    .line 8801
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 8803
    :cond_7df
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v89

    if-ne v0, v5, :cond_7e9

    .line 8804
    const/16 v84, 0x1

    .line 8806
    :cond_7e9
    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    .line 8807
    if-gtz v57, :cond_7bf

    .line 8808
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8812
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    :cond_7f5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_7ff
    if-ltz v57, :cond_1008

    .line 8813
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/android/server/wm/WindowToken;

    .line 8814
    .local v78, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v78

    iget-boolean v5, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v5, :cond_82d

    .line 8815
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8816
    move-object/from16 v0, v78

    iget v5, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v8, 0x7dd

    if-ne v5, v8, :cond_82d

    .line 8817
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8812
    :cond_82d
    add-int/lit8 v57, v57, -0x1

    goto :goto_7ff

    .line 7917
    .end local v78           #token:Lcom/android/server/wm/WindowToken;
    .end local v84           #wallpaperDestroyed:Z
    .restart local v19       #N:I
    .restart local v20       #NAT:I
    .restart local v22       #NEAT:I
    .restart local v30       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v51       #forceHiding:Z
    .restart local v79       #tokenMayBeDrawn:Z
    .restart local v80       #tokensAnimating:Z
    .restart local v81       #transactionSequence:I
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    .restart local v86       #wallpaperMayChange:Z
    .restart local v90       #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .restart local v91       #windowAnimationBackgroundColor:I
    .restart local v92       #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_830
    :try_start_830
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_685

    .line 7918
    const/4 v5, 0x1

    move-object/from16 v0, v30

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_685

    .line 7921
    :cond_83d
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-eqz v5, :cond_685

    .line 7922
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    goto/16 :goto_685

    .line 7926
    .end local v30           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_848
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v38, v38, v5

    .line 7928
    if-eqz v79, :cond_8b2

    .line 7931
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 7932
    .local v24, NT:I
    const/16 v57, 0x0

    :goto_85e
    move/from16 v0, v57

    move/from16 v1, v24

    if-ge v0, v1, :cond_8b2

    .line 7933
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7934
    .local v6, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_88f

    .line 7935
    iget v0, v6, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v64, v0

    .line 7936
    .local v64, numInteresting:I
    if-lez v64, :cond_88c

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move/from16 v0, v64

    if-lt v5, v0, :cond_88c

    .line 7941
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 7942
    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 7947
    const/16 v69, 0x1

    .line 7932
    .end local v64           #numInteresting:I
    :cond_88c
    :goto_88c
    add-int/lit8 v57, v57, 0x1

    goto :goto_85e

    .line 7949
    :cond_88f
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_88c

    .line 7950
    iget v0, v6, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    move/from16 v64, v0

    .line 7951
    .restart local v64       #numInteresting:I
    if-lez v64, :cond_88c

    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    move/from16 v0, v64

    if-lt v5, v0, :cond_88c

    .line 7956
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 7957
    or-int/lit8 v38, v38, 0x8

    .line 7960
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88c

    .line 7961
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    goto :goto_88c

    .line 7971
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v24           #NT:I
    .end local v64           #numInteresting:I
    :cond_8b2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-eqz v5, :cond_ac9

    .line 7972
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 7973
    .local v23, NN:I
    const/16 v54, 0x1

    .line 7978
    .local v54, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_8f5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    if-nez v5, :cond_8f5

    .line 7982
    const/16 v57, 0x0

    :goto_8d0
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_8f5

    if-eqz v54, :cond_8f5

    .line 7983
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 7988
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_8f2

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_8f2

    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_8f2

    .line 7990
    const/16 v54, 0x0

    .line 7982
    :cond_8f2
    add-int/lit8 v57, v57, 0x1

    goto :goto_8d0

    .line 7994
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_8f5
    if-eqz v54, :cond_ac9

    .line 7996
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 7997
    .local v9, transit:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v5, :cond_902

    .line 7998
    const/4 v9, -0x1

    .line 8000
    :cond_902
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 8001
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 8002
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 8003
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 8004
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 8005
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 8007
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8014
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_968

    .line 8015
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 8016
    const/16 v57, 0x0

    :goto_93d
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_961

    .line 8017
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8018
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    if-eqz v5, :cond_95e

    .line 8019
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    .line 8020
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v6, v1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/wm/AppWindowToken;IZ)V

    .line 8016
    :cond_95e
    add-int/lit8 v57, v57, 0x1

    goto :goto_93d

    .line 8023
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_961
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8026
    :cond_968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v67, v0

    .line 8028
    .local v67, oldWallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 8029
    const/16 v86, 0x0

    .line 8033
    const/4 v7, 0x0

    .line 8034
    .local v7, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v33, -0x1

    .line 8035
    .local v33, bestAnimLayer:I
    const/16 v53, 0x0

    .line 8041
    .local v53, fullscreenAnim:Z
    const/16 v52, 0x0

    .line 8052
    .local v52, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 8053
    .local v21, NC:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v23, v21, v5

    .line 8054
    const/16 v57, 0x0

    :goto_98e
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_a03

    .line 8057
    move/from16 v0, v57

    move/from16 v1, v21

    if-ge v0, v1, :cond_9d9

    .line 8058
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8059
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v61, 0x1

    .line 8064
    .local v61, mode:I
    :goto_9a8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_9c0

    .line 8065
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v5, v6, :cond_9be

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, v6, :cond_9c0

    .line 8067
    :cond_9be
    or-int v52, v52, v61

    .line 8070
    :cond_9c0
    iget-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_9e8

    .line 8071
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v93

    .line 8072
    .local v93, ws:Lcom/android/server/wm/WindowState;
    if-eqz v93, :cond_9d6

    .line 8073
    move-object/from16 v0, v93

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8074
    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    .line 8075
    const/16 v53, 0x1

    .line 8054
    .end local v93           #ws:Lcom/android/server/wm/WindowState;
    :cond_9d6
    :goto_9d6
    add-int/lit8 v57, v57, 0x1

    goto :goto_98e

    .line 8061
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v61           #mode:I
    :cond_9d9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    sub-int v8, v57, v21

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8062
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v61, 0x2

    .restart local v61       #mode:I
    goto :goto_9a8

    .line 8077
    :cond_9e8
    if-nez v53, :cond_9d6

    .line 8078
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v93

    .line 8079
    .restart local v93       #ws:Lcom/android/server/wm/WindowState;
    if-eqz v93, :cond_9d6

    .line 8080
    move-object/from16 v0, v93

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v0, v33

    if-le v5, v0, :cond_9d6

    .line 8081
    move-object/from16 v0, v93

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8082
    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v33, v0

    goto :goto_9d6

    .line 8088
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    .end local v61           #mode:I
    .end local v93           #ws:Lcom/android/server/wm/WindowState;
    :cond_a03
    const/4 v5, 0x3

    move/from16 v0, v52

    if-ne v0, v5, :cond_a54

    .line 8091
    sparse-switch v9, :sswitch_data_1182

    .line 8123
    :cond_a0b
    :goto_a0b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_a16

    .line 8124
    const/4 v7, 0x0

    .line 8127
    :cond_a16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 8128
    const/16 v57, 0x0

    :goto_a20
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_a62

    .line 8129
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8132
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 8133
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 8134
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8135
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8137
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8138
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 8139
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 8128
    add-int/lit8 v57, v57, 0x1

    goto :goto_a20

    .line 8095
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_a4e
    const/16 v9, 0x100e

    .line 8096
    goto :goto_a0b

    .line 8100
    :sswitch_a51
    const/16 v9, 0x200f

    goto :goto_a0b

    .line 8105
    :cond_a54
    if-eqz v67, :cond_a59

    .line 8108
    const/16 v9, 0x200c

    goto :goto_a0b

    .line 8111
    :cond_a59
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_a0b

    .line 8114
    const/16 v9, 0x100d

    goto :goto_a0b

    .line 8141
    :cond_a62
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 8142
    const/16 v57, 0x0

    :goto_a6c
    move/from16 v0, v57

    move/from16 v1, v23

    if-ge v0, v1, :cond_a97

    .line 8143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 8146
    .restart local v6       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 8147
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8148
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8150
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8151
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    .line 8155
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 8142
    add-int/lit8 v57, v57, 0x1

    goto :goto_a6c

    .line 8158
    .end local v6           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_a97
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 8160
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8161
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8165
    or-int/lit8 v38, v38, 0x3

    .line 8167
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 8168
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_abd

    .line 8169
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8171
    :cond_abd
    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 8173
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8177
    .end local v7           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #transit:I
    .end local v21           #NC:I
    .end local v23           #NN:I
    .end local v33           #bestAnimLayer:I
    .end local v52           #foundWallpapers:I
    .end local v53           #fullscreenAnim:Z
    .end local v54           #goodToGo:Z
    .end local v67           #oldWallpaper:Lcom/android/server/wm/WindowState;
    :cond_ac9
    const/16 v26, 0x0

    .line 8179
    .local v26, adjResult:I
    if-nez v29, :cond_af3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v5, :cond_af3

    .line 8186
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 8188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8190
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 8191
    or-int/lit8 v38, v38, 0x1

    .line 8192
    or-int/lit8 v26, v26, 0x2

    .line 8193
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 8194
    const/16 v86, 0x1

    .line 8198
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8201
    :cond_af3
    if-eqz v85, :cond_b85

    if-nez v38, :cond_b85

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    if-nez v5, :cond_b85

    .line 8208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v67, v0

    .line 8209
    .restart local v67       #oldWallpaper:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_b26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_b26

    .line 8217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v5, :cond_b26

    .line 8221
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 8222
    or-int/lit8 v38, v38, 0x8

    .line 8225
    :cond_b26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    .line 8226
    const/16 v86, 0x0

    .line 8227
    const/16 v85, 0x0

    .line 8231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_b85

    .line 8234
    const/16 v51, 0x0

    .line 8235
    add-int/lit8 v57, v19, -0x1

    :goto_b3a
    if-ltz v57, :cond_b85

    .line 8236
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8237
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_b6a

    .line 8238
    move-object/from16 v0, v83

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    .line 8239
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_b6d

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_b6d

    .line 8241
    const/16 v51, 0x1

    .line 8235
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_b6a
    :goto_b6a
    add-int/lit8 v57, v57, -0x1

    goto :goto_b3a

    .line 8242
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_b6d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-interface {v5, v0, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_b6a

    .line 8243
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAnimating:Z

    if-nez v5, :cond_b6a

    .line 8246
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_b6a

    .line 8254
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v67           #oldWallpaper:Lcom/android/server/wm/WindowState;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_b85
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v92

    if-eq v5, v0, :cond_b95

    .line 8258
    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 8259
    const/16 v86, 0x1

    .line 8262
    :cond_b95
    if-eqz v91, :cond_c30

    .line 8266
    move-object/from16 v77, v90

    .line 8267
    .local v77, target:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-eq v5, v0, :cond_bb1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-eq v5, v0, :cond_bb1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v90

    if-ne v5, v0, :cond_bd3

    .line 8270
    :cond_bb1
    const/16 v57, 0x0

    :goto_bb3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v57

    if-ge v0, v5, :cond_bd3

    .line 8271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Lcom/android/server/wm/WindowState;

    .line 8272
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_c2d

    .line 8273
    move-object/from16 v77, v83

    .line 8278
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_bd3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-nez v5, :cond_be6

    .line 8279
    new-instance v5, Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v8}, Lcom/android/server/wm/DimSurface;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    .line 8281
    :cond_be6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    move-object/from16 v0, v77

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v8, v8, -0x1

    move/from16 v0, v48

    move/from16 v1, v44

    move/from16 v2, v91

    invoke-virtual {v5, v0, v1, v8, v2}, Lcom/android/server/wm/DimSurface;->show(IIII)V

    .line 8288
    .end local v77           #target:Lcom/android/server/wm/WindowState;
    :cond_bf9
    :goto_bf9
    if-eqz v86, :cond_c01

    .line 8291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v26, v26, v5

    .line 8294
    :cond_c01
    and-int/lit8 v5, v26, 0x2

    if-eqz v5, :cond_c3e

    .line 8297
    or-int/lit8 v38, v38, 0x1

    .line 8298
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8305
    :cond_c0a
    :goto_c0a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    if-eqz v5, :cond_c23

    .line 8306
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 8307
    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v5

    if-eqz v5, :cond_c23

    .line 8309
    or-int/lit8 v38, v38, 0x8

    .line 8310
    const/16 v26, 0x0

    .line 8314
    :cond_c23
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v5, :cond_40d

    .line 8315
    or-int/lit8 v38, v38, 0x1

    goto/16 :goto_40d

    .line 8270
    .restart local v77       #target:Lcom/android/server/wm/WindowState;
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    :cond_c2d
    add-int/lit8 v57, v57, 0x1

    goto :goto_bb3

    .line 8284
    .end local v77           #target:Lcom/android/server/wm/WindowState;
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_c30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v5, :cond_bf9

    .line 8285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    invoke-virtual {v5}, Lcom/android/server/wm/DimSurface;->hide()V

    goto :goto_bf9

    .line 8299
    :cond_c3e
    and-int/lit8 v5, v26, 0x4

    if-eqz v5, :cond_c0a

    .line 8302
    or-int/lit8 v38, v38, 0x1

    goto :goto_c0a

    .line 8324
    .end local v19           #N:I
    .end local v20           #NAT:I
    .end local v22           #NEAT:I
    .end local v26           #adjResult:I
    .end local v51           #forceHiding:Z
    .end local v79           #tokenMayBeDrawn:Z
    .end local v80           #tokensAnimating:Z
    .end local v81           #transactionSequence:I
    .end local v86           #wallpaperMayChange:Z
    .end local v90           #windowAnimationBackground:Lcom/android/server/wm/WindowState;
    .end local v91           #windowAnimationBackgroundColor:I
    .end local v92           #windowDetachedWallpaper:Lcom/android/server/wm/WindowState;
    :cond_c45
    const/16 v74, 0x0

    goto/16 :goto_ea

    .line 8369
    .restart local v19       #N:I
    .restart local v31       #attrFlags:I
    .restart local v32       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v34       #blurring:Z
    .restart local v40       #covered:Z
    .restart local v46       #dimming:Z
    .restart local v47       #displayed:Z
    .restart local v65       #obscured:Z
    .restart local v74       #someoneLosingFocus:Z
    .restart local v76       #syswin:Z
    .restart local v83       #w:Lcom/android/server/wm/WindowState;
    :cond_c49
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v88

    .line 8370
    .restart local v88       #width:I
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v55

    .restart local v55       #height:I
    goto/16 :goto_143

    .line 8379
    :cond_c5b
    const/16 v75, 0x0

    goto/16 :goto_169

    .line 8394
    .restart local v75       #surfaceResized:Z
    :catch_c5f
    move-exception v49

    .line 8395
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " pos=("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8398
    if-nez p1, :cond_1bc

    .line 8399
    const-string v5, "position"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_1bc

    .line 8410
    .end local v49           #e:Ljava/lang/RuntimeException;
    :catch_cb0
    move-exception v49

    .line 8414
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error resizing surface of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " size=("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v88

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v55

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8416
    if-nez p1, :cond_1ce

    .line 8417
    const-string v5, "size"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto/16 :goto_1ce

    .line 8424
    .end local v49           #e:Ljava/lang/RuntimeException;
    .end local v55           #height:I
    .end local v75           #surfaceResized:Z
    .end local v88           #width:I
    :cond_cf9
    const/4 v5, 0x0

    goto/16 :goto_1f1

    .line 8426
    :cond_cfc
    const/4 v5, 0x0

    goto/16 :goto_209

    .line 8428
    :cond_cff
    const/16 v39, 0x0

    goto/16 :goto_22e

    .line 8477
    .restart local v39       #configChanged:Z
    :cond_d03
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_2a1

    .line 8478
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_2a1

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v5, :cond_2a1

    .line 8482
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_2a1

    .line 8497
    .end local v39           #configChanged:Z
    :catch_d1c
    move-exception v49

    .line 8498
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception hiding surface in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ca

    .line 8513
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_d39
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-ne v5, v8, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_d9d

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-eqz v5, :cond_ea1

    .line 8522
    :cond_d9d
    const/16 v47, 0x1

    .line 8523
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastAlpha:F

    .line 8524
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastLayer:I

    .line 8525
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDx:F

    .line 8526
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDx:F

    .line 8527
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDsDy:F

    .line 8528
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastDtDy:F

    .line 8529
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 8530
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 8537
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_de3
    .catch Ljava/lang/RuntimeException; {:try_start_830 .. :try_end_de3} :catch_701

    if-eqz v5, :cond_e36

    .line 8539
    :try_start_de5
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceAlpha:F

    .line 8540
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mShownAlpha:F

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setAlpha(F)V

    .line 8541
    move-object/from16 v0, v83

    iget v5, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move-object/from16 v0, v83

    iput v5, v0, Lcom/android/server/wm/WindowState;->mSurfaceLayer:I

    .line 8542
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    .line 8543
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mDsDx:F

    move-object/from16 v0, v83

    iget v10, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v10

    move-object/from16 v0, v83

    iget v10, v0, Lcom/android/server/wm/WindowState;->mDtDx:F

    move-object/from16 v0, v83

    iget v11, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    move-object/from16 v0, v83

    iget v11, v0, Lcom/android/server/wm/WindowState;->mDsDy:F

    move-object/from16 v0, v83

    iget v12, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    move-object/from16 v0, v83

    iget v12, v0, Lcom/android/server/wm/WindowState;->mDtDy:F

    move-object/from16 v0, v83

    iget v13, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v12, v13

    invoke-virtual {v5, v8, v10, v11, v12}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_e36
    .catch Ljava/lang/RuntimeException; {:try_start_de5 .. :try_end_e36} :catch_e71

    .line 8554
    :cond_e36
    :goto_e36
    :try_start_e36
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    if-eqz v5, :cond_e62

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v5, :cond_e62

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-nez v5, :cond_e62

    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mReadyToShow:Z

    if-nez v5, :cond_e62

    .line 8561
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_e9b

    .line 8562
    const/4 v5, 0x1

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mHasDrawn:Z

    .line 8563
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mLastHidden:Z

    .line 8568
    :cond_e62
    :goto_e62
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_2d5

    .line 8569
    move-object/from16 v0, v83

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto/16 :goto_2d5

    .line 8546
    :catch_e71
    move-exception v49

    .line 8547
    .restart local v49       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error updating surface in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v83

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8548
    if-nez p1, :cond_e36

    .line 8549
    const-string v5, "update"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v5, v8}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    goto :goto_e36

    .line 8565
    .end local v49           #e:Ljava/lang/RuntimeException;
    :cond_e9b
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_e62

    .line 8572
    :cond_ea1
    const/16 v47, 0x1

    goto/16 :goto_2d5

    .line 8588
    :cond_ea5
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_2fd

    .line 8595
    :cond_eac
    move-object/from16 v0, v83

    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v5, :cond_304

    .line 8598
    const/4 v5, 0x0

    move-object/from16 v0, v83

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_304

    .line 8612
    .restart local v36       #canBeSeen:Z
    :cond_eb9
    const/16 v66, 0x0

    goto/16 :goto_32b

    .line 8636
    .restart local v66       #obscuredChanged:Z
    :cond_ebd
    const/16 v68, 0x0

    goto/16 :goto_39f

    .line 8642
    .restart local v68       #opaqueDrawn:Z
    :cond_ec1
    if-eqz v36, :cond_3af

    if-nez v65, :cond_3af

    and-int/lit8 v5, v31, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3af

    .line 8648
    and-int/lit8 v5, v31, 0x2

    if-eqz v5, :cond_f04

    .line 8649
    if-nez v46, :cond_f04

    .line 8651
    const/16 v46, 0x1

    .line 8652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-nez v5, :cond_ee6

    .line 8653
    new-instance v5, Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v5, v8}, Lcom/android/server/wm/DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 8655
    :cond_ee6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move/from16 v0, v59

    move/from16 v1, v58

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DimAnimator;->show(II)V

    .line 8656
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, v83

    move-wide/from16 v1, v42

    invoke-virtual {v5, v8, v0, v1, v2}, Lcom/android/server/wm/DimAnimator;->updateParameters(Landroid/content/res/Resources;Lcom/android/server/wm/WindowState;J)V

    .line 8660
    :cond_f04
    and-int/lit8 v5, v31, 0x4

    if-eqz v5, :cond_3af

    .line 8661
    if-nez v34, :cond_3af

    .line 8663
    const/16 v34, 0x1

    .line 8664
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_f10
    .catch Ljava/lang/RuntimeException; {:try_start_e36 .. :try_end_f10} :catch_701

    if-nez v5, :cond_f2b

    .line 8666
    :try_start_f12
    new-instance v10, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/4 v12, 0x0

    const-string v13, "BlurSurface"

    const/4 v14, -0x1

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, -0x1

    const/high16 v18, 0x1

    invoke-direct/range {v10 .. v18}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_f2b
    .catch Ljava/lang/Exception; {:try_start_f12 .. :try_end_f2b} :catch_f66
    .catch Ljava/lang/RuntimeException; {:try_start_f12 .. :try_end_f2b} :catch_701

    .line 8677
    :cond_f2b
    :goto_f2b
    :try_start_f2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    if-eqz v5, :cond_3af

    .line 8681
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/view/Surface;->setPosition(II)V

    .line 8682
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move/from16 v0, v48

    move/from16 v1, v44

    invoke-virtual {v5, v0, v1}, Landroid/view/Surface;->setSize(II)V

    .line 8683
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object/from16 v0, v83

    iget v8, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5, v8}, Landroid/view/Surface;->setLayer(I)V

    .line 8684
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z
    :try_end_f56
    .catch Ljava/lang/RuntimeException; {:try_start_f2b .. :try_end_f56} :catch_701

    if-nez v5, :cond_3af

    .line 8688
    :try_start_f58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_f5f
    .catch Ljava/lang/RuntimeException; {:try_start_f58 .. :try_end_f5f} :catch_f71

    .line 8692
    :goto_f5f
    const/4 v5, 0x1

    :try_start_f60
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_3af

    .line 8671
    :catch_f66
    move-exception v49

    .line 8672
    .local v49, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v8, "Exception creating Blur surface"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f2b

    .line 8689
    .end local v49           #e:Ljava/lang/Exception;
    :catch_f71
    move-exception v49

    .line 8690
    .local v49, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v8, "Failure showing blur surface"

    move-object/from16 v0, v49

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f5f

    .line 8708
    .end local v31           #attrFlags:I
    .end local v32           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v36           #canBeSeen:Z
    .end local v47           #displayed:Z
    .end local v49           #e:Ljava/lang/RuntimeException;
    .end local v66           #obscuredChanged:Z
    .end local v68           #opaqueDrawn:Z
    .end local v83           #w:Lcom/android/server/wm/WindowState;
    :cond_f7c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v5, :cond_faf

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_faf

    .line 8709
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_fa4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v5, :cond_fa4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_fe4

    :cond_fa4
    const/4 v5, 0x1

    :goto_fa5
    move/from16 v0, v46

    move-wide/from16 v1, v42

    invoke-virtual {v8, v0, v1, v2, v5}, Lcom/android/server/wm/DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v29, v29, v5

    .line 8713
    :cond_faf
    if-nez v34, :cond_fc3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z
    :try_end_fb5
    .catch Ljava/lang/RuntimeException; {:try_start_f60 .. :try_end_fb5} :catch_701

    if-eqz v5, :cond_fc3

    .line 8717
    :try_start_fb7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_fbe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb7 .. :try_end_fbe} :catch_fe6
    .catch Ljava/lang/RuntimeException; {:try_start_fb7 .. :try_end_fbe} :catch_701

    .line 8721
    :goto_fbe
    const/4 v5, 0x0

    :try_start_fbf
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    .line 8724
    :cond_fc3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v5, :cond_70b

    .line 8725
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_fef

    .line 8726
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_70b

    .line 8709
    :cond_fe4
    const/4 v5, 0x0

    goto :goto_fa5

    .line 8718
    :catch_fe6
    move-exception v49

    .line 8719
    .local v49, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v8, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fbe

    .line 8729
    .end local v49           #e:Ljava/lang/IllegalArgumentException;
    :cond_fef
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v5}, Lcom/android/server/wm/BlackFrame;->clearMatrix()V
    :try_end_ff6
    .catch Ljava/lang/RuntimeException; {:try_start_fbf .. :try_end_ff6} :catch_701

    goto/16 :goto_70b

    .line 8765
    .end local v19           #N:I
    .end local v34           #blurring:Z
    .end local v40           #covered:Z
    .end local v46           #dimming:Z
    .end local v65           #obscured:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v76           #syswin:Z
    .restart local v45       #diff:I
    .restart local v89       #win:Lcom/android/server/wm/WindowState;
    :cond_ff8
    const/16 v39, 0x0

    goto/16 :goto_76e

    .line 8779
    .restart local v39       #configChanged:Z
    :cond_ffc
    const/16 v16, 0x0

    goto/16 :goto_798

    .line 8785
    .end local v39           #configChanged:Z
    :catch_1000
    move-exception v49

    .line 8786
    .local v49, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move-object/from16 v0, v89

    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_7aa

    .line 8823
    .end local v45           #diff:I
    .end local v49           #e:Landroid/os/RemoteException;
    .end local v89           #win:Lcom/android/server/wm/WindowState;
    .restart local v84       #wallpaperDestroyed:Z
    :cond_1008
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v57, v5, -0x1

    :goto_1012
    if-ltz v57, :cond_1051

    .line 8824
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Lcom/android/server/wm/AppWindowToken;

    .line 8825
    .local v78, token:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v78

    iget-boolean v5, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v5, :cond_104e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_104e

    .line 8829
    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8830
    const/4 v5, 0x0

    move-object/from16 v0, v78

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    .line 8833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, v78

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8823
    :cond_104e
    add-int/lit8 v57, v57, -0x1

    goto :goto_1012

    .line 8838
    .end local v78           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_1051
    const/16 v62, 0x0

    .line 8840
    .local v62, needRelayout:Z
    if-nez v29, :cond_106f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    if-eqz v5, :cond_106f

    .line 8847
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    .line 8848
    const/16 v62, 0x1

    .line 8849
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 8850
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 8852
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8855
    :cond_106f
    if-eqz v50, :cond_1079

    .line 8856
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8858
    :cond_1079
    if-eqz v84, :cond_1083

    .line 8859
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_113a

    const/16 v62, 0x1

    .line 8861
    :cond_1083
    :goto_1083
    if-eqz v62, :cond_113e

    .line 8862
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    .line 8869
    :cond_108c
    :goto_108c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8871
    if-eqz v56, :cond_115f

    const/4 v5, 0x1

    :goto_1097
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Z)V

    .line 8872
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v5, :cond_10c8

    .line 8873
    const/4 v5, 0x0

    cmpg-float v5, v72, v5

    if-ltz v5, :cond_10ad

    const/high16 v5, 0x3f80

    cmpl-float v5, v72, v5

    if-lez v5, :cond_1162

    .line 8874
    :cond_10ad
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 8879
    :goto_10b5
    const/4 v5, 0x0

    cmpg-float v5, v35, v5

    if-ltz v5, :cond_10c0

    const/high16 v5, 0x3f80

    cmpl-float v5, v35, v5

    if-lez v5, :cond_1170

    .line 8880
    :cond_10c0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 8886
    :cond_10c8
    :goto_10c8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    move-object/from16 v0, v56

    if-eq v0, v5, :cond_10eb

    .line 8887
    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    .line 8888
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xc

    move-object/from16 v0, v56

    invoke-virtual {v5, v8, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v60

    .line 8889
    .local v60, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, v60

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 8892
    .end local v60           #m:Landroid/os/Message;
    :cond_10eb
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    if-eqz v5, :cond_1104

    .line 8894
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 8896
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 8899
    :cond_1104
    if-eqz v73, :cond_1118

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_1118

    .line 8900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 8901
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 8904
    :cond_1118
    if-eqz v82, :cond_112c

    .line 8906
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v37

    .line 8907
    .restart local v37       #changed:Z
    if-eqz v37, :cond_117e

    .line 8908
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8914
    .end local v37           #changed:Z
    :cond_112c
    :goto_112c
    if-eqz v69, :cond_1135

    if-nez v62, :cond_1135

    if-nez v82, :cond_1135

    .line 8915
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 8920
    :cond_1135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    goto/16 :goto_d

    .line 8859
    :cond_113a
    const/16 v62, 0x0

    goto/16 :goto_1083

    .line 8863
    :cond_113e
    if-eqz v29, :cond_108c

    .line 8864
    const/high16 v5, 0x447a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRefreshRate()F

    move-result v8

    div-float/2addr v5, v8

    float-to-int v0, v5

    move/from16 v70, v0

    .line 8865
    .local v70, refreshTimeUs:I
    move/from16 v0, v70

    int-to-long v10, v0

    add-long v10, v10, v42

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_108c

    .line 8871
    .end local v70           #refreshTimeUs:I
    :cond_115f
    const/4 v5, 0x0

    goto/16 :goto_1097

    .line 8876
    :cond_1162
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/high16 v8, 0x437f

    mul-float v8, v8, v72

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_10b5

    .line 8882
    :cond_1170
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    const/high16 v8, 0x437f

    mul-float v8, v8, v35

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_10c8

    .line 8910
    .restart local v37       #changed:Z
    :cond_117e
    const/16 v82, 0x0

    goto :goto_112c

    .line 8091
    nop

    :sswitch_data_1182
    .sparse-switch
        0x1006 -> :sswitch_a4e
        0x1008 -> :sswitch_a4e
        0x100a -> :sswitch_a4e
        0x2007 -> :sswitch_a51
        0x2009 -> :sswitch_a51
        0x200b -> :sswitch_a51
    .end sparse-switch
.end method

.method private final performLayoutLockedInner(ZZ)I
    .registers 16
    .parameter "initial"
    .parameter "updateInputWindows"

    .prologue
    .line 7449
    iget-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    if-nez v10, :cond_6

    .line 7450
    const/4 v10, 0x0

    .line 7568
    :goto_5
    return v10

    .line 7453
    :cond_6
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7455
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 7456
    .local v4, dw:I
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 7458
    .local v3, dh:I
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7459
    .local v1, NFW:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_14
    if-ge v6, v1, :cond_24

    .line 7460
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/FakeWindowImpl;

    invoke-virtual {v10, v4, v3}, Lcom/android/server/wm/FakeWindowImpl;->layout(II)V

    .line 7459
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 7463
    :cond_24
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7469
    .local v0, N:I
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v10, v4, v3, v11}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(III)V

    .line 7471
    iget v10, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v7, v10, 0x1

    .line 7472
    .local v7, seq:I
    if-gez v7, :cond_38

    const/4 v7, 0x0

    .line 7473
    :cond_38
    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 7477
    const/4 v8, -0x1

    .line 7478
    .local v8, topAttached:I
    add-int/lit8 v6, v0, -0x1

    :goto_3d
    if-ltz v6, :cond_93

    .line 7479
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 7484
    .local v9, win:Lcom/android/server/wm/WindowState;
    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 7485
    .local v2, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v10, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_6d

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v10, :cond_6d

    if-nez v2, :cond_5b

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v10, :cond_6d

    :cond_5b
    if-eqz v2, :cond_61

    iget-boolean v10, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v10, :cond_6d

    :cond_61
    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v10, :cond_6d

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v10, :cond_6d

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v10, :cond_8d

    :cond_6d
    const/4 v5, 0x1

    .line 7509
    .local v5, gone:Z
    :goto_6e
    if-eqz v5, :cond_74

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez v10, :cond_8a

    .line 7510
    :cond_74
    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v10, :cond_8f

    .line 7511
    if-eqz p1, :cond_7d

    .line 7513
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 7515
    :cond_7d
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 7516
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, 0x0

    invoke-interface {v10, v9, v11, v12}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7517
    iput v7, v9, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 7478
    :cond_8a
    :goto_8a
    add-int/lit8 v6, v6, -0x1

    goto :goto_3d

    .line 7485
    .end local v5           #gone:Z
    :cond_8d
    const/4 v5, 0x0

    goto :goto_6e

    .line 7523
    .restart local v5       #gone:Z
    :cond_8f
    if-gez v8, :cond_8a

    move v8, v6

    goto :goto_8a

    .line 7532
    .end local v2           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v5           #gone:Z
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :cond_93
    move v6, v8

    :goto_94
    if-ltz v6, :cond_c6

    .line 7533
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 7535
    .restart local v9       #win:Lcom/android/server/wm/WindowState;
    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v10, :cond_c3

    .line 7545
    iget v10, v9, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_ac

    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v10, :cond_b0

    :cond_ac
    iget-boolean v10, v9, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez v10, :cond_c3

    .line 7547
    :cond_b0
    if-eqz p1, :cond_b5

    .line 7549
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 7551
    :cond_b5
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 7552
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v9, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v10, v9, v11, v12}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7553
    iput v7, v9, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 7532
    :cond_c3
    add-int/lit8 v6, v6, -0x1

    goto :goto_94

    .line 7563
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :cond_c6
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v10}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 7564
    if-eqz p2, :cond_d3

    .line 7565
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 7568
    :cond_d3
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v10

    goto/16 :goto_5
.end method

.method private placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 833
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 837
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 838
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 839
    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 846
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 847
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 848
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I
    .registers 6
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4361
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4362
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 4363
    iget-object v2, p2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 4362
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4365
    :cond_18
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/wm/WindowState;)I
    .registers 9
    .parameter "index"
    .parameter "win"

    .prologue
    const/4 v5, 0x0

    .line 4331
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4332
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 4333
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_9
    if-ge v3, v0, :cond_2f

    .line 4334
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4335
    .local v2, cwin:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_23

    iget v4, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v4, :cond_23

    .line 4338
    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4339
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4340
    add-int/lit8 p1, p1, 0x1

    .line 4341
    const/4 v1, 0x1

    .line 4345
    :cond_23
    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4346
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4347
    add-int/lit8 p1, p1, 0x1

    .line 4333
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4349
    .end local v2           #cwin:Lcom/android/server/wm/WindowState;
    :cond_2f
    if-nez v1, :cond_3a

    .line 4352
    iput-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 4353
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4354
    add-int/lit8 p1, p1, 0x1

    .line 4356
    :cond_3a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4357
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 1310
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1314
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1315
    .local v0, wpos:I
    if-ltz v0, :cond_17

    .line 1318
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1319
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1320
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1322
    :cond_17
    return-void
.end method

.method private readForcedDisplaySizeLocked()V
    .registers 9

    .prologue
    const/16 v7, 0x2c

    .line 7151
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_size_forced"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7153
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_17

    .line 7168
    :cond_16
    :goto_16
    return-void

    .line 7156
    :cond_17
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 7157
    .local v2, pos:I
    if-lez v2, :cond_16

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ne v5, v2, :cond_16

    .line 7162
    const/4 v5, 0x0

    :try_start_24
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 7163
    .local v4, width:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_35} :catch_3a

    move-result v1

    .line 7167
    .local v1, height:I
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    goto :goto_16

    .line 7164
    .end local v1           #height:I
    .end local v4           #width:I
    :catch_3a
    move-exception v0

    .line 7165
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_16
.end method

.method private rebuildBlackFrame(Z)V
    .registers 12
    .parameter "inTransaction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7108
    if-nez p1, :cond_7

    .line 7111
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 7114
    :cond_7
    :try_start_7
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v8, :cond_13

    .line 7115
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v8}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 7116
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 7118
    :cond_13
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-lt v8, v9, :cond_1f

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    iget v9, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v8, v9, :cond_4d

    .line 7121
    :cond_1f
    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v8, v7, :cond_28

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_29

    :cond_28
    move v6, v7

    .line 7123
    .local v6, rotated:Z
    :cond_29
    if-eqz v6, :cond_53

    .line 7124
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 7125
    .local v3, initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 7126
    .local v2, initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 7127
    .local v1, baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7134
    .local v0, baseH:I
    :goto_33
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7135
    .local v5, outer:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_5c

    .line 7137
    .local v4, inner:Landroid/graphics/Rect;
    :try_start_41
    new-instance v7, Lcom/android/server/wm/BlackFrame;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const v9, 0x1e8480

    invoke-direct {v7, v8, v5, v4, v9}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_5c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_41 .. :try_end_4d} :catch_63

    .line 7142
    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v4           #inner:Landroid/graphics/Rect;
    .end local v5           #outer:Landroid/graphics/Rect;
    .end local v6           #rotated:Z
    :cond_4d
    :goto_4d
    if-nez p1, :cond_52

    .line 7143
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 7148
    :cond_52
    return-void

    .line 7129
    .restart local v6       #rotated:Z
    :cond_53
    :try_start_53
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 7130
    .restart local v3       #initW:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 7131
    .restart local v2       #initH:I
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7132
    .restart local v1       #baseW:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_5c

    .restart local v0       #baseH:I
    goto :goto_33

    .line 7142
    .end local v0           #baseH:I
    .end local v1           #baseW:I
    .end local v2           #initH:I
    .end local v3           #initW:I
    .end local v6           #rotated:Z
    :catchall_5c
    move-exception v7

    if-nez p1, :cond_62

    .line 7143
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_62
    throw v7

    .line 7138
    .restart local v0       #baseH:I
    .restart local v1       #baseW:I
    .restart local v2       #initH:I
    .restart local v3       #initW:I
    .restart local v4       #inner:Landroid/graphics/Rect;
    .restart local v5       #outer:Landroid/graphics/Rect;
    .restart local v6       #rotated:Z
    :catch_63
    move-exception v7

    goto :goto_4d
.end method

.method private reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I
    .registers 10
    .parameter "curSize"
    .parameter "rotation"
    .parameter "dm"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 6026
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 6027
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v2

    iput v2, p3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 6028
    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 6029
    .local v0, scale:F
    iget v2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 6030
    .local v1, size:I
    if-eqz p1, :cond_24

    if-ge v1, p1, :cond_25

    .line 6031
    :cond_24
    move p1, v1

    .line 6033
    :cond_25
    return p1
.end method

.method private reduceConfigLayout(IIFII)I
    .registers 19
    .parameter "curLayout"
    .parameter "rotation"
    .parameter "density"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 5920
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v10

    .line 5921
    .local v10, w:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v11, v0, v1, p2}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v3

    .line 5927
    .local v3, h:I
    move v4, v10

    .line 5928
    .local v4, longSize:I
    move v8, v3

    .line 5929
    .local v8, shortSize:I
    if-ge v4, v8, :cond_1b

    .line 5930
    move v9, v4

    .line 5931
    .local v9, tmp:I
    move v4, v8

    .line 5932
    move v8, v9

    .line 5934
    .end local v9           #tmp:I
    :cond_1b
    int-to-float v11, v4

    div-float v11, v11, p3

    float-to-int v4, v11

    .line 5935
    int-to-float v11, v8

    div-float v11, v11, p3

    float-to-int v8, v11

    .line 5941
    const/16 v11, 0x1d6

    if-ge v4, v11, :cond_3e

    .line 5944
    const/4 v7, 0x1

    .line 5945
    .local v7, screenLayoutSize:I
    const/4 v6, 0x0

    .line 5946
    .local v6, screenLayoutLong:Z
    const/4 v5, 0x0

    .line 5981
    .local v5, screenLayoutCompatNeeded:Z
    :goto_2a
    if-nez v6, :cond_30

    .line 5982
    and-int/lit8 v11, p1, -0x31

    or-int/lit8 p1, v11, 0x10

    .line 5985
    :cond_30
    if-eqz v5, :cond_35

    .line 5986
    const/high16 v11, 0x1000

    or-int/2addr p1, v11

    .line 5988
    :cond_35
    and-int/lit8 v2, p1, 0xf

    .line 5989
    .local v2, curSize:I
    if-ge v7, v2, :cond_3d

    .line 5990
    and-int/lit8 v11, p1, -0x10

    or-int p1, v11, v7

    .line 5993
    :cond_3d
    return p1

    .line 5949
    .end local v2           #curSize:I
    .end local v5           #screenLayoutCompatNeeded:Z
    .end local v6           #screenLayoutLong:Z
    .end local v7           #screenLayoutSize:I
    :cond_3e
    const/16 v11, 0x3c0

    if-lt v4, v11, :cond_5a

    const/16 v11, 0x2d0

    if-lt v8, v11, :cond_5a

    .line 5952
    const/4 v7, 0x4

    .line 5964
    .restart local v7       #screenLayoutSize:I
    :goto_47
    const/16 v11, 0x141

    if-gt v8, v11, :cond_4f

    const/16 v11, 0x23a

    if-le v4, v11, :cond_66

    .line 5965
    :cond_4f
    const/4 v5, 0x1

    .line 5971
    .restart local v5       #screenLayoutCompatNeeded:Z
    :goto_50
    mul-int/lit8 v11, v4, 0x3

    div-int/lit8 v11, v11, 0x5

    add-int/lit8 v12, v8, -0x1

    if-lt v11, v12, :cond_68

    .line 5973
    const/4 v6, 0x1

    .restart local v6       #screenLayoutLong:Z
    goto :goto_2a

    .line 5953
    .end local v5           #screenLayoutCompatNeeded:Z
    .end local v6           #screenLayoutLong:Z
    .end local v7           #screenLayoutSize:I
    :cond_5a
    const/16 v11, 0x280

    if-lt v4, v11, :cond_64

    const/16 v11, 0x1e0

    if-lt v8, v11, :cond_64

    .line 5956
    const/4 v7, 0x3

    .restart local v7       #screenLayoutSize:I
    goto :goto_47

    .line 5958
    .end local v7           #screenLayoutSize:I
    :cond_64
    const/4 v7, 0x2

    .restart local v7       #screenLayoutSize:I
    goto :goto_47

    .line 5967
    :cond_66
    const/4 v5, 0x0

    .restart local v5       #screenLayoutCompatNeeded:Z
    goto :goto_50

    .line 5975
    :cond_68
    const/4 v6, 0x0

    .restart local v6       #screenLayoutLong:Z
    goto :goto_2a
.end method

.method private reduceConfigWidthSize(IIFII)I
    .registers 8
    .parameter "curSize"
    .parameter "rotation"
    .parameter "density"
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 5910
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p4, p5, p2}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-int v0, v1

    .line 5911
    .local v0, size:I
    if-ge v0, p1, :cond_c

    .line 5912
    move p1, v0

    .line 5914
    :cond_c
    return p1
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4415
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4416
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_48

    .line 4417
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4418
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 4421
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 4422
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    add-int/lit8 v1, v1, -0x1

    .line 4425
    add-int/lit8 v0, v0, -0x1

    .line 4416
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4428
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_48
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .registers 14
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2306
    iget-boolean v5, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v5, :cond_8

    .line 2400
    :goto_7
    return-void

    .line 2311
    :cond_8
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_10
    if-ltz v2, :cond_44

    .line 2312
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2313
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force-removing child win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-direct {p0, v5, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2311
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 2318
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_44
    iput-boolean v8, p2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 2320
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_4d

    .line 2321
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2330
    :cond_4d
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2331
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->removeLocked()V

    .line 2334
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2336
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2337
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 2340
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_c8

    .line 2341
    iput-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2346
    :cond_72
    :goto_72
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2347
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2349
    .local v0, atoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2350
    if-eqz v0, :cond_82

    .line 2351
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2356
    :cond_82
    iget-object v5, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_95

    .line 2357
    iget-boolean v5, v4, Lcom/android/server/wm/WindowToken;->explicit:Z

    if-nez v5, :cond_d6

    .line 2358
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    :cond_95
    :goto_95
    if-eqz v0, :cond_9d

    .line 2365
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, p2, :cond_db

    .line 2366
    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2383
    :cond_9d
    :goto_9d
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_103

    .line 2384
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2385
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2390
    :cond_ac
    :goto_ac
    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mInLayout:Z

    if-nez v5, :cond_c1

    .line 2391
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2392
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2393
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2394
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_c1

    .line 2395
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2399
    :cond_c1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_7

    .line 2342
    .end local v0           #atoken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_c8
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v5, v6, :cond_72

    .line 2343
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_72

    .line 2359
    .restart local v0       #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v4       #token:Lcom/android/server/wm/WindowToken;
    :cond_d6
    if-eqz v0, :cond_95

    .line 2360
    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    goto :goto_95

    .line 2367
    :cond_db
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_ea

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_ea

    .line 2370
    iput-object v9, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    goto :goto_9d

    .line 2371
    :cond_ea
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_9d

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v5, :cond_9d

    .line 2378
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2379
    .local v3, m:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9d

    .line 2386
    .end local v3           #m:Landroid/os/Message;
    :cond_103
    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_ac

    .line 2387
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_ac
.end method

.method private reportInjectionResult(I)Z
    .registers 5
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 6421
    packed-switch p1, :pswitch_data_26

    .line 6434
    :pswitch_4
    const-string v1, "WindowManager"

    const-string v2, "Input event injection failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6435
    :goto_b
    return v0

    .line 6423
    :pswitch_c
    const-string v0, "WindowManager"

    const-string v1, "Input event injection permission denied."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6424
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6428
    :pswitch_1b
    const/4 v0, 0x1

    goto :goto_b

    .line 6430
    :pswitch_1d
    const-string v1, "WindowManager"

    const-string v2, "Input event injection timed out."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 6421
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_c
        :pswitch_4
        :pswitch_1d
    .end packed-switch
.end method

.method private setForcedDisplaySizeLocked(II)V
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7171
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using new display size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7173
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7174
    :try_start_27
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 7175
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 7176
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_70

    .line 7177
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    .line 7179
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 7181
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    .line 7182
    .local v0, configChanged:Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 7183
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 7184
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 7185
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_5b

    .line 7186
    const/4 v0, 0x1

    .line 7190
    :cond_5b
    if-eqz v0, :cond_69

    .line 7191
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 7192
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 7193
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 7196
    :cond_69
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    .line 7198
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 7199
    return-void

    .line 7176
    .end local v0           #configChanged:Z
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method

.method private shouldAllowDisableKeyguard()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4563
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1d

    .line 4564
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4566
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1d

    .line 4567
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_22

    move v1, v2

    :goto_1b
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    .line 4572
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1d
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v2, :cond_24

    :goto_21
    return v2

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_22
    move v1, v3

    .line 4567
    goto :goto_1b

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_24
    move v2, v3

    .line 4572
    goto :goto_21
.end method

.method private startFreezingDisplayLocked(Z)V
    .registers 5
    .parameter "inTransaction"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 9240
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_7

    .line 9283
    :cond_6
    :goto_6
    return-void

    .line 9244
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9250
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9252
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 9254
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    .line 9256
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v1, :cond_2a

    .line 9257
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 9258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 9259
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 9281
    :cond_2a
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_6
.end method

.method private stopFreezingDisplayLocked()V
    .registers 8

    .prologue
    const/16 v4, 0xf

    const/4 v6, 0x0

    .line 9286
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_8

    .line 9350
    :cond_7
    :goto_7
    return-void

    .line 9290
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v2, :cond_7

    .line 9294
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 9295
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9300
    const/4 v1, 0x0

    .line 9313
    .local v1, updateRotation:Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v2, :cond_2a

    .line 9314
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 9315
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 9317
    :cond_2a
    const/4 v1, 0x1

    .line 9319
    invoke-static {v6}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 9321
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 9329
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v0

    .line 9336
    .local v0, configChanged:Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9337
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9340
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9342
    if-eqz v1, :cond_55

    .line 9344
    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 9347
    :cond_55
    if-eqz v0, :cond_7

    .line 9348
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z
    .registers 9
    .parameter "token"

    .prologue
    const/4 v5, 0x1

    .line 4243
    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4244
    .local v0, NW:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_34

    .line 4245
    iget-object v6, p1, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4247
    .local v4, win:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4248
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 4249
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4250
    .local v3, j:I
    :goto_1f
    if-lez v3, :cond_31

    .line 4251
    add-int/lit8 v3, v3, -0x1

    .line 4252
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4255
    .local v1, cwin:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 4244
    .end local v1           #cwin:Lcom/android/server/wm/WindowState;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4258
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_34
    if-lez v0, :cond_37

    :goto_36
    return v5

    :cond_37
    const/4 v5, 0x0

    goto :goto_36
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I
    .registers 8
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1287
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1288
    .local v3, wpos:I
    if-ltz v3, :cond_38

    .line 1289
    if-ge v3, p1, :cond_c

    add-int/lit8 p1, p1, -0x1

    .line 1291
    :cond_c
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1292
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1293
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1294
    .local v0, NC:I
    :cond_1a
    :goto_1a
    if-lez v0, :cond_38

    .line 1295
    add-int/lit8 v0, v0, -0x1

    .line 1296
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1297
    .local v2, cw:Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1298
    .local v1, cpos:I
    if-ltz v1, :cond_1a

    .line 1299
    if-ge v1, p1, :cond_32

    add-int/lit8 p1, p1, -0x1

    .line 1302
    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    .line 1306
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/wm/WindowState;
    :cond_38
    return p1
.end method

.method private updateFocusedWindowLocked(IZ)Z
    .registers 12
    .parameter "mode"
    .parameter "updateInputWindows"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 9118
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 9119
    .local v2, newFocus:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v6, v2, :cond_56

    .line 9122
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 9123
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9126
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 9127
    .local v3, oldFocus:Lcom/android/server/wm/WindowState;
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 9128
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9129
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6, v3, v2}, Landroid/view/WindowManagerPolicy;->focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v0

    .line 9131
    .local v0, focusChanged:I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 9132
    .local v1, imWindow:Lcom/android/server/wm/WindowState;
    if-eq v2, v1, :cond_3f

    if-eq v3, v1, :cond_3f

    .line 9133
    if-eq p1, v5, :cond_30

    if-eq p1, v8, :cond_30

    move v4, v5

    :cond_30
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 9136
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 9138
    :cond_38
    if-ne p1, v7, :cond_50

    .line 9139
    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    .line 9140
    and-int/lit8 v0, v0, -0x2

    .line 9148
    :cond_3f
    :goto_3f
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_4a

    .line 9150
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 9151
    if-ne p1, v7, :cond_4a

    .line 9152
    invoke-direct {p0, v5, p2}, Lcom/android/server/wm/WindowManagerService;->performLayoutLockedInner(ZZ)I

    .line 9156
    :cond_4a
    if-eq p1, v5, :cond_4f

    .line 9159
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    .line 9163
    .end local v0           #focusChanged:I
    .end local v1           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v3           #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_4f
    :goto_4f
    return v5

    .line 9141
    .restart local v0       #focusChanged:I
    .restart local v1       #imWindow:Lcom/android/server/wm/WindowState;
    .restart local v3       #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_50
    if-ne p1, v8, :cond_3f

    .line 9144
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    goto :goto_3f

    .end local v0           #focusChanged:I
    .end local v1           #imWindow:Lcom/android/server/wm/WindowState;
    .end local v3           #oldFocus:Lcom/android/server/wm/WindowState;
    :cond_56
    move v5, v4

    .line 9163
    goto :goto_4f
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 9
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3463
    const/4 v0, 0x0

    .line 3465
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3466
    if-eqz p2, :cond_16

    .line 3467
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3469
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_16

    .line 3470
    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 3474
    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3493
    :cond_1a
    :goto_1a
    return-object v0

    .line 3476
    :cond_1b
    if-eqz p1, :cond_1a

    .line 3481
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3482
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 3483
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3484
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_1a

    .line 3485
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 3486
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3487
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 3488
    new-instance v0, Landroid/content/res/Configuration;

    .end local v0           #config:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_1a
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .registers 14
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    .line 3281
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "addAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 3283
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3294
    :cond_12
    :try_start_12
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_42

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v1, v4, v6

    .line 3300
    .local v1, inputDispatchingTimeoutNanos:J
    :goto_1b
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3301
    :try_start_1e
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 3302
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_50

    .line 3303
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_73

    .line 3321
    :goto_41
    return-void

    .line 3295
    .end local v1           #inputDispatchingTimeoutNanos:J
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catch_42
    move-exception v0

    .line 3296
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Could not get dispatching timeout."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3297
    const-wide v1, 0x12a05f200L

    .restart local v1       #inputDispatchingTimeoutNanos:J
    goto :goto_1b

    .line 3306
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_50
    :try_start_50
    new-instance v3, Lcom/android/server/wm/AppWindowToken;

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 3307
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iput-wide v1, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    .line 3308
    iput p3, v3, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3309
    iput-boolean p5, v3, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    .line 3310
    iput p4, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3312
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3313
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3316
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3317
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3320
    monitor-exit v5

    goto :goto_41

    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_73
    move-exception v4

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_73

    throw v4
.end method

.method public addFakeWindow(Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;
    .registers 21
    .parameter "looper"
    .parameter "inputHandler"
    .parameter "name"
    .parameter "windowType"
    .parameter "layoutParamsFlags"
    .parameter "canReceiveKeys"
    .parameter "hasFocus"
    .parameter "touchFullscreen"

    .prologue
    .line 9456
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 9457
    :try_start_3
    new-instance v0, Lcom/android/server/wm/FakeWindowImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/FakeWindowImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputHandler;Ljava/lang/String;IIZZZ)V

    .line 9459
    .local v0, fw:Lcom/android/server/wm/FakeWindowImpl;
    const/4 v10, 0x0

    .line 9460
    .local v10, i:I
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_2d

    .line 9461
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FakeWindowImpl;

    iget v1, v1, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    iget v2, v0, Lcom/android/server/wm/FakeWindowImpl;->mWindowLayer:I

    if-gt v1, v2, :cond_17

    .line 9465
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9466
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 9467
    monitor-exit v11

    return-object v0

    .line 9468
    .end local v0           #fw:Lcom/android/server/wm/FakeWindowImpl;
    .end local v10           #i:I
    :catchall_3a
    move-exception v1

    monitor-exit v11
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1244
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1245
    .local v0, pos:I
    if-ltz v0, :cond_1a

    .line 1246
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1249
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1250
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1251
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1257
    :goto_19
    return-void

    .line 1254
    :cond_1a
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1255
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 1256
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_19
.end method

.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 31
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    .line 2014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v0}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 2015
    .local v20, res:I
    if-eqz v20, :cond_f

    move/from16 v3, v20

    .line 2219
    :goto_e
    return v3

    .line 2019
    :cond_f
    const/16 v19, 0x0

    .line 2020
    .local v19, reportNewConfig:Z
    const/4 v7, 0x0

    .line 2021
    .local v7, attachedWindow:Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 2024
    .local v21, win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2025
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_2e

    .line 2026
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Display has not been initialialized"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_29

    .line 2211
    :catchall_29
    move-exception v3

    move-object/from16 v2, v21

    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .local v2, win:Lcom/android/server/wm/WindowState;
    :goto_2c
    :try_start_2c
    monitor-exit v22
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_1c4

    throw v3

    .line 2029
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    .restart local v21       #win:Lcom/android/server/wm/WindowState;
    :cond_2e
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 2030
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const/4 v3, -0x5

    monitor-exit v22

    goto :goto_e

    .line 2034
    :cond_5f
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_d9

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_d9

    .line 2035
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 2036
    if-nez v7, :cond_a3

    .line 2037
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is not a window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_e

    .line 2041
    :cond_a3
    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_d9

    iget-object v3, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_d9

    .line 2043
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const/4 v3, -0x2

    monitor-exit v22

    goto/16 :goto_e

    .line 2049
    :cond_d9
    const/4 v11, 0x0

    .line 2050
    .local v11, addToken:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 2051
    .local v6, token:Lcom/android/server/wm/WindowToken;
    if-nez v6, :cond_1c7

    .line 2052
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_11f

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_11f

    .line 2054
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add application window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_e

    .line 2058
    :cond_11f
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_14d

    .line 2059
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_e

    .line 2063
    :cond_14d
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_17b

    .line 2064
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_e

    .line 2068
    :cond_17b
    new-instance v6, Lcom/android/server/wm/WindowToken;

    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 2069
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    const/4 v11, 0x1

    .line 2102
    :cond_189
    new-instance v2, Lcom/android/server/wm/WindowState;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;I)V
    :try_end_19a
    .catchall {:try_start_2e .. :try_end_19a} :catchall_29

    .line 2104
    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :try_start_19a
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    if-nez v3, :cond_299

    .line 2107
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding window client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is dead, aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/4 v3, -0x4

    monitor-exit v22
    :try_end_1c2
    .catchall {:try_start_19a .. :try_end_1c2} :catchall_1c4

    goto/16 :goto_e

    .line 2211
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #addToken:Z
    :catchall_1c4
    move-exception v3

    goto/16 :goto_2c

    .line 2070
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #addToken:Z
    .restart local v21       #win:Lcom/android/server/wm/WindowState;
    :cond_1c7
    :try_start_1c7
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_231

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_231

    .line 2072
    iget-object v12, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2073
    .local v12, atoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v12, :cond_1fc

    .line 2074
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with non-application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/4 v3, -0x3

    monitor-exit v22

    goto/16 :goto_e

    .line 2077
    :cond_1fc
    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_222

    .line 2078
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add window with exiting application token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const/4 v3, -0x4

    monitor-exit v22

    goto/16 :goto_e

    .line 2082
    :cond_222
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_189

    iget-boolean v3, v12, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_189

    .line 2086
    const/4 v3, -0x6

    monitor-exit v22

    goto/16 :goto_e

    .line 2088
    .end local v12           #atoken:Lcom/android/server/wm/AppWindowToken;
    :cond_231
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_265

    .line 2089
    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_189

    .line 2090
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add input method window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    const/4 v3, -0x1

    monitor-exit v22

    goto/16 :goto_e

    .line 2094
    :cond_265
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_189

    .line 2095
    iget v3, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v4, 0x7dd

    if-eq v3, v4, :cond_189

    .line 2096
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".  Aborting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const/4 v3, -0x1

    monitor-exit v22
    :try_end_297
    .catchall {:try_start_1c7 .. :try_end_297} :catchall_29

    goto/16 :goto_e

    .line 2112
    .end local v21           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :cond_299
    :try_start_299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    invoke-interface {v3, v2, v0}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 2115
    if-eqz v20, :cond_2b3

    .line 2116
    monitor-exit v22

    move/from16 v3, v20

    goto/16 :goto_e

    .line 2119
    :cond_2b3
    if-eqz p7, :cond_2de

    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2de

    .line 2121
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v16

    .line 2122
    .local v16, name:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v15

    .line 2123
    .local v15, inputChannels:[Landroid/view/InputChannel;
    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->setInputChannel(Landroid/view/InputChannel;)V

    .line 2124
    const/4 v3, 0x1

    aget-object v3, v15, v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandle;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/InputManager;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/wm/InputWindowHandle;)V

    .line 2131
    .end local v15           #inputChannels:[Landroid/view/InputChannel;
    .end local v16           #name:Ljava/lang/String;
    :cond_2de
    const/16 v20, 0x0

    .line 2133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2135
    .local v17, origId:J
    if-eqz v11, :cond_2f1

    .line 2136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    :cond_2f1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->attach()V

    .line 2139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_30e

    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_30e

    .line 2143
    iget-object v3, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2146
    :cond_30e
    const/4 v14, 0x1

    .line 2148
    .local v14, imMayMove:Z
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_397

    .line 2149
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2150
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/wm/WindowState;)V

    .line 2151
    const/4 v14, 0x0

    .line 2167
    :cond_321
    :goto_321
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-interface {v3, v0, v1}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 2171
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v3, :cond_337

    .line 2172
    or-int/lit8 v20, v20, 0x1

    .line 2174
    :cond_337
    if-eqz v2, :cond_343

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_343

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-nez v3, :cond_345

    .line 2175
    :cond_343
    or-int/lit8 v20, v20, 0x2

    .line 2178
    :cond_345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 2180
    const/4 v13, 0x0

    .line 2181
    .local v13, focusChanged:Z
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    if-eqz v3, :cond_35e

    .line 2182
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v13

    .line 2184
    if-eqz v13, :cond_35e

    .line 2185
    const/4 v14, 0x0

    .line 2189
    :cond_35e
    if-eqz v14, :cond_366

    .line 2190
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2193
    :cond_366
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2199
    if-eqz v13, :cond_371

    .line 2200
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked(Z)V

    .line 2202
    :cond_371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2208
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    if-eqz v3, :cond_38a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_38a

    .line 2209
    const/16 v19, 0x1

    .line 2211
    :cond_38a
    monitor-exit v22
    :try_end_38b
    .catchall {:try_start_299 .. :try_end_38b} :catchall_1c4

    .line 2213
    if-eqz v19, :cond_390

    .line 2214
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 2217
    :cond_390
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v3, v20

    .line 2219
    goto/16 :goto_e

    .line 2152
    .end local v13           #focusChanged:Z
    :cond_397
    :try_start_397
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_3b2

    .line 2153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2154
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2155
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 2156
    const/4 v14, 0x0

    goto/16 :goto_321

    .line 2158
    :cond_3b2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2159
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_3cb

    .line 2160
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2161
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_321

    .line 2162
    :cond_3cb
    move-object/from16 v0, p4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_321

    .line 2163
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_3d7
    .catchall {:try_start_397 .. :try_end_3d7} :catchall_1c4

    goto/16 :goto_321
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 5816
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5817
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5818
    monitor-exit v1

    .line 5819
    return-void

    .line 5818
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "type"

    .prologue
    .line 3207
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3209
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3212
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3213
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 3214
    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_39

    .line 3215
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    monitor-exit v2

    .line 3224
    :goto_38
    return-void

    .line 3218
    :cond_39
    new-instance v0, Lcom/android/server/wm/WindowToken;

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 3219
    .restart local v0       #wtoken:Lcom/android/server/wm/WindowToken;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3220
    const/16 v1, 0x7dd

    if-ne p2, v1, :cond_4d

    .line 3221
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3223
    :cond_4d
    monitor-exit v2

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_4f
    move-exception v1

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method adjustInputMethodDialogsLocked()V
    .registers 2

    .prologue
    .line 1476
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1477
    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .registers 32

    .prologue
    .line 1497
    const/4 v4, 0x0

    .line 1499
    .local v4, changed:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1500
    .local v8, dw:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1504
    .local v7, dh:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 1505
    .local v13, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1506
    .local v3, N:I
    const/16 v25, 0x0

    .line 1507
    .local v25, w:Lcom/android/server/wm/WindowState;
    const/4 v11, 0x0

    .line 1508
    .local v11, foundW:Lcom/android/server/wm/WindowState;
    const/4 v10, 0x0

    .line 1509
    .local v10, foundI:I
    const/16 v22, 0x0

    .line 1510
    .local v22, topCurW:Lcom/android/server/wm/WindowState;
    const/16 v21, 0x0

    .line 1511
    .local v21, topCurI:I
    const/16 v28, -0x1

    .line 1512
    .local v28, windowDetachedI:I
    move v12, v3

    .line 1513
    .local v12, i:I
    :cond_1c
    :goto_1c
    if-lez v12, :cond_d4

    .line 1514
    add-int/lit8 v12, v12, -0x1

    .line 1515
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #w:Lcom/android/server/wm/WindowState;
    check-cast v25, Lcom/android/server/wm/WindowState;

    .line 1516
    .restart local v25       #w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x7dd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_41

    .line 1517
    if-nez v22, :cond_1c

    .line 1518
    move-object/from16 v22, v25

    .line 1519
    move/from16 v21, v12

    goto :goto_1c

    .line 1523
    :cond_41
    const/16 v22, 0x0

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_73

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_73

    .line 1527
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v29, v0

    if-eqz v29, :cond_73

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1c

    .line 1536
    :cond_73
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const/high16 v30, 0x10

    and-int v29, v29, v30

    if-eqz v29, :cond_103

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v29

    if-eqz v29, :cond_103

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_a7

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v29, v0

    if-nez v29, :cond_103

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v29, v0

    if-nez v29, :cond_103

    .line 1541
    :cond_a7
    move-object/from16 v11, v25

    .line 1542
    move v10, v12

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_d4

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_cc

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_1c

    :cond_cc
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_1c

    .line 1559
    :cond_d4
    if-nez v11, :cond_dc

    if-ltz v28, :cond_dc

    .line 1562
    move-object/from16 v11, v25

    .line 1563
    move/from16 v10, v28

    .line 1566
    :cond_dc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11e

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_113

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_113

    .line 1578
    const/16 v29, 0x0

    .line 1809
    :goto_102
    return v29

    .line 1554
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 1555
    move/from16 v28, v12

    goto/16 :goto_1c

    .line 1580
    :cond_113
    if-eqz v11, :cond_11e

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_11e

    .line 1583
    const/16 v29, 0x0

    goto :goto_102

    .line 1587
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v0, v11, :cond_389

    .line 1593
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1594
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    .line 1597
    .local v19, oldW:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1601
    if-eqz v11, :cond_1b5

    if-eqz v19, :cond_1b5

    .line 1602
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_164

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_376

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_376

    :cond_164
    const/16 v16, 0x1

    .line 1604
    .local v16, oldAnim:Z
    :goto_166
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_17e

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_37a

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_37a

    :cond_17e
    const/4 v9, 0x1

    .line 1610
    .local v9, foundAnim:Z
    :goto_17f
    if-eqz v9, :cond_1b5

    if-eqz v16, :cond_1b5

    .line 1611
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 1615
    .local v17, oldI:I
    if-ltz v17, :cond_1b5

    .line 1623
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1a3

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1a3

    .line 1627
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1633
    :cond_1a3
    move/from16 v0, v17

    if-le v10, v0, :cond_37d

    .line 1638
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1639
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1640
    move-object/from16 v11, v19

    .line 1641
    move/from16 v10, v17

    .line 1671
    .end local v9           #foundAnim:Z
    .end local v16           #oldAnim:Z
    .end local v17           #oldI:I
    .end local v19           #oldW:Lcom/android/server/wm/WindowState;
    :cond_1b5
    :goto_1b5
    if-eqz v11, :cond_40f

    const/16 v24, 0x1

    .line 1672
    .local v24, visible:Z
    :goto_1b9
    if-eqz v24, :cond_253

    .line 1675
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v24

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-nez v29, :cond_413

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_413

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move/from16 v29, v0

    :goto_1d9
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v29

    move/from16 v0, v29

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v29, v0

    move/from16 v0, v29

    add-int/lit16 v15, v0, 0x3e8

    .line 1693
    .local v15, maxLayer:I
    :goto_1f3
    if-lez v10, :cond_253

    .line 1694
    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowState;

    .line 1695
    .local v27, wb:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v15, :cond_417

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v0, v11, :cond_417

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_229

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_417

    :cond_229
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_253

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_253

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v29, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_417

    .line 1712
    .end local v15           #maxLayer:I
    .end local v27           #wb:Lcom/android/server/wm/WindowState;
    :cond_253
    if-nez v11, :cond_41d

    if-eqz v22, :cond_41d

    .line 1715
    move-object/from16 v11, v22

    .line 1716
    add-int/lit8 v10, v21, 0x1

    .line 1723
    :goto_25b
    if-eqz v24, :cond_2c9

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_293

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    .line 1728
    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-ltz v29, :cond_2c9

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    .line 1736
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1737
    .local v5, curTokenIndex:I
    :cond_2d3
    if-lez v5, :cond_462

    .line 1738
    add-int/lit8 v5, v5, -0x1

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowToken;

    .line 1740
    .local v20, token:Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    if-ne v0, v1, :cond_305

    .line 1741
    or-int/lit8 v4, v4, 0x4

    .line 1742
    if-nez v24, :cond_42f

    const/16 v29, 0x1

    :goto_2f7
    move/from16 v0, v29

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1745
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1748
    :cond_305
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1749
    .local v6, curWallpaperIndex:I
    :goto_30f
    if-lez v6, :cond_2d3

    .line 1750
    add-int/lit8 v6, v6, -0x1

    .line 1751
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 1753
    .local v26, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_32e

    .line 1754
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    invoke-virtual {v0, v1, v8, v7, v2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1759
    :cond_32e
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v24

    if-eq v0, v1, :cond_34d

    .line 1760
    move/from16 v0, v24

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 1765
    :try_start_340
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_34d
    .catch Landroid/os/RemoteException; {:try_start_340 .. :try_end_34d} :catch_466

    .line 1770
    :cond_34d
    :goto_34d
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1776
    move-object/from16 v0, v26

    if-ne v0, v11, :cond_436

    .line 1777
    add-int/lit8 v10, v10, -0x1

    .line 1778
    if-lez v10, :cond_433

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v29

    .line 1780
    :goto_375
    goto :goto_30f

    .line 1602
    .end local v5           #curTokenIndex:I
    .end local v6           #curWallpaperIndex:I
    .end local v20           #token:Lcom/android/server/wm/WindowToken;
    .end local v24           #visible:Z
    .end local v26           #wallpaper:Lcom/android/server/wm/WindowState;
    .restart local v19       #oldW:Lcom/android/server/wm/WindowState;
    :cond_376
    const/16 v16, 0x0

    goto/16 :goto_166

    .line 1604
    .restart local v16       #oldAnim:Z
    :cond_37a
    const/4 v9, 0x0

    goto/16 :goto_17f

    .line 1647
    .restart local v9       #foundAnim:Z
    .restart local v17       #oldI:I
    :cond_37d
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1648
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1b5

    .line 1654
    .end local v9           #foundAnim:Z
    .end local v16           #oldAnim:Z
    .end local v17           #oldI:I
    .end local v19           #oldW:Lcom/android/server/wm/WindowState;
    :cond_389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1b5

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_3c1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_40a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_40a

    :cond_3c1
    const/4 v14, 0x1

    .line 1659
    .local v14, lowerAnimating:Z
    :goto_3c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-nez v29, :cond_3f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    if-eqz v29, :cond_40c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v29, v0

    if-eqz v29, :cond_40c

    :cond_3f2
    const/16 v23, 0x1

    .line 1662
    .local v23, upperAnimating:Z
    :goto_3f4
    if-eqz v14, :cond_3f8

    if-nez v23, :cond_1b5

    .line 1666
    :cond_3f8
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1667
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1b5

    .line 1656
    .end local v14           #lowerAnimating:Z
    .end local v23           #upperAnimating:Z
    :cond_40a
    const/4 v14, 0x0

    goto :goto_3c2

    .line 1659
    .restart local v14       #lowerAnimating:Z
    :cond_40c
    const/16 v23, 0x0

    goto :goto_3f4

    .line 1671
    .end local v14           #lowerAnimating:Z
    :cond_40f
    const/16 v24, 0x0

    goto/16 :goto_1b9

    .line 1681
    .restart local v24       #visible:Z
    :cond_413
    const/16 v29, 0x0

    goto/16 :goto_1d9

    .line 1705
    .restart local v15       #maxLayer:I
    .restart local v27       #wb:Lcom/android/server/wm/WindowState;
    :cond_417
    move-object/from16 v11, v27

    .line 1706
    add-int/lit8 v10, v10, -0x1

    .line 1707
    goto/16 :goto_1f3

    .line 1720
    .end local v15           #maxLayer:I
    .end local v27           #wb:Lcom/android/server/wm/WindowState;
    :cond_41d
    if-lez v10, :cond_42d

    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v11, v29

    :goto_42b
    goto/16 :goto_25b

    :cond_42d
    const/4 v11, 0x0

    goto :goto_42b

    .line 1742
    .restart local v5       #curTokenIndex:I
    .restart local v20       #token:Lcom/android/server/wm/WindowToken;
    :cond_42f
    const/16 v29, 0x0

    goto/16 :goto_2f7

    .line 1778
    .restart local v6       #curWallpaperIndex:I
    .restart local v26       #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_433
    const/4 v11, 0x0

    goto/16 :goto_375

    .line 1786
    :cond_436
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v18

    .line 1787
    .local v18, oldIndex:I
    if-ltz v18, :cond_451

    .line 1790
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1791
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1792
    move/from16 v0, v18

    if-ge v0, v10, :cond_451

    .line 1793
    add-int/lit8 v10, v10, -0x1

    .line 1803
    :cond_451
    move-object/from16 v0, v26

    invoke-virtual {v13, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1804
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1805
    or-int/lit8 v4, v4, 0x2

    .line 1806
    goto/16 :goto_30f

    .end local v6           #curWallpaperIndex:I
    .end local v18           #oldIndex:I
    .end local v20           #token:Lcom/android/server/wm/WindowToken;
    .end local v26           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_462
    move/from16 v29, v4

    .line 1809
    goto/16 :goto_102

    .line 1766
    .restart local v6       #curWallpaperIndex:I
    .restart local v20       #token:Lcom/android/server/wm/WindowToken;
    .restart local v26       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_466
    move-exception v29

    goto/16 :goto_34d
.end method

.method applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z
    .registers 9
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v3, 0x1

    .line 2968
    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLocalAnimating:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    if-ne v4, p3, :cond_a

    .line 3023
    :cond_9
    :goto_9
    return v3

    .line 2978
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_4b

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2979
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2980
    .local v1, anim:I
    const/4 v2, -0x1

    .line 2981
    .local v2, attr:I
    const/4 v0, 0x0

    .line 2982
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_37

    .line 2983
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3007
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_31

    .line 3016
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3017
    iput-boolean p3, p1, Lcom/android/server/wm/WindowState;->mAnimationIsEntrance:Z

    .line 3023
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_31
    :goto_31
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    .line 2985
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_37
    sparse-switch p2, :sswitch_data_50

    .line 2999
    :goto_3a
    if-ltz v2, :cond_2a

    .line 3000
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2a

    .line 2987
    :sswitch_43
    const/4 v2, 0x0

    .line 2988
    goto :goto_3a

    .line 2990
    :sswitch_45
    const/4 v2, 0x1

    .line 2991
    goto :goto_3a

    .line 2993
    :sswitch_47
    const/4 v2, 0x2

    .line 2994
    goto :goto_3a

    .line 2996
    :sswitch_49
    const/4 v2, 0x3

    goto :goto_3a

    .line 3020
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->clearAnimation()V

    goto :goto_31

    .line 2985
    nop

    :sswitch_data_50
    .sparse-switch
        0x1001 -> :sswitch_43
        0x1003 -> :sswitch_47
        0x2002 -> :sswitch_45
        0x2004 -> :sswitch_49
    .end sparse-switch
.end method

.method applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 2957
    const/16 v0, 0x1003

    .line 2958
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_b

    .line 2959
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2960
    const/16 v0, 0x1001

    .line 2963
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 2964
    return-void
.end method

.method public canStatusBarHide()Z
    .registers 2

    .prologue
    .line 7210
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->canStatusBarHide()Z

    move-result v0

    return v0
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v1, 0x1

    .line 3182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 3195
    :cond_b
    :goto_b
    return v1

    .line 3186
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    .line 3190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3194
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    const/4 v1, 0x0

    goto :goto_b
.end method

.method checkDrawnWindowsLocked()V
    .registers 8

    .prologue
    const/16 v6, 0x18

    .line 8924
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_70

    .line 8925
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, j:I
    :goto_12
    if-ltz v0, :cond_70

    .line 8926
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 8927
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 8931
    .local v2, win:Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-nez v3, :cond_59

    .line 8934
    :cond_2a
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8936
    :try_start_44
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4c} :catch_73

    .line 8939
    :goto_4c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8940
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 8925
    :cond_56
    :goto_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 8941
    :cond_59
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    if-eqz v3, :cond_56

    .line 8944
    :try_start_5d
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/IRemoteCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_65} :catch_71

    .line 8947
    :goto_65
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8948
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v6, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_56

    .line 8952
    .end local v0           #j:I
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_70
    return-void

    .line 8945
    .restart local v0       #j:I
    .restart local v1       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    .restart local v2       #win:Lcom/android/server/wm/WindowState;
    :catch_71
    move-exception v3

    goto :goto_65

    .line 8937
    :catch_73
    move-exception v3

    goto :goto_4c
.end method

.method public clearForcedDisplaySize()V
    .registers 5

    .prologue
    .line 7202
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 7203
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    .line 7204
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_size_forced"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7206
    monitor-exit v1

    .line 7207
    return-void

    .line 7206
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 6
    .parameter "reason"

    .prologue
    .line 4656
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4657
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_21

    .line 4658
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4659
    .local v1, w:Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_23

    if-eqz v2, :cond_1e

    .line 4661
    :try_start_19
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_26

    .line 4657
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 4666
    .end local v1           #w:Lcom/android/server/wm/WindowState;
    :cond_21
    :try_start_21
    monitor-exit v3

    .line 4667
    return-void

    .line 4666
    .end local v0           #i:I
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v2

    .line 4662
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/wm/WindowState;
    :catch_26
    move-exception v2

    goto :goto_1e
.end method

.method computeForcedAppOrientationLocked()I
    .registers 3

    .prologue
    .line 3533
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 3534
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 3535
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 3537
    :cond_b
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .prologue
    .line 5889
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 5890
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5891
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_13

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v1, :cond_13

    .line 5893
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5894
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 5896
    :cond_13
    monitor-exit v2

    return-object v0

    .line 5897
    .end local v0           #config:Landroid/content/res/Configuration;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .registers 3

    .prologue
    .line 5901
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 5902
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v1, 0x0

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 5903
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 5904
    const/4 v0, 0x0

    .line 5906
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_f
    return-object v0
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .registers 19
    .parameter "config"

    .prologue
    .line 6055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_8

    .line 6056
    const/4 v1, 0x0

    .line 6151
    :goto_7
    return v1

    .line 6059
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputManager;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 6062
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_164

    :cond_1f
    const/4 v2, 0x1

    .line 6064
    .local v2, rotated:Z
    :goto_20
    if-eqz v2, :cond_167

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6065
    .local v15, realdw:I
    :goto_26
    if-eqz v2, :cond_16d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6067
    .local v14, realdh:I
    :goto_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6068
    :try_start_31
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eqz v1, :cond_184

    .line 6069
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6070
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 6071
    if-le v15, v14, :cond_173

    .line 6073
    int-to-float v1, v14

    const v6, 0x3fa66666

    div-float/2addr v1, v6

    float-to-int v12, v1

    .line 6074
    .local v12, maxw:I
    if-ge v12, v15, :cond_4d

    .line 6075
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6088
    .end local v12           #maxw:I
    :cond_4d
    :goto_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_181

    .line 6090
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6091
    .local v3, dw:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    .line 6093
    .local v4, dh:I
    const/4 v13, 0x3

    .line 6094
    .local v13, orientation:I
    if-ge v3, v4, :cond_18e

    .line 6095
    const/4 v13, 0x1

    .line 6099
    :cond_5a
    :goto_5a
    move-object/from16 v0, p1

    iput v13, v0, Landroid/content/res/Configuration;->orientation:I

    .line 6102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v5, v6, v0}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 6105
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 6106
    .local v9, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v8

    .line 6107
    .local v8, appWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v7

    .line 6108
    .local v7, appHeight:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6109
    :try_start_96
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 6110
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 6111
    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_193

    .line 6116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {v1, v9, v5, v6}, Landroid/view/Display;->getMetricsWithSize(Landroid/util/DisplayMetrics;II)V

    .line 6118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v9, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    .line 6121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 6123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v3, v4, v5}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v1

    int-to-float v1, v1

    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 6125
    iget v5, v9, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->computeSmallestWidthAndScreenLayout(ZIIFLandroid/content/res/Configuration;)V

    .line 6127
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 6128
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    div-float/2addr v1, v5

    float-to-int v1, v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 6129
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3, v4}, Lcom/android/server/wm/WindowManagerService;->computeCompatSmallestWidth(ZLandroid/util/DisplayMetrics;II)I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 6132
    move-object/from16 v0, p1

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_196

    const/4 v10, 0x1

    .line 6133
    .local v10, hardKeyboardAvailable:Z
    :goto_11d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v10, v1, :cond_13e

    .line 6134
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 6135
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6140
    :cond_13e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-nez v1, :cond_149

    .line 6141
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 6147
    :cond_149
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 6148
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 6149
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 6150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    .line 6151
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 6062
    .end local v2           #rotated:Z
    .end local v3           #dw:I
    .end local v4           #dh:I
    .end local v7           #appHeight:I
    .end local v8           #appWidth:I
    .end local v9           #dm:Landroid/util/DisplayMetrics;
    .end local v10           #hardKeyboardAvailable:Z
    .end local v13           #orientation:I
    .end local v14           #realdh:I
    .end local v15           #realdw:I
    :cond_164
    const/4 v2, 0x0

    goto/16 :goto_20

    .line 6064
    .restart local v2       #rotated:Z
    :cond_167
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    goto/16 :goto_26

    .line 6065
    .restart local v15       #realdw:I
    :cond_16d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto/16 :goto_2c

    .line 6079
    .restart local v14       #realdh:I
    :cond_173
    int-to-float v1, v15

    const v6, 0x3fa66666

    div-float/2addr v1, v6

    float-to-int v11, v1

    .line 6080
    .local v11, maxh:I
    if-ge v11, v14, :cond_4d

    .line 6081
    :try_start_17b
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    goto/16 :goto_4d

    .line 6088
    .end local v11           #maxh:I
    :catchall_181
    move-exception v1

    monitor-exit v5
    :try_end_183
    .catchall {:try_start_17b .. :try_end_183} :catchall_181

    throw v1

    .line 6085
    :cond_184
    :try_start_184
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    .line 6086
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I
    :try_end_18c
    .catchall {:try_start_184 .. :try_end_18c} :catchall_181

    goto/16 :goto_4d

    .line 6096
    .restart local v3       #dw:I
    .restart local v4       #dh:I
    .restart local v13       #orientation:I
    :cond_18e
    if-le v3, v4, :cond_5a

    .line 6097
    const/4 v13, 0x2

    goto/16 :goto_5a

    .line 6111
    .restart local v7       #appHeight:I
    .restart local v8       #appWidth:I
    .restart local v9       #dm:Landroid/util/DisplayMetrics;
    :catchall_193
    move-exception v1

    :try_start_194
    monitor-exit v5
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_193

    throw v1

    .line 6132
    :cond_196
    const/4 v10, 0x0

    goto :goto_11d
.end method

.method createWatermark()V
    .registers 10

    .prologue
    .line 9372
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v6, :cond_5

    .line 9398
    :cond_4
    :goto_4
    return-void

    .line 9376
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/etc/setup.conf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9377
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 9379
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_3d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_46

    .line 9380
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_12
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9381
    .local v3, ind:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 9382
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_33

    .line 9383
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 9384
    .local v5, toks:[Ljava/lang/String;
    if-eqz v5, :cond_33

    array-length v6, v5

    if-lez v6, :cond_33

    .line 9385
    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, v7, v8, v5}, Lcom/android/server/wm/Watermark;-><init>(Landroid/util/DisplayMetrics;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_58
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_33} :catch_5e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_33} :catch_5b

    .line 9391
    .end local v5           #toks:[Ljava/lang/String;
    :cond_33
    if-eqz v2, :cond_61

    .line 9393
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3a

    move-object v1, v2

    .line 9395
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 9394
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_3a
    move-exception v6

    move-object v1, v2

    .line 9395
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 9388
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catch_3d
    move-exception v6

    .line 9391
    :goto_3e
    if-eqz v1, :cond_4

    .line 9393
    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_4

    .line 9394
    :catch_44
    move-exception v6

    goto :goto_4

    .line 9389
    :catch_46
    move-exception v6

    .line 9391
    :goto_47
    if-eqz v1, :cond_4

    .line 9393
    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_4

    .line 9394
    :catch_4d
    move-exception v6

    goto :goto_4

    .line 9391
    :catchall_4f
    move-exception v6

    :goto_50
    if-eqz v1, :cond_55

    .line 9393
    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 9395
    :cond_55
    :goto_55
    throw v6

    .line 9394
    :catch_56
    move-exception v7

    goto :goto_55

    .line 9391
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catchall_58
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_50

    .line 9389
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_5b
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_47

    .line 9388
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_5e
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3e

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #ind:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :cond_61
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public detectSafeMode()Z
    .registers 4

    .prologue
    .line 6471
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v0

    if-nez v0, :cond_11

    .line 6473
    const-string v0, "WindowManager"

    const-string v1, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6478
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 6479
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 4576
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4578
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4581
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4582
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v0, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4583
    monitor-exit v1

    .line 4584
    return-void

    .line 4583
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public dismissKeyguard()V
    .registers 3

    .prologue
    .line 4646
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4648
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4650
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4651
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->dismissKeyguardLw()V

    .line 4652
    monitor-exit v1

    .line 4653
    return-void

    .line 4652
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public displayReady()V
    .registers 11

    .prologue
    .line 6483
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 6484
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_12

    .line 6485
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Display already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6507
    :catchall_f
    move-exception v0

    monitor-exit v9
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 6487
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 6488
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 6489
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_f

    .line 6490
    :try_start_25
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6491
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6492
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 6493
    .local v6, rot:I
    const/4 v0, 0x1

    if-eq v6, v0, :cond_41

    const/4 v0, 0x3

    if-ne v6, v0, :cond_49

    .line 6496
    :cond_41
    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6497
    .local v7, tmp:I
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    .line 6498
    iput v7, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    .line 6500
    .end local v7           #tmp:I
    :cond_49
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    .line 6501
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    .line 6502
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_25 .. :try_end_5a} :catchall_90

    .line 6503
    :try_start_5a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->setDisplaySize(IIIII)V

    .line 6506
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->setInitialDisplaySize(II)V

    .line 6507
    monitor-exit v9
    :try_end_82
    .catchall {:try_start_5a .. :try_end_82} :catchall_f

    .line 6510
    :try_start_82
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_88} :catch_96

    .line 6514
    :goto_88
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6515
    :try_start_8b
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplaySizeLocked()V

    .line 6516
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_93

    .line 6517
    return-void

    .line 6502
    .end local v6           #rot:I
    :catchall_90
    move-exception v0

    :try_start_91
    monitor-exit v1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_f

    .line 6516
    .restart local v6       #rot:I
    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v0

    .line 6511
    :catch_96
    move-exception v0

    goto :goto_88
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 9860
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    .line 9862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9965
    :cond_33
    :goto_33
    return-void

    .line 9868
    :cond_34
    const/4 v6, 0x0

    .line 9870
    .local v6, dumpAll:Z
    const/4 v5, 0x0

    .line 9871
    .local v5, opti:I
    :goto_36
    array-length v0, p3

    if-ge v5, v0, :cond_4c

    .line 9872
    aget-object v7, p3, v5

    .line 9873
    .local v7, opt:Ljava/lang/String;
    if-eqz v7, :cond_4c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_67

    .line 9901
    .end local v7           #opt:Ljava/lang/String;
    :cond_4c
    array-length v0, p3

    if-ge v5, v0, :cond_19b

    .line 9902
    aget-object v3, p3, v5

    .line 9903
    .local v3, cmd:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 9904
    const-string v0, "input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "i"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 9905
    :cond_63
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService;->dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    goto :goto_33

    .line 9876
    .end local v3           #cmd:Ljava/lang/String;
    .restart local v7       #opt:Ljava/lang/String;
    :cond_67
    add-int/lit8 v5, v5, 0x1

    .line 9877
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 9878
    const/4 v6, 0x1

    goto :goto_36

    .line 9879
    :cond_73
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 9880
    const-string v0, "Window manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9881
    const-string v0, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9882
    const-string v0, "  cmd may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9883
    const-string v0, "    i[input]: input subsystem state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9884
    const-string v0, "    p[policy]: policy state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9885
    const-string v0, "    s[essions]: active sessions"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9886
    const-string v0, "    t[okens]: token list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9887
    const-string v0, "    w[indows]: window list"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9888
    const-string v0, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9889
    const-string v0, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9890
    const-string v0, "    Window hex object identifier, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9891
    const-string v0, "    \"all\" for all windows, or"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9892
    const-string v0, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9893
    const-string v0, "  -a: include all available server state."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 9896
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; use -h for help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_36

    .line 9907
    .end local v7           #opt:Ljava/lang/String;
    .restart local v3       #cmd:Ljava/lang/String;
    :cond_e1
    const-string v0, "policy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    const-string v0, "p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 9908
    :cond_f1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9909
    const/4 v0, 0x1

    :try_start_f5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 9910
    monitor-exit v1

    goto/16 :goto_33

    :catchall_fb
    move-exception v0

    monitor-exit v1
    :try_end_fd
    .catchall {:try_start_f5 .. :try_end_fd} :catchall_fb

    throw v0

    .line 9912
    :cond_fe
    const-string v0, "sessions"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    const-string v0, "s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 9913
    :cond_10e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9914
    const/4 v0, 0x1

    :try_start_112
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9915
    monitor-exit v1

    goto/16 :goto_33

    :catchall_118
    move-exception v0

    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_112 .. :try_end_11a} :catchall_118

    throw v0

    .line 9917
    :cond_11b
    const-string v0, "tokens"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12b

    const-string v0, "t"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 9918
    :cond_12b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9919
    const/4 v0, 0x1

    :try_start_12f
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9920
    monitor-exit v1

    goto/16 :goto_33

    :catchall_135
    move-exception v0

    monitor-exit v1
    :try_end_137
    .catchall {:try_start_12f .. :try_end_137} :catchall_135

    throw v0

    .line 9922
    :cond_138
    const-string v0, "windows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    const-string v0, "w"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 9923
    :cond_148
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9924
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_14d
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9925
    monitor-exit v1

    goto/16 :goto_33

    :catchall_153
    move-exception v0

    monitor-exit v1
    :try_end_155
    .catchall {:try_start_14d .. :try_end_155} :catchall_153

    throw v0

    .line 9927
    :cond_156
    const-string v0, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_166

    const-string v0, "a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 9928
    :cond_166
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9929
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_16b
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9930
    monitor-exit v1

    goto/16 :goto_33

    :catchall_171
    move-exception v0

    monitor-exit v1
    :try_end_173
    .catchall {:try_start_16b .. :try_end_173} :catchall_171

    throw v0

    :cond_174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 9934
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_33

    .line 9935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad window command, or no windows match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9936
    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 9942
    .end local v3           #cmd:Ljava/lang/String;
    :cond_19b
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9944
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9945
    if-eqz v6, :cond_1a8

    .line 9946
    :try_start_1a3
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9948
    :cond_1a8
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 9949
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9950
    if-eqz v6, :cond_1b5

    .line 9951
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9953
    :cond_1b5
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9954
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9955
    if-eqz v6, :cond_1c2

    .line 9956
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9958
    :cond_1c2
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 9959
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9960
    if-eqz v6, :cond_1cf

    .line 9961
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9963
    :cond_1cf
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v6, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9964
    monitor-exit v1

    goto/16 :goto_33

    :catchall_1d6
    move-exception v0

    monitor-exit v1
    :try_end_1d8
    .catchall {:try_start_1a3 .. :try_end_1d8} :catchall_1d6

    throw v0
.end method

.method dumpAppTokensLocked()V
    .registers 5

    .prologue
    .line 4262
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_39

    .line 4263
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4265
    :cond_39
    return-void
.end method

.method dumpInput(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 5
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    .line 9487
    const-string v0, "WINDOW MANAGER INPUT (dumpsys window input)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9488
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/InputManager;->dump(Ljava/io/PrintWriter;)V

    .line 9489
    return-void
.end method

.method dumpPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"
    .parameter "dumpAll"

    .prologue
    .line 9492
    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9493
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9494
    return-void
.end method

.method dumpSessionsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 7
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    .line 9596
    const-string v2, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9597
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 9598
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9599
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 9600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .line 9601
    .local v1, s:Lcom/android/server/wm/Session;
    const-string v2, "  Session "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 9602
    const-string v2, "    "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_13

    .line 9605
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/Session;>;"
    .end local v1           #s:Lcom/android/server/wm/Session;
    :cond_32
    return-void
.end method

.method dumpTokensLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 10
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x3a

    .line 9497
    const-string v3, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9498
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_45

    .line 9499
    const-string v3, "  All tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9500
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9501
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 9502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9503
    .local v2, token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Token "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9504
    if-eqz p3, :cond_41

    .line 9505
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9506
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_20

    .line 9508
    :cond_41
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_20

    .line 9512
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowToken;>;"
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_45
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_86

    .line 9513
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9514
    const-string v3, "  Wallpaper tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9515
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_5d
    if-ltz v0, :cond_86

    .line 9516
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9517
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Wallpaper #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9518
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9519
    if-eqz p3, :cond_82

    .line 9520
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9521
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9515
    :goto_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5d

    .line 9523
    :cond_82
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_7f

    .line 9527
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_86
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b9

    .line 9528
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9529
    const-string v3, "  Application tokens in Z order:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9530
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_9e
    if-ltz v0, :cond_b9

    .line 9531
    const-string v3, "  App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9532
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9530
    add-int/lit8 v0, v0, -0x1

    goto :goto_9e

    .line 9535
    .end local v0           #i:I
    :cond_b9
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_fa

    .line 9536
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9537
    const-string v3, "  Finishing start of application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9538
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_d1
    if-ltz v0, :cond_fa

    .line 9539
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9540
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Finished Starting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9541
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9542
    if-eqz p3, :cond_f6

    .line 9543
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9544
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9538
    :goto_f3
    add-int/lit8 v0, v0, -0x1

    goto :goto_d1

    .line 9546
    :cond_f6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_f3

    .line 9550
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_fa
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13b

    .line 9551
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9552
    const-string v3, "  Exiting tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9553
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_112
    if-ltz v0, :cond_13b

    .line 9554
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9555
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9556
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9557
    if-eqz p3, :cond_137

    .line 9558
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9559
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9553
    :goto_134
    add-int/lit8 v0, v0, -0x1

    goto :goto_112

    .line 9561
    :cond_137
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_134

    .line 9565
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_13b
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17c

    .line 9566
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9567
    const-string v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9568
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .restart local v0       #i:I
    :goto_153
    if-ltz v0, :cond_17c

    .line 9569
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 9570
    .restart local v2       #token:Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9571
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9572
    if-eqz p3, :cond_178

    .line 9573
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 9574
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9568
    :goto_175
    add-int/lit8 v0, v0, -0x1

    goto :goto_153

    .line 9576
    :cond_178
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_175

    .line 9580
    .end local v0           #i:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    :cond_17c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9581
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_191

    .line 9582
    const-string v3, "  mOpeningApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9584
    :cond_191
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a3

    .line 9585
    const-string v3, "  mClosingApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9587
    :cond_1a3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1b5

    .line 9588
    const-string v3, "  mToTopApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9590
    :cond_1b5
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c7

    .line 9591
    const-string v3, "  mToBottomApps="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9593
    :cond_1c7
    return-void
.end method

.method dumpWindows(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 13
    .parameter "fd"
    .parameter "pw"
    .parameter "name"
    .parameter "args"
    .parameter "opti"
    .parameter "dumpAll"

    .prologue
    .line 9816
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9817
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v4, "visible"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 9818
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9819
    :try_start_10
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_2c

    .line 9820
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9821
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    if-eqz v4, :cond_29

    .line 9822
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9819
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 9825
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_35

    .line 9848
    :goto_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_7c

    .line 9849
    const/4 v4, 0x0

    .line 9855
    :goto_34
    return v4

    .line 9825
    .end local v0           #i:I
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v4

    .line 9827
    :cond_38
    const/4 v1, 0x0

    .line 9830
    .local v1, objectId:I
    const/16 v4, 0x10

    :try_start_3b
    invoke-static {p3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3e} :catch_88

    move-result v1

    .line 9831
    const/4 p3, 0x0

    .line 9834
    :goto_40
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9835
    :try_start_43
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0       #i:I
    :goto_4b
    if-ltz v0, :cond_7a

    .line 9836
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9837
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_6d

    .line 9838
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 9839
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9835
    :cond_6a
    :goto_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4b

    .line 9841
    :cond_6d
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v1, :cond_6a

    .line 9842
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 9845
    .end local v0           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_77
    move-exception v4

    monitor-exit v5
    :try_end_79
    .catchall {:try_start_43 .. :try_end_79} :catchall_77

    throw v4

    .restart local v0       #i:I
    :cond_7a
    :try_start_7a
    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_77

    goto :goto_2d

    .line 9852
    .end local v1           #objectId:I
    :cond_7c
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 9853
    :try_start_7f
    invoke-virtual {p0, p1, p2, p6, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 9854
    monitor-exit v5

    .line 9855
    const/4 v4, 0x1

    goto :goto_34

    .line 9854
    :catchall_85
    move-exception v4

    monitor-exit v5
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_85

    throw v4

    .line 9832
    .end local v0           #i:I
    .restart local v1       #objectId:I
    :catch_88
    move-exception v4

    goto :goto_40
.end method

.method dumpWindowsLocked()V
    .registers 5

    .prologue
    .line 4268
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_35

    .line 4269
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4271
    :cond_35
    return-void
.end method

.method dumpWindowsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 12
    .parameter "fd"
    .parameter "pw"
    .parameter "dumpAll"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v4, 0x1

    const/16 v6, 0x20

    .line 9609
    const-string v3, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9610
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_10
    if-ltz v0, :cond_44

    .line 9611
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9612
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_22

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 9613
    :cond_22
    const-string v3, "  Window #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9614
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9615
    const-string v5, "    "

    if-nez p3, :cond_3b

    if-eqz p4, :cond_42

    :cond_3b
    move v3, v4

    :goto_3c
    invoke-virtual {v2, p2, v5, v3}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9610
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 9615
    :cond_42
    const/4 v3, 0x0

    goto :goto_3c

    .line 9618
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_44
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_81

    .line 9619
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9620
    const-string v3, "  Input method dialogs:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9621
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_5c
    if-ltz v0, :cond_81

    .line 9622
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9623
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_6e

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 9624
    :cond_6e
    const-string v3, "  IM Dialog #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9621
    :cond_7e
    add-int/lit8 v0, v0, -0x1

    goto :goto_5c

    .line 9628
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_81
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_cc

    .line 9629
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9630
    const-string v3, "  Remove pending for:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9631
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_99
    if-ltz v0, :cond_cc

    .line 9632
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9633
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_ab

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 9634
    :cond_ab
    const-string v3, "  Remove #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9635
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9636
    if-eqz p3, :cond_c8

    .line 9637
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9638
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9631
    :cond_c5
    :goto_c5
    add-int/lit8 v0, v0, -0x1

    goto :goto_99

    .line 9640
    :cond_c8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_c5

    .line 9645
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_cc
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v3, :cond_113

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_113

    .line 9646
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9647
    const-string v3, "  Windows force removing:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9648
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_e8
    if-ltz v0, :cond_113

    .line 9649
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9650
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    const-string v3, "  Removing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9651
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9652
    if-eqz p3, :cond_10f

    .line 9653
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9654
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9648
    :goto_10c
    add-int/lit8 v0, v0, -0x1

    goto :goto_e8

    .line 9656
    :cond_10f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_10c

    .line 9660
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_113
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15e

    .line 9661
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9662
    const-string v3, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9663
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_12b
    if-ltz v0, :cond_15e

    .line 9664
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9665
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_13d

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    .line 9666
    :cond_13d
    const-string v3, "  Destroy #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9667
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9668
    if-eqz p3, :cond_15a

    .line 9669
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9670
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9663
    :cond_157
    :goto_157
    add-int/lit8 v0, v0, -0x1

    goto :goto_12b

    .line 9672
    :cond_15a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_157

    .line 9677
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_15e
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a9

    .line 9678
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9679
    const-string v3, "  Windows losing focus:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9680
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_176
    if-ltz v0, :cond_1a9

    .line 9681
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9682
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_188

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a2

    .line 9683
    :cond_188
    const-string v3, "  Losing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9684
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9685
    if-eqz p3, :cond_1a5

    .line 9686
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9687
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9680
    :cond_1a2
    :goto_1a2
    add-int/lit8 v0, v0, -0x1

    goto :goto_176

    .line 9689
    :cond_1a5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1a2

    .line 9694
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1a9
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1f4

    .line 9695
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9696
    const-string v3, "  Windows waiting to resize:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9697
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1c1
    if-ltz v0, :cond_1f4

    .line 9698
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 9699
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_1d3

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ed

    .line 9700
    :cond_1d3
    const-string v3, "  Resizing #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 9701
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9702
    if-eqz p3, :cond_1f0

    .line 9703
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9704
    const-string v3, "    "

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 9697
    :cond_1ed
    :goto_1ed
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c1

    .line 9706
    :cond_1f0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1ed

    .line 9711
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1f4
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_233

    .line 9712
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9713
    const-string v3, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9714
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_20c
    if-ltz v0, :cond_233

    .line 9715
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 9716
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    const-string v3, "  Waiting #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9717
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9714
    add-int/lit8 v0, v0, -0x1

    goto :goto_20c

    .line 9720
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_233
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9721
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_4a7

    .line 9722
    const-string v3, "  Display: init="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9723
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " base="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9724
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9725
    const-string v3, " cur="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9726
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9727
    const-string v3, " app="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9728
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9729
    const-string v3, " raw="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawWidth()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9730
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRawHeight()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9734
    :goto_2a6
    const-string v3, "  mCurConfiguration="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9735
    const-string v3, "  mCurrentFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9736
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v3, v4, :cond_2ca

    .line 9737
    const-string v3, "  mLastFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9739
    :cond_2ca
    const-string v3, "  mFocusedApp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9740
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_2e2

    .line 9741
    const-string v3, "  mInputMethodTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9743
    :cond_2e2
    const-string v3, "  mInTouchMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9744
    const-string v3, " mLayoutSeq="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9745
    if-eqz p3, :cond_4a6

    .line 9746
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v3, :cond_30a

    .line 9747
    const-string v3, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9748
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9750
    :cond_30a
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_318

    .line 9751
    const-string v3, "  mInputMethodWindow="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9753
    :cond_318
    const-string v3, "  mWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9754
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_33e

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_33e

    .line 9755
    const-string v3, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9756
    const-string v3, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9758
    :cond_33e
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_34c

    .line 9759
    const-string v3, "  mWindowDetachedWallpaper="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9761
    :cond_34c
    const-string v3, "  mLastWallpaperX="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 9762
    const-string v3, " mLastWallpaperY="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 9763
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    if-nez v3, :cond_368

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    if-eqz v3, :cond_37c

    .line 9765
    :cond_368
    const-string v3, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9766
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9767
    const-string v3, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9768
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9770
    :cond_37c
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    if-eqz v3, :cond_38c

    .line 9771
    const-string v3, "  mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9772
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimSurface;

    const-string v4, "    "

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimSurface;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9774
    :cond_38c
    const-string v3, "  mSystemBooted="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9775
    const-string v3, " mDisplayEnabled="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9776
    const-string v3, "  mLayoutNeeded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9777
    const-string v3, " mBlurShown="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9778
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    if-eqz v3, :cond_4ae

    .line 9779
    const-string v3, "  mDimAnimator:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9780
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    const-string v4, "    "

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimAnimator;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9784
    :goto_3c4
    const-string v3, "  mDisplayFrozen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9785
    const-string v3, " mWindowsFreezingScreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9786
    const-string v3, " mAppsFreezingScreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9787
    const-string v3, " mWaitingForConfig="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9788
    const-string v3, "  mRotation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9789
    const-string v3, " mAltOrientation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9790
    const-string v3, "  mLastWindowForcedOrientation"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 9791
    const-string v3, " mForcedAppOrientation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9792
    const-string v3, "  mDeferredRotationPauseCount="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 9793
    const-string v3, "  mAnimationPending="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9794
    const-string v3, " mWindowAnimationScale="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 9795
    const-string v3, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 9796
    const-string v3, "  mNextAppTransition=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9797
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9798
    const-string v3, " mAppTransitionReady="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9799
    const-string v3, "  mAppTransitionRunning="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9800
    const-string v3, " mAppTransitionTimeout="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9801
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v3, :cond_492

    .line 9802
    const-string v3, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9803
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9804
    const-string v3, " mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9805
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9806
    const-string v3, " mNextAppTransitionExit=0x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9807
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9809
    :cond_492
    const-string v3, "  mStartingIconInTransition="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9810
    const-string v3, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9812
    :cond_4a6
    return-void

    .line 9732
    :cond_4a7
    const-string v3, "  NO DISPLAY"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2a6

    .line 9782
    :cond_4ae
    const-string v3, "  no DimAnimator "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3c4
.end method

.method public enableScreenAfterBoot()V
    .registers 6

    .prologue
    .line 4829
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4838
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_9

    .line 4839
    monitor-exit v2

    .line 4852
    :goto_8
    return-void

    .line 4841
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 4842
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    .line 4845
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4846
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4847
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_28

    .line 4849
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->systemBooted()V

    .line 4851
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_8

    .line 4847
    .end local v0           #msg:Landroid/os/Message;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .registers 4

    .prologue
    .line 4863
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    .line 4870
    :cond_4
    :goto_4
    return-void

    .line 4866
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_4

    .line 4869
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public executeAppTransition()V
    .registers 6

    .prologue
    .line 3668
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3670
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3673
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3680
    :try_start_15
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_27

    .line 3681
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 3682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3683
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3686
    .end local v0           #origId:J
    :cond_27
    monitor-exit v3

    .line 3687
    return-void

    .line 3686
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 4618
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4620
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4622
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4631
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 4
    .parameter "token"

    .prologue
    .line 3199
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 3200
    .local v0, wtoken:Lcom/android/server/wm/WindowToken;
    if-nez v0, :cond_c

    .line 3201
    const/4 v1, 0x0

    .line 3203
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_b
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .registers 15
    .parameter "willMove"

    .prologue
    .line 1096
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 1097
    .local v5, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1098
    .local v0, N:I
    const/4 v8, 0x0

    .line 1099
    .local v8, w:Lcom/android/server/wm/WindowState;
    move v4, v0

    .line 1100
    .local v4, i:I
    :cond_8
    if-lez v4, :cond_3a

    .line 1101
    add-int/lit8 v4, v4, -0x1

    .line 1102
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/wm/WindowState;
    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 1106
    .restart local v8       #w:Lcom/android/server/wm/WindowState;
    invoke-static {v8}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1114
    if-nez p1, :cond_3a

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3a

    if-lez v4, :cond_3a

    .line 1117
    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 1118
    .local v9, wb:Lcom/android/server/wm/WindowState;
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v11, v12, :cond_3a

    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->canBeImeTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 1119
    add-int/lit8 v4, v4, -0x1

    .line 1120
    move-object v8, v9

    .line 1135
    .end local v9           #wb:Lcom/android/server/wm/WindowState;
    :cond_3a
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_5c

    if-eqz v8, :cond_5c

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v11

    if-eqz v11, :cond_5c

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v11, :cond_5c

    .line 1138
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_5c

    .line 1139
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1140
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1148
    :cond_5c
    if-eqz p1, :cond_b9

    if-eqz v8, :cond_b9

    .line 1149
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1150
    .local v1, curTarget:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_b9

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_b9

    .line 1156
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1157
    .local v7, token:Lcom/android/server/wm/AppWindowToken;
    const/4 v3, 0x0

    .line 1158
    .local v3, highestTarget:Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 1159
    .local v2, highestPos:I
    iget-boolean v11, v7, Lcom/android/server/wm/AppWindowToken;->animating:Z

    if-nez v11, :cond_74

    iget-object v11, v7, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_85

    .line 1160
    :cond_74
    const/4 v6, 0x0

    .line 1161
    .local v6, pos:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1162
    :goto_79
    if-ltz v6, :cond_85

    .line 1163
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 1164
    .local v10, win:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, v7, :cond_94

    .line 1178
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_85
    if-eqz v3, :cond_b9

    .line 1185
    iget v11, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a5

    .line 1188
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1189
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1190
    add-int/lit8 v11, v2, 0x1

    .line 1240
    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :goto_93
    return v11

    .line 1167
    .restart local v1       #curTarget:Lcom/android/server/wm/WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/wm/WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/wm/AppWindowToken;
    .restart local v10       #win:Lcom/android/server/wm/WindowState;
    :cond_94
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v11, :cond_a2

    .line 1168
    if-eqz v3, :cond_a0

    iget v11, v10, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_a2

    .line 1170
    :cond_a0
    move-object v3, v10

    .line 1171
    move v2, v6

    .line 1174
    :cond_a2
    add-int/lit8 v6, v6, -0x1

    .line 1175
    goto :goto_79

    .line 1191
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    :cond_a5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_b9

    iget v11, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_b9

    .line 1197
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1198
    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1199
    add-int/lit8 v11, v2, 0x1

    goto :goto_93

    .line 1206
    .end local v1           #curTarget:Lcom/android/server/wm/WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/wm/WindowState;
    .end local v7           #token:Lcom/android/server/wm/AppWindowToken;
    :cond_b9
    if-eqz v8, :cond_d5

    .line 1207
    if-eqz p1, :cond_cd

    .line 1217
    iput-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1218
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1219
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_d0

    .line 1220
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v11, v11, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1225
    :cond_cd
    :goto_cd
    add-int/lit8 v11, v4, 0x1

    goto :goto_93

    .line 1222
    :cond_d0
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_cd

    .line 1227
    :cond_d5
    if-eqz p1, :cond_de

    .line 1237
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 1238
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1240
    :cond_de
    const/4 v11, -0x1

    goto :goto_93
.end method

.method public finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 9
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2900
    .local v0, origId:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2901
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2902
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->finishDrawingLocked()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2903
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v3, v5

    if-eqz v3, :cond_20

    .line 2904
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2906
    :cond_20
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2907
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2909
    :cond_26
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2b

    .line 2910
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2911
    return-void

    .line 2909
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public freezeRotation(I)V
    .registers 5
    .parameter "rotation"

    .prologue
    const/4 v2, -0x1

    .line 5249
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 5251
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5253
    :cond_13
    if-lt p1, v2, :cond_18

    const/4 v0, 0x3

    if-le p1, v0, :cond_20

    .line 5254
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5260
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    if-ne p1, v2, :cond_27

    iget p1, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .end local p1
    :cond_27
    invoke-interface {v0, v1, p1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    .line 5262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5263
    return-void
.end method

.method public getAnimationScale(I)F
    .registers 3
    .parameter "which"

    .prologue
    .line 4713
    packed-switch p1, :pswitch_data_c

    .line 4717
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 4714
    :pswitch_5
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_4

    .line 4715
    :pswitch_8
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_4

    .line 4713
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .registers 4

    .prologue
    .line 4721
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .registers 5
    .parameter "token"

    .prologue
    .line 3571
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3572
    :try_start_3
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3573
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_10

    .line 3574
    const/4 v1, -0x1

    monitor-exit v2

    .line 3577
    :goto_f
    return v1

    :cond_10
    iget v1, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    monitor-exit v2

    goto :goto_f

    .line 3578
    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getDPadKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4797
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4799
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4801
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4765
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4767
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4769
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDisplaySize(Landroid/graphics/Point;)V
    .registers 4
    .parameter "size"

    .prologue
    .line 7059
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7060
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7061
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7062
    monitor-exit v1

    .line 7063
    return-void

    .line 7062
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getInitialDisplaySize(Landroid/graphics/Point;)V
    .registers 4
    .parameter "size"

    .prologue
    .line 7073
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7074
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7075
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7076
    monitor-exit v1

    .line 7077
    return-void

    .line 7076
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 3
    .parameter "deviceId"

    .prologue
    .line 4821
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .registers 2

    .prologue
    .line 4825
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4773
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4775
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4777
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4781
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4783
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4785
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getMaximumSizeDimension()I
    .registers 4

    .prologue
    .line 7080
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7082
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    if-le v0, v2, :cond_d

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayWidth:I

    :goto_b
    monitor-exit v1

    return v0

    :cond_d
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mBaseDisplayHeight:I

    goto :goto_b

    .line 7084
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getMouseCursorType()I
    .registers 2

    .prologue
    .line 6457
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0}, Lcom/android/server/wm/InputManager;->getMouseCursorType()I

    move-result v0

    return v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .registers 12

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x3

    .line 3373
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 3374
    .local v6, pos:I
    const/4 v0, 0x0

    .line 3375
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 3376
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 3377
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 3378
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 3379
    .local v3, lastFullscreen:Z
    :cond_f
    :goto_f
    if-ltz v6, :cond_52

    .line 3380
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 3381
    .local v7, wtoken:Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 3387
    if-nez v1, :cond_25

    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v8, :cond_25

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_f

    .line 3394
    :cond_25
    if-nez v2, :cond_3d

    .line 3396
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_f

    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_f

    .line 3401
    const/4 v2, 0x1

    .line 3402
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3403
    iget v4, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3417
    :cond_34
    iget v5, v7, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3421
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    .line 3422
    if-eqz v3, :cond_47

    if-eq v5, v10, :cond_47

    .line 3439
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3c
    :goto_3c
    return v5

    .line 3404
    .restart local v7       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3d
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_34

    .line 3410
    if-eq v4, v10, :cond_34

    if-eqz v3, :cond_34

    move v5, v4

    .line 3414
    goto :goto_3c

    .line 3430
    .restart local v5       #or:I
    :cond_47
    if-eq v5, v9, :cond_4b

    if-ne v5, v10, :cond_3c

    .line 3436
    :cond_4b
    if-ne v5, v10, :cond_50

    const/4 v8, 0x1

    :goto_4e
    or-int/2addr v1, v8

    .line 3437
    goto :goto_f

    .line 3436
    :cond_50
    const/4 v8, 0x0

    goto :goto_4e

    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_52
    move v5, v9

    .line 3439
    goto :goto_3c
.end method

.method public getOrientationFromWindowsLocked()I
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 3340
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_15

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 3346
    :cond_15
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    .line 3369
    :goto_17
    return v1

    .line 3349
    :cond_18
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 3350
    .local v0, pos:I
    :cond_20
    if-ltz v0, :cond_4a

    .line 3351
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3352
    .local v2, wtoken:Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 3353
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_34

    .line 3356
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_17

    .line 3358
    :cond_34
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-boolean v4, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v4, :cond_20

    .line 3361
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3362
    .local v1, req:I
    if-eq v1, v3, :cond_20

    const/4 v4, 0x3

    if-eq v1, v4, :cond_20

    .line 3366
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    goto :goto_17

    .line 3369
    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/wm/WindowState;
    :cond_4a
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWindowForcedOrientation:I

    move v1, v3

    goto :goto_17
.end method

.method public getPendingAppTransition()I
    .registers 2

    .prologue
    .line 3655
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .registers 8

    .prologue
    const/16 v2, 0x55

    const/16 v3, 0x53

    const/16 v1, 0x51

    .line 5496
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5497
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    .line 5499
    .local v0, rotation:I
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_23

    .line 5501
    packed-switch v0, :pswitch_data_30

    .line 5504
    monitor-exit v4

    .line 5523
    :goto_17
    return v1

    .line 5506
    :pswitch_18
    monitor-exit v4

    move v1, v2

    goto :goto_17

    .line 5508
    :pswitch_1b
    monitor-exit v4

    goto :goto_17

    .line 5526
    .end local v0           #rotation:I
    :catchall_1d
    move-exception v1

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v1

    .line 5510
    .restart local v0       #rotation:I
    :pswitch_20
    :try_start_20
    monitor-exit v4

    move v1, v3

    goto :goto_17

    .line 5514
    :cond_23
    packed-switch v0, :pswitch_data_3a

    .line 5517
    monitor-exit v4

    move v1, v2

    goto :goto_17

    .line 5519
    :pswitch_29
    monitor-exit v4

    goto :goto_17

    .line 5521
    :pswitch_2b
    monitor-exit v4

    move v1, v3

    goto :goto_17

    .line 5523
    :pswitch_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_1d

    goto :goto_17

    .line 5501
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1b
        :pswitch_20
    .end packed-switch

    .line 5514
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public getRealDisplaySize(Landroid/graphics/Point;)V
    .registers 4
    .parameter "size"

    .prologue
    .line 7066
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7067
    :try_start_3
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7068
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7069
    monitor-exit v1

    .line 7070
    return-void

    .line 7069
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 5445
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4741
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4743
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4745
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4749
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4751
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4753
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4725
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4727
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4729
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4733
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4735
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4737
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4789
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4791
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4793
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4757
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4759
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4761
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getWindowCompatibilityScale(Landroid/os/IBinder;)F
    .registers 5
    .parameter "windowToken"

    .prologue
    .line 2914
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2915
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 2916
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    :goto_f
    monitor-exit v2

    return v1

    :cond_11
    const/high16 v1, 0x3f80

    goto :goto_f

    .line 2917
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 2466
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2467
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2468
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_f

    .line 2469
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2470
    monitor-exit v2

    .line 2474
    :goto_e
    return-void

    .line 2472
    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2473
    monitor-exit v2

    goto :goto_e

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public hasKeys([I[Z)Z
    .registers 6
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 4805
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/InputManager;->hasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .prologue
    .line 9483
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessagesLocked()V
    .registers 2

    .prologue
    .line 5027
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_c

    .line 5028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 5029
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->hideBootMessages()V

    .line 5031
    :cond_c
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 2

    .prologue
    .line 4634
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public injectInputEventNoWait(Landroid/view/InputEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    .line 6408
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6409
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6410
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6412
    .local v6, ident:J
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    const/4 v4, 0x0

    const/16 v5, 0x7530

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6416
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6417
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 28
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6304
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 6305
    .local v3, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 6307
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 6308
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 6309
    .local v8, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 6310
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    .line 6311
    .local v10, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    .line 6312
    .local v11, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    .line 6313
    .local v12, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    .line 6314
    .local v14, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    .line 6316
    .local v21, flags:I
    if-nez v14, :cond_2c

    .line 6317
    const/16 v14, 0x101

    .line 6320
    :cond_2c
    const-wide/16 v15, 0x0

    cmp-long v13, v5, v15

    if-nez v13, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 6321
    :cond_36
    const-wide/16 v15, 0x0

    cmp-long v13, v3, v15

    if-nez v13, :cond_3d

    move-wide v3, v5

    .line 6323
    :cond_3d
    new-instance v2, Landroid/view/KeyEvent;

    or-int/lit8 v13, v21, 0x8

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 6326
    .local v2, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 6327
    .local v17, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 6328
    .local v18, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 6330
    .local v22, ident:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_6c

    const/16 v19, 0x2

    :goto_58
    const/16 v20, 0x7530

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v24

    .line 6335
    .local v24, result:I
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6336
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v13

    return v13

    .line 6330
    .end local v24           #result:I
    :cond_6c
    const/16 v19, 0x1

    goto :goto_58
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6351
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6352
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6353
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6355
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 6356
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1d

    .line 6357
    const/16 v0, 0x1002

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 6360
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_30

    const/4 v4, 0x2

    :goto_22
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6365
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6366
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 6360
    .end local v8           #result:I
    :cond_30
    const/4 v4, 0x1

    goto :goto_22
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 6381
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6382
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 6383
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6385
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 6386
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1e

    .line 6387
    const v0, 0x10004

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 6390
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    if-eqz p2, :cond_31

    const/4 v4, 0x2

    :goto_23
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 6395
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6396
    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 6390
    .end local v8           #result:I
    :cond_31
    const/4 v4, 0x1

    goto :goto_23
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 11
    .parameter "client"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 7004
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 7007
    const/4 v7, 0x0

    :try_start_6
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v1

    .line 7009
    .local v1, idx:I
    if-lez v1, :cond_75

    .line 7010
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 7014
    .local v2, imFocus:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_75

    .line 7017
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3b

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3b

    .line 7021
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3b

    .line 7022
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 7023
    .local v3, w:Lcom/android/server/wm/WindowState;
    if-eq v3, v2, :cond_51

    .line 7025
    move-object v2, v3

    .line 7035
    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_3b
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_54

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_54

    .line 7037
    monitor-exit v6

    .line 7055
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :goto_50
    return v4

    .line 7021
    .restart local v0       #i:I
    .restart local v2       #imFocus:Lcom/android/server/wm/WindowState;
    .restart local v3       #w:Lcom/android/server/wm/WindowState;
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 7048
    .end local v0           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_54
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_75

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v7, :cond_75

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_75

    .line 7050
    monitor-exit v6

    goto :goto_50

    .line 7054
    .end local v1           #idx:I
    .end local v2           #imFocus:Lcom/android/server/wm/WindowState;
    :catchall_72
    move-exception v4

    monitor-exit v6
    :try_end_74
    .catchall {:try_start_6 .. :try_end_74} :catchall_72

    throw v4

    .restart local v1       #idx:I
    :cond_75
    :try_start_75
    monitor-exit v6
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_72

    move v4, v5

    .line 7055
    goto :goto_50
.end method

.method public isHardKeyboardAvailable()Z
    .registers 3

    .prologue
    .line 6155
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6156
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v1

    return v0

    .line 6157
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isHardKeyboardEnabled()Z
    .registers 3

    .prologue
    .line 6161
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6162
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    monitor-exit v1

    return v0

    .line 6163
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 4638
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 4642
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method public isViewServerRunning()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 5608
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5616
    :cond_7
    :goto_7
    return v0

    .line 5612
    :cond_8
    const-string v1, "android.permission.DUMP"

    const-string v2, "isViewServerRunning"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5616
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .parameter "wallpaperTarget"

    .prologue
    .line 1486
    if-eqz p1, :cond_10

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method logWindowList(Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1326
    .local v0, N:I
    :goto_6
    if-lez v0, :cond_37

    .line 1327
    add-int/lit8 v0, v0, -0x1

    .line 1328
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1330
    :cond_37
    return-void
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .parameter "w"

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x1

    .line 7575
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_29

    .line 7578
    :cond_f
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 7579
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_29

    .line 7580
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 7583
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7584
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7588
    :cond_29
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 9969
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_9

    .line 9970
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    :try_start_7
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_c

    .line 9971
    return-void

    .line 9969
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0

    .line 9970
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 4
    .parameter "inputChannelName"

    .prologue
    .line 4809
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "monitorInput()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4811
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4813
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .registers 10
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4369
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4371
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4374
    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4377
    :try_start_15
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4381
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_23

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 4382
    :cond_23
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    monitor-exit v4

    .line 4409
    :goto_4c
    return-void

    .line 4386
    :cond_4d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4394
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/wm/WindowToken;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 4397
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    .line 4400
    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4402
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4403
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 4404
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4405
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 4407
    :cond_79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4408
    monitor-exit v4

    goto :goto_4c

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_7e
    move-exception v3

    monitor-exit v4
    :try_end_80
    .catchall {:try_start_15 .. :try_end_80} :catchall_7e

    throw v3
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v8, -0x1

    .line 4521
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 4523
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4526
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4527
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4528
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4529
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4530
    .local v0, N:I
    const/4 v4, 0x0

    .line 4531
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v0, :cond_54

    .line 4532
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 4533
    .local v5, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_51

    .line 4536
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4537
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_4f

    .line 4538
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4539
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4540
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4541
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    .line 4542
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    .line 4544
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    .line 4531
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 4548
    .end local v5           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_54
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_5c

    .line 4549
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4551
    :cond_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_1a .. :try_end_5d} :catchall_61

    .line 4552
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4553
    return-void

    .line 4551
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_61
    move-exception v6

    :try_start_62
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v7, -0x1

    .line 4488
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 4490
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4493
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4494
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4495
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4496
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4497
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v0, :cond_51

    .line 4498
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 4499
    .local v4, wt:Lcom/android/server/wm/AppWindowToken;
    if-eqz v4, :cond_4e

    .line 4502
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4503
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_4e

    .line 4504
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4505
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4506
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4507
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    .line 4508
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/WindowToken;->sendingToTop:Z

    .line 4497
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 4513
    .end local v4           #wt:Lcom/android/server/wm/AppWindowToken;
    :cond_51
    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_5e

    .line 4514
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4516
    :cond_5e
    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_1a .. :try_end_5f} :catchall_63

    .line 4517
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4518
    return-void

    .line 4516
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_63
    move-exception v5

    :try_start_64
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .registers 9
    .parameter "pos"

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1335
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1337
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 1338
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1345
    :cond_16
    if-ltz p1, :cond_44

    .line 1346
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1347
    .local v3, targetAppToken:Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_32

    .line 1348
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1349
    .local v5, wp:Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v5, v6, :cond_32

    .line 1350
    add-int/lit8 p1, p1, 0x1

    .line 1354
    .end local v5           #wp:Lcom/android/server/wm/WindowState;
    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_56

    .line 1355
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1356
    .local v4, win:Lcom/android/server/wm/WindowState;
    iput-object v3, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1357
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result p1

    .line 1354
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1365
    .end local v3           #targetAppToken:Lcom/android/server/wm/AppWindowToken;
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_56

    .line 1366
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1367
    .restart local v4       #win:Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1368
    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1365
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 1374
    .end local v4           #win:Lcom/android/server/wm/WindowState;
    :cond_56
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .registers 14
    .parameter "needAssignLayers"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 1377
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1378
    .local v6, imWin:Lcom/android/server/wm/WindowState;
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1379
    .local v0, DN:I
    if-nez v6, :cond_12

    if-nez v0, :cond_12

    move v8, v9

    .line 1472
    :goto_11
    return v8

    .line 1383
    :cond_12
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1384
    .local v5, imPos:I
    if-ltz v5, :cond_99

    .line 1390
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1391
    .local v1, N:I
    if-ge v5, v1, :cond_29

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v4, v8

    .line 1396
    .local v4, firstImWin:Lcom/android/server/wm/WindowState;
    :cond_29
    if-eqz v6, :cond_67

    move-object v2, v6

    .line 1398
    .local v2, baseImWin:Lcom/android/server/wm/WindowState;
    :goto_2c
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_41

    .line 1399
    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1400
    .local v3, cw:Lcom/android/server/wm/WindowState;
    iget v8, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v8, :cond_41

    move-object v2, v3

    .line 1403
    .end local v3           #cw:Lcom/android/server/wm/WindowState;
    :cond_41
    if-ne v4, v2, :cond_77

    .line 1406
    add-int/lit8 v7, v5, 0x1

    .line 1407
    .local v7, pos:I
    :goto_45
    if-ge v7, v1, :cond_53

    .line 1408
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_71

    .line 1413
    :cond_53
    add-int/lit8 v7, v7, 0x1

    .line 1415
    :goto_55
    if-ge v7, v1, :cond_63

    .line 1416
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_74

    .line 1421
    :cond_63
    if-lt v7, v1, :cond_77

    move v8, v9

    .line 1423
    goto :goto_11

    .line 1396
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v7           #pos:I
    :cond_67
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    move-object v2, v8

    goto :goto_2c

    .line 1411
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v7       #pos:I
    :cond_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 1419
    :cond_74
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 1427
    .end local v7           #pos:I
    :cond_77
    if-eqz v6, :cond_95

    .line 1432
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    move-result v5

    .line 1437
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v8, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1438
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1443
    if-lez v0, :cond_8d

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1468
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_8d
    :goto_8d
    if-eqz p1, :cond_92

    .line 1469
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    :cond_92
    move v8, v10

    .line 1472
    goto/16 :goto_11

    .line 1445
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/wm/WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_95
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8d

    .line 1452
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/wm/WindowState;
    .end local v4           #firstImWin:Lcom/android/server/wm/WindowState;
    :cond_99
    if-eqz v6, :cond_a9

    .line 1454
    invoke-direct {p0, v9, v6}, Lcom/android/server/wm/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/wm/WindowState;)I

    .line 1455
    iput-object v4, v6, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1456
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;)V

    .line 1461
    if-lez v0, :cond_8d

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8d

    .line 1463
    :cond_a9
    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8d
.end method

.method notifyHardKeyboardStatusChange()V
    .registers 6

    .prologue
    .line 6185
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6186
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .line 6187
    .local v2, listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 6188
    .local v0, available:Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6189
    .local v1, enabled:Z
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    .line 6190
    if-eqz v2, :cond_f

    .line 6191
    invoke-interface {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(ZZ)V

    .line 6193
    :cond_f
    return-void

    .line 6189
    .end local v0           #available:Z
    .end local v1           #enabled:Z
    .end local v2           #listener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;
    :catchall_10
    move-exception v3

    :try_start_11
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v3
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 822
    :catch_5
    move-exception v0

    .line 825
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 826
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    :cond_11
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .registers 6
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 6978
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6979
    :cond_a
    if-nez p2, :cond_14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6980
    :cond_14
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .line 6981
    .local v0, session:Lcom/android/server/wm/Session;
    return-object v0
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .registers 9
    .parameter "session"
    .parameter "client"

    .prologue
    const/4 v3, 0x0

    .line 2883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2886
    .local v0, origId:J
    :try_start_5
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_23

    .line 2887
    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2888
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_14

    .line 2889
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_20

    .line 2894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_13
    return v3

    .line 2891
    :cond_14
    :try_start_14
    const-string v3, "from-client"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_20

    .line 2894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .line 2892
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    .line 2894
    :catchall_23
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .registers 6
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3660
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 3661
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 3662
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionEnter:I

    .line 3663
    iput p3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransitionExit:I

    .line 3665
    :cond_b
    return-void
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 6255
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 6257
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6260
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6261
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 6262
    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_24

    .line 6263
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 6265
    :cond_24
    monitor-exit v2

    .line 6266
    return-void

    .line 6265
    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v1
.end method

.method pauseRotationLocked()V
    .registers 2

    .prologue
    .line 5301
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 5302
    return-void
.end method

.method public performBootTimeout()V
    .registers 4

    .prologue
    .line 4873
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4874
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_9

    .line 4875
    monitor-exit v1

    .line 4881
    :goto_8
    return-void

    .line 4877
    :cond_9
    const-string v0, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 4879
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 4880
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_8

    .line 4879
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 8
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2867
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2870
    .local v0, origId:J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    .line 2871
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2872
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_13

    .line 2873
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1b

    .line 2878
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2880
    :goto_12
    return-void

    .line 2875
    :cond_13
    :try_start_13
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->destroyDeferredSurfaceLocked()V

    .line 2876
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_1b

    .line 2878
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    .line 2876
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    .line 2878
    :catchall_1e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public performEnableScreen()V
    .registers 16

    .prologue
    .line 4884
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4893
    :try_start_3
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v11, :cond_9

    .line 4894
    monitor-exit v12

    .line 4985
    :goto_8
    return-void

    .line 4896
    :cond_9
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v11, :cond_16

    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v11, :cond_16

    .line 4897
    monitor-exit v12

    goto :goto_8

    .line 4979
    :catchall_13
    move-exception v11

    monitor-exit v12
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v11

    .line 4900
    :cond_16
    :try_start_16
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v11, :cond_9e

    .line 4903
    const/4 v4, 0x0

    .line 4904
    .local v4, haveBootMsg:Z
    const/4 v3, 0x0

    .line 4905
    .local v3, haveApp:Z
    const/4 v6, 0x0

    .line 4906
    .local v6, haveWallpaper:Z
    const/4 v5, 0x1

    .line 4907
    .local v5, haveKeyguard:Z
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4908
    .local v0, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_25
    if-ge v7, v0, :cond_88

    .line 4909
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 4910
    .local v10, w:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-ne v11, v13, :cond_43

    .line 4918
    iget v11, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v11, :cond_55

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v11, :cond_55

    const/4 v9, 0x1

    .line 4920
    .local v9, vis:Z
    :goto_40
    if-nez v9, :cond_57

    const/4 v5, 0x1

    .line 4922
    .end local v9           #vis:Z
    :cond_43
    :goto_43
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    if-eqz v11, :cond_59

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v11, :cond_59

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v11

    if-nez v11, :cond_59

    .line 4923
    monitor-exit v12

    goto :goto_8

    .line 4918
    :cond_55
    const/4 v9, 0x0

    goto :goto_40

    .line 4920
    .restart local v9       #vis:Z
    :cond_57
    const/4 v5, 0x0

    goto :goto_43

    .line 4925
    .end local v9           #vis:Z
    :cond_59
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v11

    if-eqz v11, :cond_68

    .line 4926
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7e5

    if-ne v11, v13, :cond_6b

    .line 4927
    const/4 v4, 0x1

    .line 4908
    :cond_68
    :goto_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 4928
    :cond_6b
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_74

    .line 4929
    const/4 v3, 0x1

    goto :goto_68

    .line 4930
    :cond_74
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7dd

    if-ne v11, v13, :cond_7e

    .line 4931
    const/4 v6, 0x1

    goto :goto_68

    .line 4932
    :cond_7e
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-ne v11, v13, :cond_68

    .line 4933
    const/4 v5, 0x1

    goto :goto_68

    .line 4946
    .end local v10           #w:Lcom/android/server/wm/WindowState;
    :cond_88
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v11, :cond_91

    if-nez v4, :cond_91

    .line 4947
    monitor-exit v12

    goto/16 :goto_8

    .line 4953
    :cond_91
    iget-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v11, :cond_9e

    if-nez v3, :cond_99

    if-eqz v5, :cond_9b

    :cond_99
    if-nez v6, :cond_9e

    .line 4954
    :cond_9b
    monitor-exit v12

    goto/16 :goto_8

    .line 4958
    .end local v0           #N:I
    .end local v3           #haveApp:Z
    .end local v4           #haveBootMsg:Z
    .end local v5           #haveKeyguard:Z
    .end local v6           #haveWallpaper:Z
    .end local v7           #i:I
    :cond_9e
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z
    :try_end_a1
    .catchall {:try_start_16 .. :try_end_a1} :catchall_13

    .line 4967
    :try_start_a1
    const-string v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 4968
    .local v8, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v8, :cond_bb

    .line 4970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4971
    .local v1, data:Landroid/os/Parcel;
    const-string v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4972
    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v8, v11, v1, v13, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_bb
    .catchall {:try_start_a1 .. :try_end_bb} :catchall_13
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_bb} :catch_c7

    .line 4979
    .end local v1           #data:Landroid/os/Parcel;
    .end local v8           #surfaceFlinger:Landroid/os/IBinder;
    :cond_bb
    :goto_bb
    :try_start_bb
    monitor-exit v12
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_13

    .line 4981
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 4984
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    goto/16 :goto_8

    .line 4976
    :catch_c7
    move-exception v2

    .line 4977
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_c8
    const-string v11, "WindowManager"

    const-string v13, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_13

    goto :goto_bb
.end method

.method public prepareAppTransition(IZ)V
    .registers 8
    .parameter "transit"
    .parameter "alwaysKeepCurrent"

    .prologue
    .line 3619
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3621
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3624
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3628
    :try_start_15
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3629
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-nez v0, :cond_54

    .line 3631
    :cond_2e
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    .line 3643
    :cond_30
    :goto_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 3644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 3645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 3646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3647
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3648
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3651
    :cond_52
    monitor-exit v1

    .line 3652
    return-void

    .line 3632
    :cond_54
    if-nez p2, :cond_30

    .line 3633
    const/16 v0, 0x1008

    if-ne p1, v0, :cond_66

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v0, v2, :cond_66

    .line 3636
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    goto :goto_30

    .line 3651
    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_15 .. :try_end_65} :catchall_63

    throw v0

    .line 3637
    :cond_66
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_30

    :try_start_6a
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v0, v2, :cond_30

    .line 3640
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_63

    goto :goto_30
.end method

.method prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .registers 23
    .parameter "window"
    .parameter "session"
    .parameter "flags"
    .parameter "width"
    .parameter "height"
    .parameter "outSurface"

    .prologue
    .line 6207
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 6208
    .local v3, callerPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 6209
    .local v12, origId:J
    const/4 v14, 0x0

    .line 6212
    .local v14, token:Landroid/os/IBinder;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_be

    .line 6214
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_72

    .line 6215
    new-instance v1, Landroid/view/Surface;

    const-string v4, "drag surface"

    const/4 v5, 0x0

    const/4 v8, -0x3

    const/4 v9, 0x4

    move-object/from16 v2, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .line 6219
    .local v1, surface:Landroid/view/Surface;
    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 6220
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 6221
    .local v9, winBinder:Landroid/os/IBinder;
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_c1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e .. :try_end_32} :catch_7b

    .line 6222
    .end local v14           #token:Landroid/os/IBinder;
    .local v6, token:Landroid/os/IBinder;
    :try_start_32
    new-instance v4, Lcom/android/server/wm/DragState;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object v7, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/Surface;ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 6223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v1, v2, Lcom/android/server/wm/DragState;->mSurface:Landroid/view/Surface;

    .line 6224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    new-instance v14, Landroid/os/Binder;

    invoke-direct {v14}, Landroid/os/Binder;-><init>()V

    iput-object v14, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_b6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_32 .. :try_end_50} :catch_c4

    .line 6227
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :try_start_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 6228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 6229
    .local v11, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v11, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_c1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_50 .. :try_end_6c} :catch_7b

    move-object v6, v14

    .line 6240
    .end local v1           #surface:Landroid/view/Surface;
    .end local v9           #winBinder:Landroid/os/IBinder;
    .end local v11           #msg:Landroid/os/Message;
    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_6d
    :goto_6d
    :try_start_6d
    monitor-exit v15
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_b6

    .line 6242
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6245
    return-object v6

    .line 6231
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :cond_72
    :try_start_72
    const-string v2, "WindowManager"

    const-string v4, "Drag already in progress"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_c1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_72 .. :try_end_79} :catch_7b

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_6d

    .line 6233
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catch_7b
    move-exception v10

    move-object v6, v14

    .line 6234
    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :goto_7d
    :try_start_7d
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t allocate drag surface w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_6d

    .line 6236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 6237
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_6d

    .line 6240
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_b6
    move-exception v2

    :goto_b7
    monitor-exit v15
    :try_end_b8
    .catchall {:try_start_7d .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b9

    .line 6242
    :catchall_b9
    move-exception v2

    :goto_ba
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catchall_be
    move-exception v2

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_ba

    .line 6240
    .end local v6           #token:Landroid/os/IBinder;
    .restart local v14       #token:Landroid/os/IBinder;
    :catchall_c1
    move-exception v2

    move-object v6, v14

    .end local v14           #token:Landroid/os/IBinder;
    .restart local v6       #token:Landroid/os/IBinder;
    goto :goto_b7

    .line 6233
    .restart local v1       #surface:Landroid/view/Surface;
    .restart local v9       #winBinder:Landroid/os/IBinder;
    :catch_c4
    move-exception v10

    goto :goto_7d
.end method

.method final rebuildAppWindowListLocked()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 7251
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7253
    .local v1, NW:I
    const/4 v4, -0x1

    .line 7254
    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .line 7256
    .local v5, numRemoved:I
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    array-length v11, v11

    if-ge v11, v1, :cond_14

    .line 7257
    add-int/lit8 v11, v1, 0xa

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    .line 7261
    :cond_14
    const/4 v2, 0x0

    .line 7262
    .local v2, i:I
    :goto_15
    if-ge v2, v1, :cond_48

    .line 7263
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 7264
    .local v8, w:Lcom/android/server/wm/WindowState;
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_38

    .line 7265
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 7266
    .local v9, win:Lcom/android/server/wm/WindowState;
    iput-boolean v14, v9, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    .line 7267
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aput-object v9, v11, v5

    .line 7268
    iput-boolean v14, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 7271
    add-int/lit8 v1, v1, -0x1

    .line 7272
    add-int/lit8 v5, v5, 0x1

    .line 7273
    goto :goto_15

    .line 7274
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :cond_38
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v11, v12, :cond_45

    add-int/lit8 v11, v2, -0x1

    if-ne v4, v11, :cond_45

    .line 7276
    move v4, v2

    .line 7278
    :cond_45
    add-int/lit8 v2, v2, 0x1

    .line 7279
    goto :goto_15

    .line 7283
    .end local v8           #w:Lcom/android/server/wm/WindowState;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    .line 7284
    move v2, v4

    .line 7290
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7291
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_52
    if-ge v3, v0, :cond_63

    .line 7292
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 7291
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 7296
    :cond_63
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7297
    const/4 v3, 0x0

    :goto_6a
    if-ge v3, v0, :cond_7b

    .line 7298
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v2, v11}, Lcom/android/server/wm/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/wm/WindowToken;)I

    move-result v2

    .line 7297
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 7301
    :cond_7b
    sub-int/2addr v2, v4

    .line 7302
    if-eq v2, v5, :cond_f5

    .line 7303
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rebuild removed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " windows but added "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7305
    const/4 v2, 0x0

    :goto_a1
    if-ge v2, v5, :cond_e1

    .line 7306
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mRebuildTmp:[Lcom/android/server/wm/WindowState;

    aget-object v10, v11, v2

    .line 7307
    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRebuilding:Z

    if-eqz v11, :cond_de

    .line 7308
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 7309
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 7310
    .local v6, pw:Ljava/io/PrintWriter;
    const-string v11, ""

    invoke-virtual {v10, v6, v11, v14}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 7311
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 7312
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This window was lost: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7313
    const-string v11, "WindowManager"

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7305
    .end local v6           #pw:Ljava/io/PrintWriter;
    .end local v7           #sw:Ljava/io/StringWriter;
    :cond_de
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 7316
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_e1
    const-string v11, "WindowManager"

    const-string v12, "Current app token list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7317
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpAppTokensLocked()V

    .line 7318
    const-string v11, "WindowManager"

    const-string v12, "Final window list:"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7319
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked()V

    .line 7321
    :cond_f5
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z
    .registers 19
    .parameter "win"
    .parameter "operation"
    .parameter "secure"

    .prologue
    .line 9022
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 9023
    .local v9, surface:Landroid/view/Surface;
    const/4 v6, 0x0

    .line 9024
    .local v6, leakedSurface:Z
    const/4 v5, 0x0

    .line 9026
    .local v5, killedApps:Z
    const/16 v11, 0x7918

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p2, v12, v13

    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9029
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v11, :cond_30

    .line 9030
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 9033
    :cond_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9038
    .local v2, callingIdentity:J
    :try_start_34
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9039
    .local v1, N:I
    const-string v11, "WindowManager"

    const-string v12, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9040
    const/4 v4, 0x0

    .local v4, i:I
    :goto_42
    if-ge v4, v1, :cond_109

    .line 9041
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 9042
    .local v10, ws:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v11, :cond_bd

    .line 9043
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c0

    .line 9044
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " surface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9050
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->destroy()V

    .line 9051
    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9052
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 9053
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9054
    add-int/lit8 v4, v4, -0x1

    .line 9055
    add-int/lit8 v1, v1, -0x1

    .line 9056
    const/4 v6, 0x1

    .line 9040
    :cond_bd
    :goto_bd
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 9057
    :cond_c0
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_bd

    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v11, :cond_bd

    .line 9058
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " surface="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " token="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9062
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11}, Landroid/view/Surface;->destroy()V

    .line 9063
    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9064
    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    .line 9065
    const/4 v6, 0x1

    goto :goto_bd

    .line 9070
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_109
    if-nez v6, :cond_15a

    .line 9071
    const-string v11, "WindowManager"

    const-string v12, "No leaked surfaces; killing applicatons!"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9072
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 9073
    .local v7, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    :goto_118
    if-ge v4, v1, :cond_134

    .line 9074
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 9075
    .restart local v10       #ws:Lcom/android/server/wm/WindowState;
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v11, :cond_131

    .line 9076
    iget-object v11, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v12, v12, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v7, v11, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 9073
    :cond_131
    add-int/lit8 v4, v4, 0x1

    goto :goto_118

    .line 9079
    .end local v10           #ws:Lcom/android/server/wm/WindowState;
    :cond_134
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-lez v11, :cond_15a

    .line 9080
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    new-array v8, v11, [I

    .line 9081
    .local v8, pids:[I
    const/4 v4, 0x0

    :goto_141
    array-length v11, v8

    if-ge v4, v11, :cond_14d

    .line 9082
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    aput v11, v8, v4
    :try_end_14a
    .catchall {:try_start_34 .. :try_end_14a} :catchall_184

    .line 9081
    add-int/lit8 v4, v4, 0x1

    goto :goto_141

    .line 9085
    :cond_14d
    :try_start_14d
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v12, "Free memory"

    move/from16 v0, p3

    invoke-interface {v11, v8, v12, v0}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z
    :try_end_156
    .catchall {:try_start_14d .. :try_end_156} :catchall_184
    .catch Landroid/os/RemoteException; {:try_start_14d .. :try_end_156} :catch_18d

    move-result v11

    if-eqz v11, :cond_15a

    .line 9086
    const/4 v5, 0x1

    .line 9093
    .end local v7           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v8           #pids:[I
    :cond_15a
    :goto_15a
    if-nez v6, :cond_15e

    if-eqz v5, :cond_17b

    .line 9096
    :cond_15e
    :try_start_15e
    const-string v11, "WindowManager"

    const-string v12, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9097
    if-eqz v9, :cond_174

    .line 9100
    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V

    .line 9101
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9102
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;
    :try_end_174
    .catchall {:try_start_15e .. :try_end_174} :catchall_184

    .line 9106
    :cond_174
    :try_start_174
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v11}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_17b
    .catchall {:try_start_174 .. :try_end_17b} :catchall_184
    .catch Landroid/os/RemoteException; {:try_start_174 .. :try_end_17b} :catch_18b

    .line 9111
    :cond_17b
    :goto_17b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9114
    if-nez v6, :cond_182

    if-eqz v5, :cond_189

    :cond_182
    const/4 v11, 0x1

    :goto_183
    return v11

    .line 9111
    .end local v1           #N:I
    .end local v4           #i:I
    :catchall_184
    move-exception v11

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 9114
    .restart local v1       #N:I
    .restart local v4       #i:I
    :cond_189
    const/4 v11, 0x0

    goto :goto_183

    .line 9107
    :catch_18b
    move-exception v11

    goto :goto_17b

    .line 9088
    .restart local v7       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v8       #pids:[I
    :catch_18d
    move-exception v11

    goto :goto_15a
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 4587
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 4589
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4592
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v2

    .line 4593
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4595
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_38

    .line 4603
    :goto_22
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_35

    if-eqz v1, :cond_38

    .line 4605
    :try_start_26
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_22

    .line 4606
    :catch_2c
    move-exception v0

    .line 4607
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_22

    .line 4611
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_35

    throw v1

    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 4612
    return-void
.end method

.method public reevaluateStatusBarVisibility()V
    .registers 5

    .prologue
    .line 9445
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 9446
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v0

    .line 9447
    .local v0, visibility:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    .line 9448
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 9449
    monitor-exit v2

    .line 9450
    return-void

    .line 9449
    .end local v0           #visibility:I
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .registers 45
    .parameter "session"
    .parameter "client"
    .parameter "seq"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "flags"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 2533
    const/4 v9, 0x0

    .line 2536
    .local v9, displayed:Z
    const/16 v22, 0x0

    .line 2539
    .local v22, surfaceChanged:Z
    const/16 v23, 0x0

    .line 2540
    .local v23, systemUiVisibility:I
    if-eqz p4, :cond_2e

    .line 2541
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v28, v0

    or-int v23, v27, v28

    .line 2542
    const/high16 v27, 0x1ff

    and-int v27, v27, v23

    if-eqz v27, :cond_2e

    .line 2543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "android.permission.STATUS_BAR"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_2e

    .line 2545
    const v27, -0x1ff0001

    and-int v23, v23, v27

    .line 2549
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2551
    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 2552
    const/16 v27, 0x0

    :try_start_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v26

    .line 2553
    .local v26, win:Lcom/android/server/wm/WindowState;
    if-nez v26, :cond_4d

    .line 2554
    const/16 v27, 0x0

    monitor-exit v28

    .line 2861
    :goto_4c
    return v27

    .line 2556
    :cond_4d
    move/from16 v0, p5

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2557
    move/from16 v0, p6

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2558
    if-eqz p4, :cond_6d

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSeq:I

    move/from16 v27, v0

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_6d

    .line 2559
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 2562
    :cond_6d
    if-eqz p4, :cond_7c

    .line 2563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2566
    :cond_7c
    and-int/lit8 v27, p8, 0x2

    if-eqz v27, :cond_b3

    const/16 v27, 0x1

    :goto_82
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceDestroyDeferred:Z

    .line 2569
    const/4 v6, 0x0

    .line 2570
    .local v6, attrChanges:I
    const/4 v11, 0x0

    .line 2571
    .local v11, flagChanges:I
    if-eqz p4, :cond_dc

    .line 2572
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_b6

    .line 2573
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v29, "Window type can not be changed after the window is added."

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 2853
    .end local v6           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v26           #win:Lcom/android/server/wm/WindowState;
    :catchall_b0
    move-exception v27

    monitor-exit v28
    :try_end_b2
    .catchall {:try_start_3b .. :try_end_b2} :catchall_b0

    throw v27

    .line 2566
    .restart local v26       #win:Lcom/android/server/wm/WindowState;
    :cond_b3
    const/16 v27, 0x0

    goto :goto_82

    .line 2576
    .restart local v6       #attrChanges:I
    .restart local v11       #flagChanges:I
    :cond_b6
    :try_start_b6
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    xor-int v11, v29, v30

    move-object/from16 v0, v27

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2577
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 2582
    :cond_dc
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x2000

    and-int v27, v27, v29

    if-eqz v27, :cond_4bd

    const/16 v27, 0x1

    :goto_f0
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 2585
    and-int/lit8 v27, v6, 0x8

    if-eqz v27, :cond_135

    if-eqz p4, :cond_135

    .line 2587
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v27, v0

    const/16 v29, 0x101

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_135

    .line 2589
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12b

    .line 2590
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_115
    .catchall {:try_start_b6 .. :try_end_115} :catchall_b0

    .line 2592
    :try_start_115
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    const/16 v29, 0x400

    const/16 v30, 0x400

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setFlags(II)V
    :try_end_128
    .catchall {:try_start_115 .. :try_end_128} :catchall_4c1

    .line 2594
    :try_start_128
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2597
    :cond_12b
    and-int/lit8 v6, v6, -0x9

    .line 2598
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p4

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2602
    :cond_135
    and-int/lit16 v0, v6, 0x80

    move/from16 v27, v0

    if-eqz v27, :cond_147

    .line 2603
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAlpha:F

    .line 2606
    :cond_147
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x4000

    move/from16 v27, v0

    if-eqz v27, :cond_4c6

    const/16 v20, 0x1

    .line 2609
    .local v20, scaledWindow:Z
    :goto_15d
    if-eqz v20, :cond_4d2

    .line 2612
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p5

    if-eq v0, v1, :cond_4ca

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_17d
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2614
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p6

    if-eq v0, v1, :cond_4ce

    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v27, v27, v29

    :goto_1a1
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2620
    :goto_1a7
    const v27, 0x20008

    and-int v27, v27, v11

    if-eqz v27, :cond_4e2

    const/4 v13, 0x1

    .line 2624
    .local v13, imMayMove:Z
    :goto_1af
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p7

    if-ne v0, v1, :cond_1c7

    and-int/lit8 v27, v11, 0x8

    if-nez v27, :cond_1c7

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    move/from16 v27, v0

    if-nez v27, :cond_4e5

    :cond_1c7
    const/4 v12, 0x1

    .line 2628
    .local v12, focusMayChange:Z
    :goto_1c8
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p7

    if-eq v0, v1, :cond_4e8

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x10

    and-int v27, v27, v29

    if-eqz v27, :cond_4e8

    const/16 v25, 0x1

    .line 2630
    .local v25, wallpaperMayMove:Z
    :goto_1e8
    const/high16 v27, 0x10

    and-int v27, v27, v11

    if-eqz v27, :cond_4ec

    const/16 v27, 0x1

    :goto_1f0
    or-int v25, v25, v27

    .line 2632
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 2633
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .line 2634
    .local v16, oldVisibility:I
    move/from16 v0, p7

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2641
    if-nez p7, :cond_54a

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_21e

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move/from16 v27, v0

    if-nez v27, :cond_54a

    .line 2643
    :cond_21e
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v27

    if-nez v27, :cond_4f0

    const/4 v9, 0x1

    .line 2644
    :goto_225
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_230

    .line 2645
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->cancelExitAnimationForNextAnimationLocked()V

    .line 2647
    :cond_230
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v27, v0

    if-eqz v27, :cond_24d

    .line 2648
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2651
    :cond_24d
    const/16 v27, 0x8

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_25d

    .line 2652
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2654
    :cond_25d
    if-eqz v9, :cond_2fe

    .line 2655
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_29a

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    move/from16 v27, v0

    if-nez v27, :cond_29a

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    move/from16 v27, v0

    if-nez v27, :cond_29a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-nez v27, :cond_29a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_29a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v27

    if-eqz v27, :cond_29a

    .line 2658
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/wm/WindowState;)V

    .line 2660
    :cond_29a
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x20

    and-int v27, v27, v29

    if-eqz v27, :cond_2b4

    .line 2664
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 2666
    :cond_2b4
    const/4 v8, 0x0

    .line 2667
    .local v8, diff:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_2fe

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_2fe

    .line 2670
    :cond_2e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2679
    .end local v8           #diff:I
    :cond_2fe
    and-int/lit8 v27, v6, 0x8

    if-eqz v27, :cond_308

    .line 2681
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V
    :try_end_305
    .catchall {:try_start_128 .. :try_end_305} :catchall_b0

    .line 2682
    const/4 v9, 0x1

    .line 2683
    const/16 v22, 0x1

    .line 2686
    :cond_308
    :try_start_308
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-nez v27, :cond_312

    .line 2687
    const/16 v22, 0x1

    .line 2689
    :cond_312
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .line 2690
    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_4f3

    .line 2691
    move-object/from16 v0, p13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 2692
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 2693
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z
    :try_end_32f
    .catchall {:try_start_308 .. :try_end_32f} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_32f} :catch_4f8

    .line 2710
    :goto_32f
    if-eqz v9, :cond_332

    .line 2711
    const/4 v12, 0x1

    .line 2713
    :cond_332
    :try_start_332
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x7db

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_355

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-nez v27, :cond_355

    .line 2715
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2716
    const/4 v13, 0x1

    .line 2718
    :cond_355
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_3b8

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3b8

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3b8

    .line 2724
    const v15, 0x480001

    .line 2728
    .local v15, mask:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 2729
    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v29, -0x480002

    and-int v27, v27, v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v29, v0

    const v30, 0x480001

    and-int v29, v29, v30

    or-int v27, v27, v29

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2790
    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_3b8
    :goto_3b8
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v27, v0

    const/16 v29, 0x101

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_3da

    .line 2791
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2794
    :cond_3da
    if-eqz v12, :cond_3ed

    .line 2796
    const/16 v27, 0x3

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v27

    if-eqz v27, :cond_3ed

    .line 2798
    const/4 v13, 0x0

    .line 2805
    :cond_3ed
    const/4 v5, 0x0

    .line 2807
    .local v5, assignLayers:Z
    if-eqz v13, :cond_3ff

    .line 2808
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v27

    if-nez v27, :cond_3fe

    if-eqz v9, :cond_3ff

    .line 2814
    :cond_3fe
    const/4 v5, 0x1

    .line 2817
    :cond_3ff
    if-eqz v25, :cond_40a

    .line 2818
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v27

    and-int/lit8 v27, v27, 0x2

    if-eqz v27, :cond_40a

    .line 2819
    const/4 v5, 0x1

    .line 2823
    :cond_40a
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2824
    and-int/lit8 v27, p8, 0x1

    if-eqz v27, :cond_639

    const/16 v27, 0x1

    :goto_418
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2825
    if-eqz v5, :cond_423

    .line 2826
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->assignLayersLocked()V

    .line 2828
    :cond_423
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v7

    .line 2829
    .local v7, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2830
    if-eqz v9, :cond_455

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v27, v0

    if-eqz v27, :cond_455

    .line 2831
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 2833
    :cond_455
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_466

    .line 2834
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2836
    :cond_466
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2837
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2838
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2850
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 2852
    .local v14, inTouchMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2853
    monitor-exit v28
    :try_end_4a1
    .catchall {:try_start_332 .. :try_end_4a1} :catchall_b0

    .line 2855
    if-eqz v7, :cond_4a6

    .line 2856
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 2859
    :cond_4a6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2861
    if-eqz v14, :cond_63d

    const/16 v27, 0x1

    move/from16 v28, v27

    :goto_4af
    if-eqz v9, :cond_643

    const/16 v27, 0x2

    :goto_4b3
    or-int v28, v28, v27

    if-eqz v22, :cond_647

    const/16 v27, 0x4

    :goto_4b9
    or-int v27, v27, v28

    goto/16 :goto_4c

    .line 2582
    .end local v5           #assignLayers:Z
    .end local v7           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v25           #wallpaperMayMove:Z
    :cond_4bd
    const/16 v27, 0x0

    goto/16 :goto_f0

    .line 2594
    :catchall_4c1
    move-exception v27

    :try_start_4c2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v27

    .line 2606
    :cond_4c6
    const/16 v20, 0x0

    goto/16 :goto_15d

    .line 2612
    .restart local v20       #scaledWindow:Z
    :cond_4ca
    const/high16 v27, 0x3f80

    goto/16 :goto_17d

    .line 2614
    :cond_4ce
    const/high16 v27, 0x3f80

    goto/16 :goto_1a1

    .line 2617
    :cond_4d2
    const/high16 v27, 0x3f80

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F
    :try_end_4e0
    .catchall {:try_start_4c2 .. :try_end_4e0} :catchall_b0

    goto/16 :goto_1a7

    .line 2620
    :cond_4e2
    const/4 v13, 0x0

    goto/16 :goto_1af

    .line 2624
    .restart local v13       #imMayMove:Z
    :cond_4e5
    const/4 v12, 0x0

    goto/16 :goto_1c8

    .line 2628
    .restart local v12       #focusMayChange:Z
    :cond_4e8
    const/16 v25, 0x0

    goto/16 :goto_1e8

    .line 2630
    .restart local v25       #wallpaperMayMove:Z
    :cond_4ec
    const/16 v27, 0x0

    goto/16 :goto_1f0

    .line 2643
    .restart local v16       #oldVisibility:I
    :cond_4f0
    const/4 v9, 0x0

    goto/16 :goto_225

    .line 2699
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_4f3
    :try_start_4f3
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V
    :try_end_4f6
    .catchall {:try_start_4f3 .. :try_end_4f6} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_4f3 .. :try_end_4f6} :catch_4f8

    goto/16 :goto_32f

    .line 2701
    .end local v21           #surface:Landroid/view/Surface;
    :catch_4f8
    move-exception v10

    .line 2702
    .local v10, e:Ljava/lang/Exception;
    :try_start_4f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2704
    const-string v27, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception thrown when creating surface for client "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2707
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2708
    const/16 v27, 0x0

    monitor-exit v28

    goto/16 :goto_4c

    .line 2732
    .end local v10           #e:Ljava/lang/Exception;
    :cond_54a
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnterAnimationPending:Z

    .line 2733
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5a9

    .line 2739
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_56a

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5a9

    .line 2740
    :cond_56a
    const/16 v22, 0x1

    .line 2743
    const/16 v24, 0x2002

    .line 2744
    .local v24, transit:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    const/16 v29, 0x3

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_582

    .line 2745
    const/16 v24, 0x5

    .line 2747
    :cond_582
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-nez v27, :cond_5d6

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v27

    if-eqz v27, :cond_5d6

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v24

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v27

    if-eqz v27, :cond_5d6

    .line 2749
    const/4 v12, 0x1

    .line 2750
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2770
    .end local v24           #transit:I
    :cond_5a9
    :goto_5a9
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5c9

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const/high16 v29, 0x1000

    and-int v27, v27, v29

    if-eqz v27, :cond_5c9

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    move/from16 v27, v0

    if-eqz v27, :cond_61a

    .line 2777
    :cond_5c9
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePendingDestroy:Z

    .line 2778
    invoke-virtual/range {p13 .. p13}, Landroid/view/Surface;->release()V

    goto/16 :goto_3b8

    .line 2751
    .restart local v24       #transit:I
    :cond_5d6
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v27

    if-eqz v27, :cond_5e5

    .line 2754
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    goto :goto_5a9

    .line 2755
    :cond_5e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_602

    .line 2759
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2760
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAnimating:Z

    goto :goto_5a9

    .line 2762
    :cond_602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_616

    .line 2763
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 2765
    :cond_616
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroySurfaceLocked()V

    goto :goto_5a9

    .line 2780
    .end local v24           #transit:I
    :cond_61a
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3b8

    .line 2783
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mReportDestroySurface:Z

    .line 2784
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v27, v0

    move-object/from16 v0, p13

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_637
    .catchall {:try_start_4f9 .. :try_end_637} :catchall_b0

    goto/16 :goto_3b8

    .line 2824
    .restart local v5       #assignLayers:Z
    :cond_639
    const/16 v27, 0x0

    goto/16 :goto_418

    .line 2861
    .restart local v7       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_63d
    const/16 v27, 0x0

    move/from16 v28, v27

    goto/16 :goto_4af

    :cond_643
    const/16 v27, 0x0

    goto/16 :goto_4b3

    :cond_647
    const/16 v27, 0x0

    goto/16 :goto_4b9
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .registers 16
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    .line 4168
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4170
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4173
    :cond_13
    const/4 v1, 0x0

    .line 4174
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    const/4 v11, 0x0

    .line 4175
    .local v11, startingToken:Lcom/android/server/wm/AppWindowToken;
    const/4 v7, 0x0

    .line 4177
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4178
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4179
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 4180
    .local v6, basewtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v6, :cond_a5

    iget-object v1, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_a5

    .line 4182
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 4184
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 4185
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4186
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 4187
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 4188
    const/4 v7, 0x1

    .line 4198
    :cond_48
    :goto_48
    if-eqz v7, :cond_9b

    .line 4202
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4212
    :goto_4f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4213
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 4214
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_5c

    .line 4215
    move-object v11, v1

    .line 4217
    :cond_5c
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 4218
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_73

    .line 4220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 4221
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4222
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 4228
    :cond_73
    :goto_73
    if-nez v7, :cond_7a

    if-eqz v1, :cond_7a

    .line 4229
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 4231
    :cond_7a
    monitor-exit v12
    :try_end_7b
    .catchall {:try_start_1d .. :try_end_7b} :catchall_a2

    .line 4232
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4234
    if-eqz v11, :cond_8c

    .line 4237
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4238
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4240
    .end local v8           #m:Landroid/os/Message;
    :cond_8c
    return-void

    .line 4189
    :cond_8d
    :try_start_8d
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_48

    .line 4190
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4191
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    .line 4192
    const/4 v7, 0x1

    goto :goto_48

    .line 4207
    :cond_9b
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 4208
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->animating:Z

    goto :goto_4f

    .line 4231
    .end local v6           #basewtoken:Lcom/android/server/wm/WindowToken;
    :catchall_a2
    move-exception v0

    monitor-exit v12
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_a2

    throw v0

    .line 4225
    .restart local v6       #basewtoken:Lcom/android/server/wm/WindowToken;
    :cond_a5
    :try_start_a5
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_a2

    goto :goto_73
.end method

.method removeFakeWindowLocked(Landroid/view/WindowManagerPolicy$FakeWindow;)Z
    .registers 6
    .parameter "window"

    .prologue
    const/4 v0, 0x1

    .line 9472
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9473
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 9474
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 9475
    monitor-exit v1

    .line 9477
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_13

    .line 9478
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2223
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2224
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2225
    .local v0, win:Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_c

    .line 2226
    monitor-exit v2

    .line 2230
    :goto_b
    return-void

    .line 2228
    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2229
    monitor-exit v2

    goto :goto_b

    .end local v0           #win:Lcom/android/server/wm/WindowState;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 5822
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5823
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5824
    monitor-exit v1

    .line 5825
    return-void

    .line 5824
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V
    .registers 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2242
    .local v0, origId:J
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2254
    const/4 v3, 0x0

    .line 2259
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_60

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_60

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v4, :cond_60

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 2263
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2265
    const/16 v2, 0x2002

    .line 2266
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v5, :cond_30

    .line 2267
    const/4 v2, 0x5

    .line 2270
    :cond_30
    invoke-virtual {p0, p2, v2, v6}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2271
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2274
    .end local v2           #transit:I
    :cond_38
    iget-boolean v4, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_42

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 2277
    :cond_42
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 2278
    iput-boolean v7, p2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2279
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2280
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2282
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2283
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2284
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_5c

    .line 2285
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2288
    :cond_5c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2303
    :goto_5f
    return-void

    .line 2293
    :cond_60
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 2296
    if-eqz v3, :cond_7a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_7a

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2299
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2301
    :cond_7a
    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2302
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5f
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .registers 14
    .parameter "token"

    .prologue
    .line 3227
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 3229
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3232
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3233
    .local v4, origId:J
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 3234
    :try_start_19
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowToken;

    .line 3235
    .local v7, wtoken:Lcom/android/server/wm/WindowToken;
    if-eqz v7, :cond_82

    .line 3236
    const/4 v2, 0x0

    .line 3237
    .local v2, delayed:Z
    iget-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v8, :cond_68

    .line 3238
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3240
    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3241
    .local v0, N:I
    const/4 v1, 0x0

    .line 3243
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_54

    .line 3244
    iget-object v8, v7, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3246
    .local v6, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 3247
    const/4 v2, 0x1

    .line 3250
    :cond_44
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 3251
    const/16 v8, 0x2002

    const/4 v10, 0x0

    invoke-virtual {p0, v6, v8, v10}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3253
    const/4 v1, 0x1

    .line 3243
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3257
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_54
    if-eqz v1, :cond_61

    .line 3258
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3259
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3260
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3264
    :cond_61
    if-eqz v2, :cond_73

    .line 3265
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3271
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    :cond_68
    :goto_68
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3275
    .end local v2           #delayed:Z
    :goto_6e
    monitor-exit v9
    :try_end_6f
    .catchall {:try_start_19 .. :try_end_6f} :catchall_7f

    .line 3276
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3277
    return-void

    .line 3266
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_73
    :try_start_73
    iget v8, v7, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v8, v10, :cond_68

    .line 3267
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_68

    .line 3275
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/wm/WindowToken;
    :catchall_7f
    move-exception v8

    monitor-exit v9
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_7f

    throw v8

    .line 3273
    .restart local v7       #wtoken:Lcom/android/server/wm/WindowToken;
    :cond_82
    :try_start_82
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_7f

    goto :goto_6e
.end method

.method requestAnimationLocked(J)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 8985
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_13

    .line 8986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 8987
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8989
    :cond_13
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 6269
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 6271
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6274
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6275
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 6276
    .local v0, token:Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_24

    .line 6277
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    .line 6279
    :cond_24
    monitor-exit v2

    .line 6280
    return-void

    .line 6279
    .end local v0           #token:Lcom/android/server/wm/WindowToken;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v1
.end method

.method resumeRotationLocked()V
    .registers 4

    .prologue
    .line 5308
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v1, :cond_1c

    .line 5309
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 5310
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v1, :cond_1c

    .line 5311
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    .line 5312
    .local v0, changed:Z
    if-eqz v0, :cond_1c

    .line 5313
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 5317
    .end local v0           #changed:Z
    :cond_1c
    return-void
.end method

.method public screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;
    .registers 39
    .parameter "appToken"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 5089
    const-string v32, "android.permission.READ_FRAME_BUFFER"

    const-string v33, "screenshotApplications()"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_18

    .line 5091
    new-instance v32, Ljava/lang/SecurityException;

    const-string v33, "Requires READ_FRAME_BUFFER permission"

    invoke-direct/range {v32 .. v33}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 5096
    :cond_18
    const/16 v21, 0x0

    .line 5097
    .local v21, maxLayer:I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 5103
    .local v11, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 5104
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 5106
    .local v15, ident:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 5107
    .local v9, dw:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 5109
    .local v8, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    const/16 v34, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v32

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v32, v0

    move/from16 v0, v32

    add-int/lit16 v3, v0, 0x3e8

    .line 5112
    .local v3, aboveAppLayer:I
    add-int/lit16 v3, v3, 0x2710

    .line 5114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    if-eqz v32, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    if-eqz v32, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v32, v0

    if-eqz v32, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_bf

    const/16 v18, 0x1

    .line 5120
    .local v18, isImeTarget:Z
    :goto_96
    const/16 v17, 0x0

    .line 5121
    .local v17, including:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v14, v32, -0x1

    .local v14, i:I
    :goto_a4
    if-ltz v14, :cond_16b

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    .line 5123
    .local v31, ws:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v32, v0

    if-nez v32, :cond_c2

    .line 5121
    :cond_bc
    :goto_bc
    add-int/lit8 v14, v14, -0x1

    goto :goto_a4

    .line 5114
    .end local v14           #i:I
    .end local v17           #including:Z
    .end local v18           #isImeTarget:Z
    .end local v31           #ws:Lcom/android/server/wm/WindowState;
    :cond_bf
    const/16 v18, 0x0

    goto :goto_96

    .line 5126
    .restart local v14       #i:I
    .restart local v17       #including:Z
    .restart local v18       #isImeTarget:Z
    .restart local v31       #ws:Lcom/android/server/wm/WindowState;
    :cond_c2
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v0, v3, :cond_bc

    .line 5132
    if-nez v17, :cond_f4

    if-eqz p1, :cond_f4

    .line 5136
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v32, v0

    if-eqz v32, :cond_da

    if-nez v18, :cond_f4

    .line 5139
    :cond_da
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    if-eqz v32, :cond_bc

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_bc

    .line 5147
    :cond_f4
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v32, v0

    if-nez v32, :cond_168

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v32

    if-nez v32, :cond_168

    const/16 v17, 0x1

    .line 5149
    :goto_106
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_118

    .line 5150
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    move/from16 v21, v0

    .line 5154
    :cond_118
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v32, v0

    if-nez v32, :cond_bc

    .line 5155
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    .line 5156
    .local v30, wf:Landroid/graphics/Rect;
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 5157
    .local v7, cr:Landroid/graphics/Rect;
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    add-int v19, v32, v34

    .line 5158
    .local v19, left:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    add-int v29, v32, v34

    .line 5159
    .local v29, top:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v23, v32, v34

    .line 5160
    .local v23, right:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    sub-int v5, v32, v34

    .line 5161
    .local v5, bottom:I
    move/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v23

    invoke-virtual {v11, v0, v1, v2, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_bc

    .line 5222
    .end local v3           #aboveAppLayer:I
    .end local v5           #bottom:I
    .end local v7           #cr:Landroid/graphics/Rect;
    .end local v8           #dh:I
    .end local v9           #dw:I
    .end local v14           #i:I
    .end local v15           #ident:J
    .end local v17           #including:Z
    .end local v18           #isImeTarget:Z
    .end local v19           #left:I
    .end local v23           #right:I
    .end local v29           #top:I
    .end local v30           #wf:Landroid/graphics/Rect;
    .end local v31           #ws:Lcom/android/server/wm/WindowState;
    :catchall_165
    move-exception v32

    monitor-exit v33
    :try_end_167
    .catchall {:try_start_26 .. :try_end_167} :catchall_165

    throw v32

    .line 5147
    .restart local v3       #aboveAppLayer:I
    .restart local v8       #dh:I
    .restart local v9       #dw:I
    .restart local v14       #i:I
    .restart local v15       #ident:J
    .restart local v17       #including:Z
    .restart local v18       #isImeTarget:Z
    .restart local v31       #ws:Lcom/android/server/wm/WindowState;
    :cond_168
    const/16 v17, 0x0

    goto :goto_106

    .line 5164
    .end local v31           #ws:Lcom/android/server/wm/WindowState;
    :cond_16b
    :try_start_16b
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5167
    const/16 v32, 0x0

    const/16 v34, 0x0

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v11, v0, v1, v9, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 5169
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_181

    if-nez v21, :cond_184

    .line 5170
    :cond_181
    const/4 v4, 0x0

    monitor-exit v33

    .line 5239
    :goto_183
    return-object v4

    .line 5174
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/Display;->getRotation()I

    move-result v24

    .line 5175
    .local v24, rot:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 5176
    .local v12, fw:I
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 5180
    .local v10, fh:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v12

    move/from16 v34, v0

    div-float v27, v32, v34

    .line 5181
    .local v27, targetWidthScale:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v32, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v26, v32, v34

    .line 5182
    .local v26, targetHeightScale:F
    if-gt v9, v8, :cond_25b

    .line 5183
    move/from16 v25, v27

    .line 5186
    .local v25, scale:F
    cmpl-float v32, v26, v25

    if-lez v32, :cond_1c4

    int-to-float v0, v12

    move/from16 v32, v0

    mul-float v32, v32, v26

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p2

    if-ne v0, v1, :cond_1c4

    .line 5187
    move/from16 v25, v26

    .line 5199
    :cond_1c4
    :goto_1c4
    int-to-float v0, v9

    move/from16 v32, v0

    mul-float v32, v32, v25

    move/from16 v0, v32

    float-to-int v9, v0

    .line 5200
    int-to-float v0, v8

    move/from16 v32, v0

    mul-float v32, v32, v25

    move/from16 v0, v32

    float-to-int v8, v0

    .line 5202
    const-string v32, "ro.sf.hwrotation"

    const-string v34, "0"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5203
    .local v13, hwRotation:Ljava/lang/String;
    const-string v32, "270"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1f4

    const-string v32, "90"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1f8

    .line 5204
    :cond_1f4
    add-int/lit8 v32, v24, 0x3

    rem-int/lit8 v24, v32, 0x4

    .line 5207
    :cond_1f8
    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_208

    const/16 v32, 0x3

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_217

    .line 5208
    :cond_208
    move/from16 v28, v9

    .line 5209
    .local v28, tmp:I
    move v9, v8

    .line 5210
    move/from16 v8, v28

    .line 5211
    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_275

    const/16 v24, 0x3

    .line 5221
    .end local v28           #tmp:I
    :cond_217
    :goto_217
    const/16 v32, 0x0

    move/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v9, v8, v0, v1}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 5222
    .local v22, rawss:Landroid/graphics/Bitmap;
    monitor-exit v33
    :try_end_222
    .catchall {:try_start_16b .. :try_end_222} :catchall_165

    .line 5224
    if-nez v22, :cond_278

    .line 5225
    const-string v32, "WindowManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Failure taking screenshot for ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ") to layer "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    const/4 v4, 0x0

    goto/16 :goto_183

    .line 5190
    .end local v13           #hwRotation:Ljava/lang/String;
    .end local v22           #rawss:Landroid/graphics/Bitmap;
    .end local v25           #scale:F
    :cond_25b
    move/from16 v25, v26

    .line 5193
    .restart local v25       #scale:F
    cmpl-float v32, v27, v25

    if-lez v32, :cond_1c4

    int-to-float v0, v10

    move/from16 v32, v0

    mul-float v32, v32, v27

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p3

    if-ne v0, v1, :cond_1c4

    .line 5194
    move/from16 v25, v27

    goto/16 :goto_1c4

    .line 5211
    .restart local v13       #hwRotation:Ljava/lang/String;
    .restart local v28       #tmp:I
    :cond_275
    const/16 v24, 0x1

    goto :goto_217

    .line 5230
    .end local v28           #tmp:I
    .restart local v22       #rawss:Landroid/graphics/Bitmap;
    :cond_278
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v32

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5231
    .local v4, bm:Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 5232
    .local v20, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v9, v8, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 5233
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v25

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v25

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5234
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5235
    .local v6, canvas:Landroid/graphics/Canvas;
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 5236
    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5238
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_183
.end method

.method sendNewConfiguration()V
    .registers 3

    .prologue
    .line 5883
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 5886
    :goto_6
    return-void

    .line 5884
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 20
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_46

    .line 2501
    :cond_c
    move/from16 v9, p7

    .line 2502
    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2503
    .local v7, curTokenIndex:I
    :cond_14
    if-lez v7, :cond_44

    .line 2504
    add-int/lit8 v7, v7, -0x1

    .line 2505
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 2506
    .local v10, token:Lcom/android/server/wm/WindowToken;
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2507
    .local v8, curWallpaperIndex:I
    :goto_26
    if-lez v8, :cond_14

    .line 2508
    add-int/lit8 v8, v8, -0x1

    .line 2509
    iget-object v0, v10, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 2511
    .local v11, wallpaper:Lcom/android/server/wm/WindowState;
    :try_start_32
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_48

    .line 2514
    const/16 p7, 0x0

    goto :goto_26

    .line 2520
    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/wm/WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_44
    if-eqz v9, :cond_46

    .line 2525
    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_46
    const/4 v0, 0x0

    return-object v0

    .line 2515
    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/wm/WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_48
    move-exception v0

    goto :goto_26
.end method

.method public setAnimationScale(IF)V
    .registers 5
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 4676
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4678
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4681
    :cond_12
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2b

    const/4 p2, 0x0

    .line 4683
    :cond_18
    :goto_18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4684
    packed-switch p1, :pswitch_data_42

    .line 4690
    :goto_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4691
    return-void

    .line 4682
    :cond_2b
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_18

    const/high16 p2, 0x41a0

    goto :goto_18

    .line 4685
    :pswitch_34
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1f

    .line 4686
    :pswitch_3b
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1f

    .line 4684
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .registers 5
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 4694
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4696
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4699
    :cond_13
    if-eqz p1, :cond_2d

    .line 4700
    array-length v0, p1

    if-lt v0, v2, :cond_21

    .line 4701
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    .line 4703
    :cond_21
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d

    .line 4704
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    .line 4709
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4710
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 3324
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3326
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3329
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3330
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3331
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_35

    .line 3332
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    monitor-exit v2

    .line 3337
    :goto_34
    return-void

    .line 3335
    :cond_35
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->groupId:I

    .line 3336
    monitor-exit v2

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_39
    move-exception v1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .registers 8
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 3554
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3556
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3559
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3560
    :try_start_15
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3561
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_39

    .line 3562
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    monitor-exit v2

    .line 3568
    :goto_38
    return-void

    .line 3566
    :cond_39
    iput p2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 3567
    monitor-exit v2

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V
    .registers 29
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 3693
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "setAppStartingIcon()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 3695
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3698
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3703
    :try_start_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v16

    .line 3704
    .local v16, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v16, :cond_3d

    .line 3705
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    monitor-exit v17

    .line 3858
    :goto_3c
    return-void

    .line 3712
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_53

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v2

    if-nez v2, :cond_58

    .line 3713
    :cond_53
    monitor-exit v17

    goto :goto_3c

    .line 3857
    .end local v16           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_55
    move-exception v2

    monitor-exit v17
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_55

    throw v2

    .line 3716
    .restart local v16       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_58
    :try_start_58
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_60

    .line 3717
    monitor-exit v17

    goto :goto_3c

    .line 3720
    :cond_60
    if-eqz p9, :cond_155

    .line 3721
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v15

    .line 3722
    .local v15, ttoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v15, :cond_155

    .line 3723
    iget-object v14, v15, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3724
    .local v14, startingWindow:Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_130

    .line 3725
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    if-eqz v2, :cond_7b

    .line 3729
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3734
    :cond_7b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3738
    .local v12, origId:J
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3739
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 3740
    move-object/from16 v0, v16

    iput-object v14, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3741
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3742
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 3743
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3744
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3745
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 3746
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 3747
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 3750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3751
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 3754
    iget-object v2, v15, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3755
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3756
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/wm/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 3763
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_cc

    .line 3764
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 3766
    :cond_cc
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v2, :cond_d5

    .line 3767
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 3769
    :cond_d5
    iget-boolean v2, v15, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v2, :cond_e8

    .line 3770
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3771
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 3772
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3774
    :cond_e8
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    iget-boolean v3, v15, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eq v2, v3, :cond_f9

    .line 3775
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3776
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3778
    :cond_f9
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_11b

    .line 3779
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3780
    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->animating:Z

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->animating:Z

    .line 3781
    iget v2, v15, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    .line 3782
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3783
    const/4 v2, 0x0

    iput v2, v15, Lcom/android/server/wm/AppWindowToken;->animLayerAdjustment:I

    .line 3784
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    .line 3785
    invoke-virtual {v15}, Lcom/android/server/wm/AppWindowToken;->updateLayers()V

    .line 3788
    :cond_11b
    const/4 v2, 0x3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3790
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3791
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3792
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3793
    monitor-exit v17

    goto/16 :goto_3c

    .line 3794
    .end local v12           #origId:J
    :cond_130
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_155

    .line 3800
    iget-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3801
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3802
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 3803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3807
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3808
    monitor-exit v17

    goto/16 :goto_3c

    .line 3815
    .end local v11           #m:Landroid/os/Message;
    .end local v14           #startingWindow:Lcom/android/server/wm/WindowState;
    .end local v15           #ttoken:Lcom/android/server/wm/AppWindowToken;
    :cond_155
    if-nez p10, :cond_15a

    .line 3816
    monitor-exit v17

    goto/16 :goto_3c

    .line 3823
    :cond_15a
    if-eqz p3, :cond_199

    .line 3824
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    .line 3826
    .local v10, ent:Lcom/android/server/AttributeCache$Entry;
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 3828
    monitor-exit v17

    goto/16 :goto_3c

    .line 3830
    :cond_177
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 3832
    monitor-exit v17

    goto/16 :goto_3c

    .line 3834
    :cond_184
    iget-object v2, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 3836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_1ca

    .line 3842
    const/high16 v2, 0x10

    or-int p8, p8, v2

    .line 3849
    .end local v10           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_199
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mStartingIconInTransition:Z

    .line 3850
    new-instance v2, Lcom/android/server/wm/StartingData;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)V

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 3852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3856
    .restart local v11       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3857
    monitor-exit v17

    goto/16 :goto_3c

    .line 3844
    .end local v11           #m:Landroid/os/Message;
    .restart local v10       #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_1ca
    monitor-exit v17
    :try_end_1cb
    .catchall {:try_start_58 .. :try_end_1cb} :catchall_55

    goto/16 :goto_3c
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 12
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3975
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppVisibility()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 3977
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3982
    :cond_15
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3983
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3984
    .local v1, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_38

    .line 3985
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    monitor-exit v8

    .line 4059
    :goto_37
    return-void

    .line 4003
    :cond_38
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_a0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_a0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-eqz v3, :cond_a0

    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    if-eq v3, v5, :cond_a0

    .line 4006
    iget-boolean v3, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eq v3, p2, :cond_55

    .line 4007
    monitor-exit v8

    goto :goto_37

    .line 4058
    .end local v1           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_52
    move-exception v0

    monitor-exit v8
    :try_end_54
    .catchall {:try_start_18 .. :try_end_54} :catchall_52

    throw v0

    .line 4009
    .restart local v1       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_55
    if-nez p2, :cond_91

    :goto_57
    :try_start_57
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 4013
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setDummyAnimation()V

    .line 4014
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4015
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4016
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 4017
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 4018
    if-eqz p2, :cond_93

    .line 4019
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4020
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 4021
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 4026
    iget-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v0, :cond_8f

    .line 4027
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 4028
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 4030
    iget-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_8f

    .line 4037
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 4038
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 4050
    :cond_8f
    :goto_8f
    monitor-exit v8

    goto :goto_37

    :cond_91
    move v0, v2

    .line 4009
    goto :goto_57

    .line 4042
    :cond_93
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4046
    iget-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v0, :cond_8f

    .line 4047
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->waitingToHide:Z

    goto :goto_8f

    .line 4053
    :cond_a0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4054
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 4056
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 4057
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4058
    monitor-exit v8
    :try_end_b3
    .catchall {:try_start_57 .. :try_end_b3} :catchall_52

    goto :goto_37
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .registers 7
    .parameter "token"

    .prologue
    .line 3861
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3863
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3868
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3869
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3870
    .local v0, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_35

    .line 3871
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    monitor-exit v2

    .line 3876
    :goto_34
    return-void

    .line 3874
    :cond_35
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3875
    monitor-exit v2

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setEventDispatching(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 6283
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6285
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6288
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6289
    :try_start_15
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 6290
    monitor-exit v1

    .line 6291
    return-void

    .line 6290
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .registers 11
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3582
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "setFocusedApp()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 3584
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3587
    :cond_14
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3588
    const/4 v0, 0x0

    .line 3589
    .local v0, changed:Z
    if-nez p1, :cond_3e

    .line 3591
    :try_start_1a
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3c

    move v0, v4

    .line 3592
    :goto_1f
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3593
    if-eqz v0, :cond_2a

    .line 3594
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 3610
    :cond_2a
    :goto_2a
    if-eqz p2, :cond_3a

    if-eqz v0, :cond_3a

    .line 3611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3612
    .local v2, origId:J
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3613
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3615
    .end local v2           #origId:J
    :cond_3a
    monitor-exit v6

    .line 3616
    :goto_3b
    return-void

    :cond_3c
    move v0, v5

    .line 3591
    goto :goto_1f

    .line 3597
    :cond_3e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3598
    .local v1, newFocus:Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_61

    .line 3599
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    monitor-exit v6

    goto :goto_3b

    .line 3615
    .end local v1           #newFocus:Lcom/android/server/wm/AppWindowToken;
    :catchall_5e
    move-exception v4

    monitor-exit v6
    :try_end_60
    .catchall {:try_start_1a .. :try_end_60} :catchall_5e

    throw v4

    .line 3602
    .restart local v1       #newFocus:Lcom/android/server/wm/AppWindowToken;
    :cond_61
    :try_start_61
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v7, v1, :cond_70

    move v0, v4

    .line 3603
    :goto_66
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 3605
    if-eqz v0, :cond_2a

    .line 3606
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_5e

    goto :goto_2a

    :cond_70
    move v0, v5

    .line 3602
    goto :goto_66
.end method

.method public setForcedDisplaySize(II)V
    .registers 10
    .parameter "longDimen"
    .parameter "shortDimen"

    .prologue
    .line 7088
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 7090
    :try_start_3
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge v2, v4, :cond_40

    .line 7091
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p2, v2, :cond_3a

    move v1, p2

    .line 7093
    .local v1, width:I
    :goto_e
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p1, v2, :cond_3d

    move v0, p1

    .line 7101
    .local v0, height:I
    :goto_13
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(II)V

    .line 7102
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_size_forced"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7104
    monitor-exit v3

    .line 7105
    return-void

    .line 7091
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_3a
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_e

    .line 7093
    .restart local v1       #width:I
    :cond_3d
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_13

    .line 7096
    .end local v1           #width:I
    :cond_40
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    if-ge p1, v2, :cond_4b

    move v1, p1

    .line 7098
    .restart local v1       #width:I
    :goto_45
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    if-ge p2, v2, :cond_4e

    move v0, p2

    .restart local v0       #height:I
    :goto_4a
    goto :goto_13

    .line 7096
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_4b
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayWidth:I

    goto :goto_45

    .line 7098
    .restart local v1       #width:I
    :cond_4e
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mInitialDisplayHeight:I

    goto :goto_4a

    .line 7104
    .end local v1           #width:I
    :catchall_51
    move-exception v2

    monitor-exit v3
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v2
.end method

.method public setHardKeyboardEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 6167
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6168
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    if-eq v0, p1, :cond_10

    .line 6169
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardEnabled:Z

    .line 6170
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6172
    :cond_10
    monitor-exit v1

    .line 6173
    return-void

    .line 6172
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method setHoldScreenLocked(Z)V
    .registers 4
    .parameter "holding"

    .prologue
    .line 8972
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 8973
    .local v0, state:Z
    if-eq p1, v0, :cond_14

    .line 8974
    if-eqz p1, :cond_15

    .line 8975
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStartedLw()V

    .line 8976
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8982
    :cond_14
    :goto_14
    return-void

    .line 8978
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    .line 8979
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_14
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 5034
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5035
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 5036
    monitor-exit v1

    .line 5037
    return-void

    .line 5036
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setInputFilter(Lcom/android/server/wm/InputFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 4817
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setInputFilter(Lcom/android/server/wm/InputFilter;)V

    .line 4818
    return-void
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1261
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1262
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1263
    .local v2, imw:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_23

    .line 1264
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    .line 1267
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1268
    .local v3, wi:I
    :goto_11
    if-lez v3, :cond_23

    .line 1269
    add-int/lit8 v3, v3, -0x1

    .line 1270
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 1271
    .local v0, cw:Lcom/android/server/wm/WindowState;
    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_11

    .line 1276
    .end local v0           #cw:Lcom/android/server/wm/WindowState;
    .end local v3           #wi:I
    :cond_23
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1277
    .local v1, di:I
    :goto_29
    if-lez v1, :cond_3b

    .line 1278
    add-int/lit8 v1, v1, -0x1

    .line 1279
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1280
    .restart local v2       #imw:Lcom/android/server/wm/WindowState;
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_29

    .line 1284
    :cond_3b
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"
    .parameter "touchableRegion"

    .prologue
    .line 2440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2442
    .local v0, origId:J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4d

    .line 2443
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2444
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_45

    .line 2445
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 2446
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2447
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2448
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2449
    iput p3, v2, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 2450
    iget v3, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3f

    .line 2451
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2452
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2453
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    .line 2455
    :cond_3f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 2456
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2458
    :cond_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_4a

    .line 2460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2462
    return-void

    .line 2458
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_4a
    move-exception v3

    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 2460
    :catchall_4d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMouseCursorType(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 6453
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setMouseCursorType(I)I

    move-result v0

    return v0
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 3541
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3543
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3546
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3547
    :try_start_15
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 3548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 3549
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3550
    monitor-exit v1

    .line 3551
    return-void

    .line 3550
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 6177
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 6178
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;

    .line 6179
    monitor-exit v1

    .line 6180
    return-void

    .line 6179
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setPointerSpeed(I)V
    .registers 4
    .parameter "speed"

    .prologue
    .line 6444
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string v1, "setPointerSpeed()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 6446
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6449
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InputManager;->setPointerSpeed(I)V

    .line 6450
    return-void
.end method

.method public setSformat(II)V
    .registers 9
    .parameter "surfaceid"
    .parameter "format"

    .prologue
    .line 6985
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6986
    .local v0, NW:I
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 6987
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_47

    .line 6989
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6990
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_4b

    .line 6992
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->getIdentity()I

    move-result v3

    if-ne v3, p1, :cond_4b

    .line 6994
    const-string v3, "YJF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------set3DFormat ----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6995
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, p2}, Landroid/view/Surface;->set3DFormat(I)V

    .line 7000
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_47
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 7001
    return-void

    .line 6987
    .restart local v2       #w:Lcom/android/server/wm/WindowState;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 5077
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5078
    return-void
.end method

.method setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .registers 15
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 3880
    const/4 v2, 0x0

    .line 3882
    .local v2, delayed:Z
    iget-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    if-ne v7, p3, :cond_d

    .line 3883
    if-nez p3, :cond_44

    const/4 v7, 0x1

    :goto_8
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    .line 3884
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 3887
    :cond_d
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    .line 3888
    iget-boolean v7, p1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, p3, :cond_97

    .line 3889
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3890
    .local v0, N:I
    const/4 v1, 0x0

    .line 3895
    .local v1, changed:Z
    const/4 v4, 0x0

    .line 3897
    .local v4, runningAppAnimation:Z
    const/4 v7, -0x1

    if-eq p4, v7, :cond_32

    .line 3898
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/wm/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_28

    .line 3899
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3901
    :cond_28
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 3902
    const/4 v1, 0x1

    .line 3903
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_32

    .line 3904
    const/4 v4, 0x1

    move v2, v4

    .line 3908
    .end local v2           #delayed:Z
    :cond_32
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_6f

    .line 3909
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3910
    .local v6, win:Lcom/android/server/wm/WindowState;
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, v7, :cond_46

    .line 3908
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3883
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    .restart local v2       #delayed:Z
    :cond_44
    const/4 v7, 0x0

    goto :goto_8

    .line 3914
    .end local v2           #delayed:Z
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    .restart local v6       #win:Lcom/android/server/wm/WindowState;
    :cond_46
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3915
    const/4 v2, 0x1

    .line 3920
    :cond_4d
    if-eqz p3, :cond_5f

    .line 3921
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-nez v7, :cond_41

    .line 3922
    if-nez v4, :cond_5d

    .line 3923
    const/16 v7, 0x1001

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3926
    :cond_5d
    const/4 v1, 0x1

    goto :goto_41

    .line 3928
    :cond_5f
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 3929
    if-nez v4, :cond_6d

    .line 3930
    const/16 v7, 0x2002

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->applyAnimationLocked(Lcom/android/server/wm/WindowState;IZ)Z

    .line 3933
    :cond_6d
    const/4 v1, 0x1

    goto :goto_41

    .line 3937
    .end local v6           #win:Lcom/android/server/wm/WindowState;
    :cond_6f
    if-nez p3, :cond_9d

    const/4 v7, 0x1

    :goto_72
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    iput-boolean v7, p1, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 3938
    if-nez p3, :cond_9f

    .line 3939
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 3955
    :cond_7d
    :goto_7d
    if-eqz v1, :cond_97

    .line 3956
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 3957
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 3958
    if-eqz p5, :cond_91

    .line 3959
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3961
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3963
    :cond_91
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 3967
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    :cond_97
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_9c

    .line 3968
    const/4 v2, 0x1

    .line 3971
    :cond_9c
    return v2

    .line 3937
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    :cond_9d
    const/4 v7, 0x0

    goto :goto_72

    .line 3943
    :cond_9f
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 3944
    .local v5, swin:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_7d

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mDrawPending:Z

    if-nez v7, :cond_ab

    iget-boolean v7, v5, Lcom/android/server/wm/WindowState;->mCommitDrawPending:Z

    if-eqz v7, :cond_7d

    .line 3946
    :cond_ab
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 3947
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_7d
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 9
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 2413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2415
    .local v0, origId:J
    :try_start_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    .line 2416
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 2417
    .local v2, w:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1d

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1d

    .line 2420
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_27

    .line 2424
    :try_start_15
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_22

    .line 2426
    :try_start_1a
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2431
    :cond_1d
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_27

    .line 2433
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2435
    return-void

    .line 2426
    :catchall_22
    move-exception v3

    :try_start_23
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v3

    .line 2431
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :catchall_27
    move-exception v3

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2433
    :catchall_2a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1815
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1816
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1817
    .local v0, curTokenIndex:I
    :cond_8
    if-lez v0, :cond_2c

    .line 1818
    add-int/lit8 v0, v0, -0x1

    .line 1819
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 1820
    .local v2, token:Lcom/android/server/wm/WindowToken;
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1821
    .local v1, curWallpaperIndex:I
    :goto_1a
    if-lez v1, :cond_8

    .line 1822
    add-int/lit8 v1, v1, -0x1

    .line 1823
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1824
    .local v3, wallpaper:Lcom/android/server/wm/WindowState;
    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/wm/WindowState;->mAnimLayer:I

    goto :goto_1a

    .line 1829
    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/wm/WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_2c
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 2478
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_18

    .line 2479
    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 2480
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 2481
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 2482
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 2483
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 2485
    :cond_18
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 6
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 4988
    const/4 v0, 0x0

    .line 4989
    .local v0, first:Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4998
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v1, :cond_a

    .line 4999
    monitor-exit v2

    .line 5016
    :cond_9
    :goto_9
    return-void

    .line 5001
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_16

    .line 5002
    if-nez p2, :cond_15

    .line 5003
    monitor-exit v2

    goto :goto_9

    .line 5012
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1

    .line 5005
    :cond_15
    const/4 v0, 0x1

    .line 5007
    :cond_16
    :try_start_16
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_1c

    .line 5008
    monitor-exit v2

    goto :goto_9

    .line 5010
    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 5011
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 5012
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_12

    .line 5013
    if-eqz v0, :cond_9

    .line 5014
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto :goto_9
.end method

.method public showStrictModeViolation(Z)V
    .registers 10
    .parameter "on"

    .prologue
    .line 5042
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5043
    .local v2, pid:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5047
    if-eqz p1, :cond_2d

    .line 5048
    const/4 v1, 0x0

    .line 5049
    .local v1, isVisible:Z
    :try_start_a
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5050
    .local v3, ws:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-ne v4, v2, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5051
    const/4 v1, 0x1

    .line 5055
    .end local v3           #ws:Lcom/android/server/wm/WindowState;
    :cond_29
    if-nez v1, :cond_2d

    .line 5056
    monitor-exit v5

    .line 5074
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isVisible:Z
    :goto_2c
    return-void

    .line 5062
    :cond_2d
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_49

    .line 5064
    :try_start_30
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v4, :cond_3f

    .line 5065
    new-instance v4, Lcom/android/server/wm/StrictModeFlash;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v4, v6, v7}, Lcom/android/server/wm/StrictModeFlash;-><init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 5067
    :cond_3f
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_4c

    .line 5069
    :try_start_44
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5073
    monitor-exit v5

    goto :goto_2c

    :catchall_49
    move-exception v4

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    throw v4

    .line 5069
    :catchall_4c
    move-exception v4

    :try_start_4d
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_49
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .parameter "win"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9001
    :try_start_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_18

    .line 9002
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mSurfaceShown:Z

    .line 9003
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->show()V

    .line 9004
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v3, :cond_18

    .line 9007
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 9008
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_18} :catch_19

    .line 9018
    :cond_18
    :goto_18
    return v1

    .line 9012
    :catch_19
    move-exception v0

    .line 9013
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure showing surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9016
    const-string v3, "show"

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)Z

    move v1, v2

    .line 9018
    goto :goto_18
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .registers 10
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 4126
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4128
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4131
    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4132
    if-nez p2, :cond_25

    :try_start_17
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOnFully()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 4134
    monitor-exit v4

    .line 4146
    :goto_24
    return-void

    .line 4137
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4138
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2f

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_4c

    .line 4139
    :cond_2f
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4140
    monitor-exit v4

    goto :goto_24

    .line 4145
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_49

    throw v3

    .line 4142
    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_4c
    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4143
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 4144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4145
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_49

    goto :goto_24
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .registers 11
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 4106
    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_43

    .line 4107
    iget-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_2d

    .line 4108
    iput-boolean v7, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    .line 4109
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 4110
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_2d

    .line 4111
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 4112
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 4113
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4117
    :cond_2d
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4118
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_34
    if-ge v1, v0, :cond_43

    .line 4119
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4120
    .local v2, w:Lcom/android/server/wm/WindowState;
    iput-boolean v7, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 4118
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 4123
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_43
    return-void
.end method

.method public startViewServer(I)Z
    .registers 6
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 5540
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5569
    :cond_7
    :goto_7
    return v1

    .line 5544
    :cond_8
    const-string v2, "android.permission.DUMP"

    const-string v3, "startViewServer"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5548
    const/16 v2, 0x400

    if-lt p1, v2, :cond_7

    .line 5552
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v2, :cond_32

    .line 5553
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5555
    :try_start_22
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v1

    goto :goto_7

    .line 5556
    :catch_29
    move-exception v0

    .line 5557
    .local v0, e:Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 5564
    .end local v0           #e:Ljava/io/IOException;
    :cond_32
    :try_start_32
    new-instance v2, Lcom/android/server/wm/ViewServer;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    .line 5565
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v2}, Lcom/android/server/wm/ViewServer;->start()Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3e} :catch_40

    move-result v1

    goto :goto_7

    .line 5566
    :catch_40
    move-exception v0

    .line 5567
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public statusBarVisibilityChanged(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 9402
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 9404
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9408
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 9409
    :try_start_15
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 9410
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result p1

    .line 9411
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)V

    .line 9412
    monitor-exit v1

    .line 9413
    return-void

    .line 9412
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .registers 8
    .parameter "token"
    .parameter "force"

    .prologue
    .line 4149
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 4151
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4154
    :cond_12
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4155
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 4156
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1f

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v3, :cond_21

    .line 4157
    :cond_1f
    monitor-exit v4

    .line 4165
    :goto_20
    return-void

    .line 4159
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4162
    .local v0, origId:J
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 4163
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4164
    monitor-exit v4

    goto :goto_20

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public stopViewServer()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 5586
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5597
    :cond_7
    :goto_7
    return v0

    .line 5590
    :cond_8
    const-string v1, "android.permission.DUMP"

    const-string v2, "stopViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5594
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v1, :cond_7

    .line 5595
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    goto :goto_7
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 6520
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 6521
    return-void
.end method

.method public thawRotation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5270
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 5272
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5277
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x309

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManagerPolicy;->setUserRotationMode(II)V

    .line 5278
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5279
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V
    .registers 11
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4063
    iget-boolean v4, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_44

    .line 4066
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4067
    .local v0, N:I
    const/4 v2, 0x0

    .line 4068
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_2c

    .line 4069
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 4070
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_29

    .line 4071
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 4072
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_28

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_28

    .line 4074
    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 4076
    :cond_28
    const/4 v2, 0x1

    .line 4068
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4079
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_2c
    if-nez p3, :cond_30

    if-eqz v2, :cond_38

    .line 4081
    :cond_30
    iput-boolean v5, p1, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    .line 4082
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 4084
    :cond_38
    if-eqz p2, :cond_44

    .line 4085
    if-eqz v2, :cond_41

    .line 4086
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 4087
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4089
    :cond_41
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 4092
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_44
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 8
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 3444
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3446
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3449
    :cond_12
    const/4 v0, 0x0

    .line 3450
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3452
    .local v1, ident:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3453
    :try_start_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3455
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    .line 3457
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3458
    return-object v0

    .line 3455
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method updateOrientationFromAppTokensLocked(Z)Z
    .registers 7
    .parameter "inTransaction"

    .prologue
    .line 3511
    const/4 v0, 0x0

    .line 3512
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3514
    .local v1, ident:J
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 3516
    .local v3, req:I
    iget v4, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_1b

    .line 3517
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    .line 3520
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 3521
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1f

    move-result v4

    if-eqz v4, :cond_1b

    .line 3522
    const/4 v0, 0x1

    .line 3528
    :cond_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .end local v3           #req:I
    :catchall_1f
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public updateRotation(Z)V
    .registers 2
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 5289
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(Z)V

    .line 5290
    return-void
.end method

.method public updateRotationUnchecked(Z)V
    .registers 7
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 5324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5326
    .local v1, origId:J
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5327
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v0

    .line 5328
    .local v0, changed:Z
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_18

    .line 5330
    if-nez v0, :cond_11

    if-eqz p1, :cond_14

    .line 5331
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 5334
    :cond_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5335
    return-void

    .line 5328
    .end local v0           #changed:Z
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v3
.end method

.method public updateRotationUncheckedLocked(Z)Z
    .registers 12
    .parameter "inTransaction"

    .prologue
    const/16 v9, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5344
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v6, :cond_9

    .line 5441
    :cond_8
    :goto_8
    return v4

    .line 5351
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_8

    .line 5359
    :cond_15
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v6, :cond_8

    .line 5370
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    iget v8, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(II)I

    move-result v2

    .line 5371
    .local v2, rotation:I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mForcedAppOrientation:I

    invoke-interface {v6, v7, v2}, Landroid/view/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v6

    if-nez v6, :cond_8d

    move v0, v5

    .line 5381
    .local v0, altOrientation:Z
    :goto_2e
    iget v6, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-ne v6, v2, :cond_36

    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    if-eq v6, v0, :cond_8

    .line 5393
    :cond_36
    iput v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 5394
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAltOrientation:Z

    .line 5395
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v7, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    .line 5397
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 5398
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5399
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5400
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5401
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 5402
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(Z)V

    .line 5403
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/wm/InputManager;->setDisplayOrientation(II)V

    .line 5405
    if-nez p1, :cond_66

    .line 5408
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 5417
    :cond_66
    const/4 v4, 0x0

    :try_start_67
    invoke-static {v4, v2}, Landroid/view/Surface;->setOrientation(II)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_8f

    .line 5419
    if-nez p1, :cond_6f

    .line 5420
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 5426
    :cond_6f
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->rebuildBlackFrame(Z)V

    .line 5428
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_7a
    if-ltz v1, :cond_96

    .line 5429
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5430
    .local v3, w:Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_8a

    .line 5432
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 5428
    :cond_8a
    add-int/lit8 v1, v1, -0x1

    goto :goto_7a

    .end local v0           #altOrientation:Z
    .end local v1           #i:I
    .end local v3           #w:Lcom/android/server/wm/WindowState;
    :cond_8d
    move v0, v4

    .line 5371
    goto :goto_2e

    .line 5419
    .restart local v0       #altOrientation:Z
    :catchall_8f
    move-exception v4

    if-nez p1, :cond_95

    .line 5420
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_95
    throw v4

    .line 5435
    .restart local v1       #i:I
    :cond_96
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_9e
    if-ltz v1, :cond_ae

    .line 5437
    :try_start_a0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IRotationWatcher;

    invoke-interface {v4, v2}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_ab} :catch_b1

    .line 5435
    :goto_ab
    add-int/lit8 v1, v1, -0x1

    goto :goto_9e

    :cond_ae
    move v4, v5

    .line 5441
    goto/16 :goto_8

    .line 5438
    :catch_b1
    move-exception v4

    goto :goto_ab
.end method

.method updateStatusBarVisibilityLocked(I)V
    .registers 10
    .parameter "visibility"

    .prologue
    .line 9416
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/wm/InputManager;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/InputManager;->setSystemUiVisibility(I)V

    .line 9417
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9418
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_c
    if-ge v3, v0, :cond_42

    .line 9419
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 9421
    .local v5, ws:Lcom/android/server/wm/WindowState;
    :try_start_16
    iget v1, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 9422
    .local v1, curValue:I
    xor-int v2, v1, p1

    .line 9425
    .local v2, diff:I
    and-int/lit8 v2, v2, 0x3

    .line 9427
    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v2, v6

    .line 9428
    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    and-int v7, p1, v2

    or-int v4, v6, v7

    .line 9429
    .local v4, newValue:I
    if-eq v4, v1, :cond_30

    .line 9430
    iget v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 9431
    iput v4, v5, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 9433
    :cond_30
    if-ne v4, v1, :cond_38

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, v6, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v6, :cond_3f

    .line 9434
    :cond_38
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v7, v5, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v6, v7, p1, v4, v2}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_3f} :catch_43

    .line 9418
    .end local v1           #curValue:I
    .end local v2           #diff:I
    .end local v4           #newValue:I
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 9441
    .end local v5           #ws:Lcom/android/server/wm/WindowState;
    :cond_42
    return-void

    .line 9437
    .restart local v5       #ws:Lcom/android/server/wm/WindowState;
    :catch_43
    move-exception v6

    goto :goto_3f
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 14
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v9, 0x0

    .line 1919
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1920
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1922
    .local v2, dh:I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1923
    .local v5, target:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_1d

    .line 1924
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7f

    .line 1925
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1929
    :cond_13
    :goto_13
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_8a

    .line 1930
    iget v8, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    .line 1936
    :cond_1d
    :goto_1d
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1937
    .local v0, curTokenIndex:I
    :cond_23
    if-lez v0, :cond_d1

    .line 1938
    add-int/lit8 v0, v0, -0x1

    .line 1939
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 1940
    .local v6, token:Lcom/android/server/wm/WindowToken;
    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1941
    .local v1, curWallpaperIndex:I
    :cond_35
    :goto_35
    if-lez v1, :cond_23

    .line 1942
    add-int/lit8 v1, v1, -0x1

    .line 1943
    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1944
    .local v7, wallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v7, v3, v2, p2}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 1945
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->computeShownFrameLocked()V

    .line 1948
    iget v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5e

    iget v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_7d

    .line 1950
    :cond_5e
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 1955
    :try_start_61
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceX:F

    .line 1956
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iput v8, v7, Lcom/android/server/wm/WindowState;->mSurfaceY:F

    .line 1957
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9, v10}, Landroid/view/Surface;->setPosition(FF)V
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_7a} :catch_95

    .line 1964
    :goto_7a
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 1967
    :cond_7d
    const/4 p2, 0x0

    goto :goto_35

    .line 1926
    .end local v0           #curTokenIndex:I
    .end local v1           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_7f
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_13

    .line 1927
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    goto :goto_13

    .line 1931
    :cond_8a
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1d

    .line 1932
    iget v8, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1d

    .line 1959
    .restart local v0       #curTokenIndex:I
    .restart local v1       #curWallpaperIndex:I
    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    .restart local v7       #wallpaper:Lcom/android/server/wm/WindowState;
    :catch_95
    move-exception v4

    .line 1960
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error positioning surface of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pos=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 1971
    .end local v1           #curWallpaperIndex:I
    .end local v4           #e:Ljava/lang/RuntimeException;
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_d1
    return-void
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z
    .registers 24
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    .line 1833
    const/4 v10, 0x0

    .line 1834
    .local v10, changed:Z
    const/4 v12, 0x0

    .line 1835
    .local v12, rawChanged:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_139

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperX:F

    .line 1836
    .local v15, wpx:F
    :goto_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperXStep:F

    move/from16 v16, v0

    .line 1837
    .local v16, wpxs:F
    :goto_1e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v9, v2, p2

    .line 1838
    .local v9, availw:I
    if-lez v9, :cond_141

    int-to-float v2, v9

    mul-float/2addr v2, v15

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    .line 1839
    .local v11, offset:I
    :goto_36
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-eq v2, v11, :cond_144

    const/4 v10, 0x1

    .line 1840
    :goto_3d
    if-eqz v10, :cond_43

    .line 1843
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 1845
    :cond_43
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v15

    if-nez v2, :cond_53

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v16

    if-eqz v2, :cond_5e

    .line 1846
    :cond_53
    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 1847
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 1848
    const/4 v12, 0x1

    .line 1851
    :cond_5e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_147

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperY:F

    move/from16 v17, v0

    .line 1852
    .local v17, wpy:F
    :goto_6d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_14b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperYStep:F

    move/from16 v18, v0

    .line 1853
    .local v18, wpys:F
    :goto_7c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int v8, v2, p3

    .line 1854
    .local v8, availh:I
    if-lez v8, :cond_14f

    int-to-float v2, v8

    mul-float v2, v2, v17

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v11, v2

    .line 1855
    :goto_95
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eq v2, v11, :cond_a0

    .line 1858
    const/4 v10, 0x1

    .line 1859
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 1861
    :cond_a0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v17

    if-nez v2, :cond_b0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v18

    if-eqz v2, :cond_bd

    .line 1862
    :cond_b0
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 1863
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 1864
    const/4 v12, 0x1

    .line 1867
    :cond_bd
    if-eqz v12, :cond_138

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_138

    .line 1873
    if-eqz p4, :cond_d1

    .line 1874
    :try_start_cb
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 1876
    :cond_d1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 1879
    if-eqz p4, :cond_138

    .line 1880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_138

    .line 1881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 1882
    .local v13, start:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_fa} :catch_152

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v2, v13

    if-gez v2, :cond_133

    .line 1887
    :try_start_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_10a
    .catch Ljava/lang/InterruptedException; {:try_start_101 .. :try_end_10a} :catch_154
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_10a} :catch_152

    .line 1891
    :goto_10a
    const-wide/16 v2, 0x96

    add-long/2addr v2, v13

    :try_start_10d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_133

    .line 1893
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/server/wm/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1898
    :cond_133
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_138} :catch_152

    .line 1905
    .end local v13           #start:J
    :cond_138
    :goto_138
    return v10

    .line 1835
    .end local v8           #availh:I
    .end local v9           #availw:I
    .end local v11           #offset:I
    .end local v15           #wpx:F
    .end local v16           #wpxs:F
    .end local v17           #wpy:F
    .end local v18           #wpys:F
    :cond_139
    const/high16 v15, 0x3f00

    goto/16 :goto_f

    .line 1836
    .restart local v15       #wpx:F
    :cond_13d
    const/high16 v16, -0x4080

    goto/16 :goto_1e

    .line 1838
    .restart local v9       #availw:I
    .restart local v16       #wpxs:F
    :cond_141
    const/4 v11, 0x0

    goto/16 :goto_36

    .line 1839
    .restart local v11       #offset:I
    :cond_144
    const/4 v10, 0x0

    goto/16 :goto_3d

    .line 1851
    :cond_147
    const/high16 v17, 0x3f00

    goto/16 :goto_6d

    .line 1852
    .restart local v17       #wpy:F
    :cond_14b
    const/high16 v18, -0x4080

    goto/16 :goto_7c

    .line 1854
    .restart local v8       #availh:I
    .restart local v18       #wpys:F
    :cond_14f
    const/4 v11, 0x0

    goto/16 :goto_95

    .line 1901
    :catch_152
    move-exception v2

    goto :goto_138

    .line 1888
    .restart local v13       #start:J
    :catch_154
    move-exception v2

    goto :goto_10a
.end method

.method updateWallpaperVisibilityLocked()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1974
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowManagerService;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    .line 1975
    .local v5, visible:Z
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 1976
    .local v3, dw:I
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 1978
    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1979
    .local v0, curTokenIndex:I
    :cond_12
    if-lez v0, :cond_50

    .line 1980
    add-int/lit8 v0, v0, -0x1

    .line 1981
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 1982
    .local v4, token:Lcom/android/server/wm/WindowToken;
    iget-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v7, v5, :cond_29

    .line 1983
    if-nez v5, :cond_4e

    move v7, v8

    :goto_25
    iput-boolean v7, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 1986
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1989
    :cond_29
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1990
    .local v1, curWallpaperIndex:I
    :cond_2f
    :goto_2f
    if-lez v1, :cond_12

    .line 1991
    add-int/lit8 v1, v1, -0x1

    .line 1992
    iget-object v7, v4, Lcom/android/server/wm/WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 1993
    .local v6, wallpaper:Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_40

    .line 1994
    invoke-virtual {p0, v6, v3, v2, v9}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1997
    :cond_40
    iget-boolean v7, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_2f

    .line 1998
    iput-boolean v5, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 2003
    :try_start_46
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_2f

    .line 2004
    :catch_4c
    move-exception v7

    goto :goto_2f

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/wm/WindowState;
    :cond_4e
    move v7, v9

    .line 1983
    goto :goto_25

    .line 2009
    .end local v4           #token:Lcom/android/server/wm/WindowToken;
    :cond_50
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3152
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 3153
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 3154
    .local v0, m:I
    :goto_e
    if-ltz v1, :cond_6a

    if-ltz v0, :cond_6a

    .line 3155
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3156
    .local v2, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v3, :cond_21

    .line 3157
    add-int/lit8 v0, v0, -0x1

    .line 3158
    goto :goto_e

    .line 3160
    :cond_21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_65

    .line 3161
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tokens out of sync: external is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", internal is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    :cond_65
    add-int/lit8 v1, v1, -0x1

    .line 3165
    add-int/lit8 v0, v0, -0x1

    .line 3166
    goto :goto_e

    .line 3167
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_6a
    :goto_6a
    if-ltz v1, :cond_95

    .line 3168
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "External token not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    add-int/lit8 v1, v1, -0x1

    goto :goto_6a

    .line 3171
    :cond_95
    :goto_95
    if-ltz v0, :cond_ca

    .line 3172
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3173
    .restart local v2       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v3, :cond_c7

    .line 3174
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid internal token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :cond_c7
    add-int/lit8 v0, v0, -0x1

    .line 3177
    goto :goto_95

    .line 3178
    .end local v2           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_ca
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 10
    .parameter "client"

    .prologue
    .line 5682
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5683
    const/4 v5, 0x0

    .line 5716
    :cond_7
    :goto_7
    return v5

    .line 5686
    :cond_8
    const/4 v5, 0x1

    .line 5688
    .local v5, result:Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5690
    .local v2, focusedWindow:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 5694
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5695
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_4c

    .line 5697
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    if-eqz v2, :cond_39

    .line 5698
    :try_start_20
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5699
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5700
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5702
    :cond_39
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 5703
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_64

    .line 5707
    if-eqz v4, :cond_67

    .line 5709
    :try_start_43
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_48

    move-object v3, v4

    .line 5712
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_7

    .line 5710
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_48
    move-exception v1

    .line 5711
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    move-object v3, v4

    .line 5712
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_7

    .line 5704
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #e:Ljava/io/IOException;
    :catch_4c
    move-exception v1

    .line 5705
    .local v1, e:Ljava/lang/Exception;
    :goto_4d
    const/4 v5, 0x0

    .line 5707
    if-eqz v3, :cond_7

    .line 5709
    :try_start_50
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_7

    .line 5710
    :catch_54
    move-exception v1

    .line 5711
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 5712
    goto :goto_7

    .line 5707
    .end local v1           #e:Ljava/io/IOException;
    :catchall_57
    move-exception v6

    :goto_58
    if-eqz v3, :cond_5d

    .line 5709
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 5712
    :cond_5d
    :goto_5d
    throw v6

    .line 5710
    :catch_5e
    move-exception v1

    .line 5711
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_5d

    .line 5707
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_61
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_58

    .line 5704
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_64
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4d

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_67
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_7
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 14
    .parameter "client"

    .prologue
    .line 5629
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5630
    const/4 v6, 0x0

    .line 5671
    :cond_7
    :goto_7
    return v6

    .line 5633
    :cond_8
    const/4 v6, 0x1

    .line 5636
    .local v6, result:Z
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5638
    :try_start_c
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/wm/WindowState;

    .line 5639
    .local v8, windows:[Lcom/android/server/wm/WindowState;
    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_55

    .line 5641
    const/4 v4, 0x0

    .line 5645
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 5646
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_6b

    .line 5648
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2e
    array-length v1, v8

    .line 5649
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    if-ge v3, v1, :cond_58

    .line 5650
    aget-object v7, v8, v3

    .line 5651
    .local v7, w:Lcom/android/server/wm/WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5652
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 5653
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 5654
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_52} :catch_83

    .line 5649
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 5639
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/wm/WindowState;
    .end local v8           #windows:[Lcom/android/server/wm/WindowState;
    :catchall_55
    move-exception v9

    :try_start_56
    monitor-exit v10
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v9

    .line 5657
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Lcom/android/server/wm/WindowState;
    :cond_58
    :try_start_58
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5658
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_83

    .line 5662
    if-eqz v5, :cond_86

    .line 5664
    :try_start_62
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_67

    move-object v4, v5

    .line 5667
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_7

    .line 5665
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_67
    move-exception v2

    .line 5666
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    move-object v4, v5

    .line 5667
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_7

    .line 5659
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catch_6b
    move-exception v2

    .line 5660
    .local v2, e:Ljava/lang/Exception;
    :goto_6c
    const/4 v6, 0x0

    .line 5662
    if-eqz v4, :cond_7

    .line 5664
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_7

    .line 5665
    :catch_73
    move-exception v2

    .line 5666
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 5667
    goto :goto_7

    .line 5662
    .end local v2           #e:Ljava/io/IOException;
    :catchall_76
    move-exception v9

    :goto_77
    if-eqz v4, :cond_7c

    .line 5664
    :try_start_79
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 5667
    :cond_7c
    :goto_7c
    throw v9

    .line 5665
    :catch_7d
    move-exception v2

    .line 5666
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_7c

    .line 5662
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_80
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_77

    .line 5659
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_83
    move-exception v2

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_6c

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :cond_86
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_7
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    .line 5740
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 5741
    const/4 v10, 0x0

    .line 5812
    :cond_7
    :goto_7
    return v10

    .line 5744
    :cond_8
    const/4 v10, 0x1

    .line 5745
    .local v10, success:Z
    const/4 v3, 0x0

    .line 5746
    .local v3, data:Landroid/os/Parcel;
    const/4 v9, 0x0

    .line 5748
    .local v9, reply:Landroid/os/Parcel;
    const/4 v7, 0x0

    .line 5753
    .local v7, out:Ljava/io/BufferedWriter;
    const/16 v12, 0x20

    :try_start_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 5754
    .local v6, index:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_1b

    .line 5755
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    .line 5757
    :cond_1b
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5758
    .local v2, code:Ljava/lang/String;
    const/16 v12, 0x10

    invoke-static {v2, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    long-to-int v5, v12

    .line 5761
    .local v5, hashCode:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v6, v12, :cond_50

    .line 5762
    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 5767
    :goto_37
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_f1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3a} :catch_b5

    move-result-object v11

    .line 5768
    .local v11, window:Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_53

    .line 5769
    const/4 v10, 0x0

    .line 5797
    .end local v10           #success:Z
    if-eqz v3, :cond_43

    .line 5798
    #Replaced unresolvable odex instruction with a throw
    throw v3
    #invoke-virtual-quick {v3}, vtable@0x4b

    .line 5800
    :cond_43
    if-eqz v9, :cond_48

    .line 5801
    #Replaced unresolvable odex instruction with a throw
    throw v9
    #invoke-virtual-quick {v9}, vtable@0x4b

    .line 5803
    :cond_48
    if-eqz v7, :cond_7

    .line 5805
    :try_start_4a
    #Replaced unresolvable odex instruction with a throw
    throw v7
    #invoke-virtual-quick {v7}, vtable@0x12
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_7

    .line 5806
    :catch_4e
    move-exception v12

    goto :goto_7

    .line 5764
    .end local v11           #window:Lcom/android/server/wm/WindowState;
    .restart local v10       #success:Z
    :cond_50
    :try_start_50
    const-string p3, ""

    goto :goto_37

    .line 5772
    .restart local v11       #window:Lcom/android/server/wm/WindowState;
    :cond_53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 5773
    const-string v12, "android.view.IWindow"

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5774
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5775
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5776
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 5777
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 5781
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5783
    .local v1, binder:Landroid/os/IBinder;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v3, v9, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5785
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 5787
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v12

    if-nez v12, :cond_a1

    .line 5788
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_98
    .catchall {:try_start_50 .. :try_end_98} :catchall_f1
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_98} :catch_b5

    .line 5789
    .end local v7           #out:Ljava/io/BufferedWriter;
    .local v8, out:Ljava/io/BufferedWriter;
    :try_start_98
    const-string v12, "DONE\n"

    invoke-virtual {v8, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5790
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a0} :catch_107

    move-object v7, v8

    .line 5797
    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    :cond_a1
    if-eqz v3, :cond_a6

    .line 5798
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5800
    :cond_a6
    if-eqz v9, :cond_ab

    .line 5801
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5803
    :cond_ab
    if-eqz v7, :cond_7

    .line 5805
    :try_start_ad
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b2

    goto/16 :goto_7

    .line 5806
    :catch_b2
    move-exception v12

    goto/16 :goto_7

    .line 5793
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v2           #code:Ljava/lang/String;
    .end local v5           #hashCode:I
    .end local v6           #index:I
    .end local v11           #window:Lcom/android/server/wm/WindowState;
    :catch_b5
    move-exception v4

    .line 5794
    .local v4, e:Ljava/lang/Exception;
    :goto_b6
    :try_start_b6
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not send command "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with parameters "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc
    .catchall {:try_start_b6 .. :try_end_dc} :catchall_f1

    .line 5795
    const/4 v10, 0x0

    .line 5797
    if-eqz v3, :cond_e2

    .line 5798
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5800
    :cond_e2
    if-eqz v9, :cond_e7

    .line 5801
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5803
    :cond_e7
    if-eqz v7, :cond_7

    .line 5805
    :try_start_e9
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ee

    goto/16 :goto_7

    .line 5806
    :catch_ee
    move-exception v12

    goto/16 :goto_7

    .line 5797
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_f1
    move-exception v12

    :goto_f2
    if-eqz v3, :cond_f7

    .line 5798
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 5800
    :cond_f7
    if-eqz v9, :cond_fc

    .line 5801
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 5803
    :cond_fc
    if-eqz v7, :cond_101

    .line 5805
    :try_start_fe
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_102

    .line 5808
    :cond_101
    :goto_101
    throw v12

    .line 5806
    :catch_102
    move-exception v13

    goto :goto_101

    .line 5797
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v2       #code:Ljava/lang/String;
    .restart local v5       #hashCode:I
    .restart local v6       #index:I
    .restart local v8       #out:Ljava/io/BufferedWriter;
    .restart local v11       #window:Lcom/android/server/wm/WindowState;
    :catchall_104
    move-exception v12

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    goto :goto_f2

    .line 5793
    .end local v7           #out:Ljava/io/BufferedWriter;
    .restart local v8       #out:Ljava/io/BufferedWriter;
    :catch_107
    move-exception v4

    move-object v7, v8

    .end local v8           #out:Ljava/io/BufferedWriter;
    .restart local v7       #out:Ljava/io/BufferedWriter;
    goto :goto_b6
.end method

.method public waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V
    .registers 10
    .parameter "token"
    .parameter "callback"

    .prologue
    .line 8955
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8956
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_5
    invoke-virtual {p0, v3, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 8957
    .local v2, win:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_27

    .line 8958
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8960
    .local v1, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8961
    .local v0, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8962
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8963
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 8965
    .end local v0           #m:Landroid/os/Message;
    .end local v1           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_27
    monitor-exit v4

    .line 8966
    return-void

    .line 8965
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .parameter "window"
    .parameter "result"

    .prologue
    .line 2488
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2489
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_19

    .line 2491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 2492
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2494
    :cond_19
    monitor-exit v1

    .line 2495
    return-void

    .line 2494
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .parameter "window"

    .prologue
    .line 1909
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1910
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_19

    .line 1912
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 1913
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1915
    :cond_19
    monitor-exit v1

    .line 1916
    return-void

    .line 1915
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .registers 7
    .parameter "watcher"

    .prologue
    .line 5449
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5450
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 5466
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 5468
    :try_start_c
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 5469
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_20

    .line 5474
    :goto_19
    :try_start_19
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    monitor-exit v3

    return v2

    .line 5475
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v2

    .line 5470
    :catch_20
    move-exception v2

    goto :goto_19
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .registers 9
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v2, 0x0

    .line 7224
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 7227
    .local v1, win:Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_35

    .line 7228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7230
    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_2c

    .line 7231
    throw v0

    .line 7233
    :cond_2c
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 7247
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #win:Lcom/android/server/wm/WindowState;
    :cond_34
    :goto_34
    return-object v1

    .line 7236
    .restart local v1       #win:Lcom/android/server/wm/WindowState;
    :cond_35
    if-eqz p1, :cond_34

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_34

    .line 7237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 7240
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_6c

    .line 7241
    throw v0

    .line 7243
    :cond_6c
    const-string v3, "WindowManager"

    const-string v4, "Failed looking up window"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 7244
    goto :goto_34
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .registers 5
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    .line 7219
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method
