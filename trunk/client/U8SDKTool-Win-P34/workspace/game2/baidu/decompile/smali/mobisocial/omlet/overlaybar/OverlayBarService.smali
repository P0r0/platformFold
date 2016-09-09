.class public Lmobisocial/omlet/overlaybar/OverlayBarService;
.super Ljava/lang/Object;
.source "OverlayBarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/OverlayBarService$OnSwipeTouchListener;,
        Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;,
        Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;,
        Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;,
        Lmobisocial/omlet/overlaybar/OverlayBarService$LocalBinder;,
        Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;,
        Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;,
        Lmobisocial/omlet/overlaybar/OverlayBarService$Prefs;
    }
.end annotation


# static fields
.field private static final MIN_VIDEO_RECORD_LENGTH_MS:I = 0xbb8

.field public static final SCREENSHOT_AVAILABLE_BROADCAST:Ljava/lang/String; = "omlet.glrecorder.SCREENSHOT_AVAILABLE"

.field public static final TAG:Ljava/lang/String; = "OverlayBarService"

.field public static final VIDEO_AVAILABLE_BROADCAST:Ljava/lang/String; = "omlet.glrecorder.VIDEO_AVAILABLE"

.field public static final VIDEO_CANCELLED_BROADCAST:Ljava/lang/String; = "omlet.glrecorder.VIDEO_CANCELLED"

.field public static final VIDEO_START_RECORDING:Ljava/lang/String; = "omlet.glrecorder.VIDEO_START_RECORDING"

.field private static _SHORTCUT_SCALE_FACTOR:F


# instance fields
.field final TAP_DURATION:J

.field _ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

.field private _IsBaidu:Z

.field private _LayoutParamsTYPE:I

.field private _MaxVideoLengthMs:J

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field private _OmplayButtonContainer:Landroid/view/View;

.field private _OmplayButtonCounterTextView:Landroid/widget/TextView;

.field private _OmplayButtonImageView:Landroid/widget/ImageView;

.field private _OmplayButtonTextView:Landroid/widget/TextView;

.field private final _OnRecordStartReceiver:Landroid/content/BroadcastReceiver;

.field private final _OnRecordingCancelReceiver:Landroid/content/BroadcastReceiver;

.field _OnTouchListener:Landroid/view/View$OnTouchListener;

.field private _OverlayBackground:Landroid/view/View;

.field private _OverlayBackgroundContainer:Landroid/view/View;

.field private _OverlayBackgroundVisible:Z

.field private _OverlayShortcutBar:Landroid/view/View;

.field private _OverlayShortcutBarContainer:Landroid/view/View;

.field _PopupState:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

.field _PreviousActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

.field private _RecordStartTime:J

.field private _RecordTimer:Ljava/util/Timer;

.field private _Recording:Z

.field private _RecordingControlsEnabled:Z

.field private _ResumeRecording:Z

.field private final _ScreenshotVideoBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private _ShortcutCamera:Landroid/view/View;

.field private _ShortcutCameraBackground:Landroid/view/View;

.field private _ShortcutRecord:Landroid/view/View;

.field private _ShortcutRecordBackground:Landroid/view/View;

.field private _ShortcutTrash:Landroid/view/View;

.field private _ShortcutTrashBackground:Landroid/view/View;

.field private _ShowingToast:Landroid/widget/Toast;

.field private _StoppedRecording:Z

.field private _ToResumeVideoLength:J

.field private _TouchActionUp:Z

.field _TutorialHelper:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

.field _UpdateUiRunnable:Ljava/lang/Runnable;

.field private _VideoFile:Ljava/io/File;

.field private _VideoPath:Ljava/lang/String;

.field private activeDuration:I

.field private final activity:Landroid/app/Activity;

.field private buttonXbeforeDrag:I

.field private buttonYbeforeDrag:I

.field private final context:Landroid/content/Context;

.field fadeTimer:Ljava/util/Timer;

.field private handler:Landroid/os/Handler;

.field private final mBinder:Landroid/os/IBinder;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field touchId:J

.field private final usePhoneOverlay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Z)V
    .registers 8
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "usePhoneOverlay"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->TAP_DURATION:J

    .line 93
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$LocalBinder;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$LocalBinder;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->mBinder:Landroid/os/IBinder;

    .line 166
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    .line 177
    iput-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeTimer:Ljava/util/Timer;

    .line 179
    const/16 v0, 0x3e8

    iput v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activeDuration:I

    .line 189
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ResumeRecording:Z

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ToResumeVideoLength:J

    .line 193
    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_StoppedRecording:Z

    .line 218
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$1;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OnRecordStartReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$2;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OnRecordingCancelReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$3;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ScreenshotVideoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$5;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$5;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OnTouchListener:Landroid/view/View$OnTouchListener;

    .line 841
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$10;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$10;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_UpdateUiRunnable:Ljava/lang/Runnable;

    .line 140
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    .line 141
    iput-boolean p3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->usePhoneOverlay:Z

    .line 142
    if-nez p3, :cond_4c

    .line 143
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    .line 146
    :goto_4b
    return-void

    .line 145
    :cond_4c
    iput-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    goto :goto_4b
.end method

.method static synthetic access$1000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z

    return v0
.end method

.method static synthetic access$1102(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_StoppedRecording:Z

    return p1
.end method

.method static synthetic access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lmobisocial/omlet/overlaybar/OverlayBarService;)J
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_MaxVideoLengthMs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lmobisocial/omlet/overlaybar/OverlayBarService;J)J
    .registers 4
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_MaxVideoLengthMs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_TouchActionUp:Z

    return v0
.end method

.method static synthetic access$1502(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_TouchActionUp:Z

    return p1
.end method

.method static synthetic access$1600(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->maxOverlayBackground()V

    return-void
.end method

.method static synthetic access$1700(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->addShortcutControls()V

    return-void
.end method

.method static synthetic access$1800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1900(Lmobisocial/omlet/overlaybar/OverlayBarService;II)V
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->saveButtonLocationBeforeDrag(II)V

    return-void
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundVisible:Z

    return v0
.end method

.method static synthetic access$202(Lmobisocial/omlet/overlaybar/OverlayBarService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;FF)Z
    .registers 5
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->checkCoordinatesContains(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->hasVideoToRecover()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->showUnuploadedVideoDialog()V

    return-void
.end method

.method static synthetic access$2600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeOutBackground()V

    return-void
.end method

.method static synthetic access$2800(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2900(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->modifyButtonGraphic()V

    return-void
.end method

.method static synthetic access$300(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$3000(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->highlightShortcutRecord()V

    return-void
.end method

.method static synthetic access$302(Lmobisocial/omlet/overlaybar/OverlayBarService;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 52
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$3100(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->highlightShortcutCamera()V

    return-void
.end method

.method static synthetic access$3200(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->highlightShortcutTrash()V

    return-void
.end method

.method static synthetic access$3300(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->highlightShortcutNone()V

    return-void
.end method

.method static synthetic access$3400(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeInBackground()V

    return-void
.end method

.method static synthetic access$3500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->minOverlayBackground()V

    return-void
.end method

.method static synthetic access$3700(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->removeViewSafe(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ResumeRecording:Z

    return v0
.end method

.method static synthetic access$4000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordingControlsEnabled:Z

    return v0
.end method

.method static synthetic access$4100(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateCounterVisibility()V

    return-void
.end method

.method static synthetic access$4200(Lmobisocial/omlet/overlaybar/OverlayBarService;)I
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    return v0
.end method

.method static synthetic access$4300(Lmobisocial/omlet/overlaybar/OverlayBarService;)I
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getFullscreen()I

    move-result v0

    return v0
.end method

.method static synthetic access$4400()F
    .registers 1

    .prologue
    .line 52
    sget v0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    return v0
.end method

.method static synthetic access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$700(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    return v0
.end method

.method static synthetic access$702(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    return p1
.end method

.method static synthetic access$800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 52
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private addOverlayBackground()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 533
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 534
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 536
    :cond_10
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 537
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "omp_overlay_background"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    .line 538
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "background"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackground:Landroid/view/View;

    .line 539
    iget v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_43

    .line 541
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackground:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 543
    :cond_43
    iput-boolean v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundVisible:Z

    .line 544
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getFullscreen()I

    move-result v2

    or-int/lit8 v4, v2, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 545
    .local v0, "backgroundParams":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 547
    .local v6, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 548
    invoke-virtual {v6, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 549
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackground:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 550
    return-void
.end method

.method private addShortcutControls()V
    .registers 11

    .prologue
    const/4 v1, -0x2

    const/4 v9, 0x0

    .line 565
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    if-nez v2, :cond_d1

    .line 566
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 567
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "omp_overlay_shortcut_bar"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    .line 568
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "shortcut_bar"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBar:Landroid/view/View;

    .line 569
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "shortcut_record"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    .line 570
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "shortcut_camera"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    .line 571
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "shortcut_trash"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    .line 572
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "shortcut_record_background"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecordBackground:Landroid/view/View;

    .line 573
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "shortcut_camera_background"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCameraBackground:Landroid/view/View;

    .line 574
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "shortcut_trash_background"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrashBackground:Landroid/view/View;

    .line 578
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_8f
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getFullscreen()I

    move-result v2

    or-int/lit8 v4, v2, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 580
    .local v0, "backgroundParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 581
    .local v8, "size":Landroid/graphics/Point;
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 582
    iget v1, v8, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 583
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 585
    .local v6, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 586
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 587
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBar:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    return-void

    .line 576
    .end local v0    # "backgroundParams":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v8    # "size":Landroid/graphics/Point;
    :cond_d1
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    invoke-direct {p0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->removeViewSafe(Landroid/view/View;)V

    goto :goto_8f
.end method

.method private cancelRecordTimer()V
    .registers 2

    .prologue
    .line 923
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 924
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 925
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 927
    :cond_e
    return-void
.end method

.method private checkCoordinatesContains(Landroid/view/View;FF)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_b

    .line 599
    :cond_a
    :goto_a
    return v1

    .line 594
    :cond_b
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 595
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 596
    aget v3, v0, v1

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_a

    aget v3, v0, v1

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpl-float v3, p2, v3

    if-gtz v3, :cond_a

    aget v3, v0, v2

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-ltz v3, :cond_a

    aget v3, v0, v2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpl-float v3, p3, v3

    if-gtz v3, :cond_a

    move v1, v2

    .line 599
    goto :goto_a
.end method

.method private clearButtonLocationBeforeDrag()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1033
    iput v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->buttonXbeforeDrag:I

    .line 1034
    iput v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->buttonYbeforeDrag:I

    .line 1035
    return-void
.end method

.method private clearFadeTimer()V
    .registers 2

    .prologue
    .line 746
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 747
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 748
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 750
    :cond_e
    return-void
.end method

.method private fadeInBackground()V
    .registers 9

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 671
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateShortcutsViewState()V

    .line 672
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 673
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 674
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 675
    new-instance v2, Lmobisocial/omlet/overlaybar/OverlayBarService$6;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$6;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 690
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackground:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 691
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 692
    .local v1, "alpha2":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 693
    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 694
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 695
    iput-boolean v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundVisible:Z

    .line 696
    return-void
.end method

.method private fadeOutBackground()V
    .registers 9

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 699
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 700
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 701
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 702
    new-instance v2, Lmobisocial/omlet/overlaybar/OverlayBarService$7;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$7;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 720
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackground:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 721
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 722
    .local v1, "alpha2":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 723
    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 724
    new-instance v2, Lmobisocial/omlet/overlaybar/OverlayBarService$8;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$8;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 741
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 742
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundVisible:Z

    .line 743
    return-void
.end method

.method private getExternalStorageFreeSpace()J
    .registers 3

    .prologue
    .line 930
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFullscreen()I
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 318
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    if-nez v5, :cond_6

    .line 333
    :goto_5
    return v4

    .line 320
    :cond_6
    const/4 v1, 0x0

    .line 321
    .local v1, "f":I
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 322
    .local v3, "w":Landroid/view/Window;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/Window;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v4, 0x400

    :cond_16
    or-int/2addr v1, v4

    .line 323
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_2e

    .line 325
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 326
    .local v2, "v":I
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_28

    .line 327
    const/high16 v4, 0x8000000

    or-int/2addr v1, v4

    .line 329
    :cond_28
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_2e

    .line 330
    or-int/lit16 v1, v1, 0x400

    .end local v2    # "v":I
    :cond_2e
    move v4, v1

    .line 333
    goto :goto_5
.end method

.method private getTutorialHelper()Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;
    .registers 2

    .prologue
    .line 1182
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_TutorialHelper:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    if-nez v0, :cond_b

    .line 1183
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_TutorialHelper:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    .line 1185
    :cond_b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_TutorialHelper:Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 134
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 136
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    goto :goto_a
.end method

.method private hasVideoToRecover()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1141
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-static {v3}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoPathToRecover(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, "videoPathToRecover":Ljava/lang/String;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    .line 1150
    :cond_f
    :goto_f
    return v2

    .line 1145
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1147
    const/4 v2, 0x1

    goto :goto_f

    .line 1149
    :cond_1d
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-static {v3}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->resetVideoRecovery(Landroid/content/Context;)V

    goto :goto_f
.end method

.method private highlightShortcutCamera()V
    .registers 4

    .prologue
    .line 617
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecordBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_record_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 618
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCameraBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_screenshot_selected_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 619
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrashBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_close_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 620
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    sget v1, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 621
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    sget v1, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 622
    return-void
.end method

.method private highlightShortcutNone()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 639
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecordBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_record_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 640
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCameraBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_screenshot_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 641
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrashBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_close_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 642
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 643
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 644
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 645
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 646
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 647
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 648
    return-void
.end method

.method private highlightShortcutRecord()V
    .registers 4

    .prologue
    .line 606
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecordBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_record_selected_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 607
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCameraBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_screenshot_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 608
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrashBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_close_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 609
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    sget v1, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 610
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    sget v1, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 611
    return-void
.end method

.method private highlightShortcutTrash()V
    .registers 4

    .prologue
    .line 628
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecordBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_record_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 629
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCameraBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_screenshot_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 630
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrashBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_switch_close_selected_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 631
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    sget v1, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 632
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    sget v1, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 633
    return-void
.end method

.method private isAudioPermissionAllowed()Z
    .registers 2

    .prologue
    .line 869
    const/4 v0, 0x1

    return v0
.end method

.method private maxOverlayBackground()V
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 553
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getFullscreen()I

    move-result v2

    or-int/lit8 v4, v2, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 555
    .local v0, "backgroundParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackground:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 557
    return-void
.end method

.method private minOverlayBackground()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 560
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getFullscreen()I

    move-result v2

    or-int/lit8 v4, v2, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 561
    .local v0, "backgroundParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 562
    return-void
.end method

.method private modifyButtonGraphic()V
    .registers 3

    .prologue
    .line 1049
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->NOTHING:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_d

    .line 1050
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->modifyButtonGraphicNothing()V

    .line 1056
    :cond_9
    :goto_9
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateCounterVisibility()V

    .line 1057
    return-void

    .line 1051
    :cond_d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_17

    .line 1052
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->modifyButtonGraphicVideo()V

    goto :goto_9

    .line 1053
    :cond_17
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->SCREENSHOT:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_9

    .line 1054
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->modifyButtonGraphicScreenshot()V

    goto :goto_9
.end method

.method private modifyButtonGraphicNothing()V
    .registers 1

    .prologue
    .line 1061
    return-void
.end method

.method private modifyButtonGraphicScreenshot()V
    .registers 4

    .prologue
    .line 1083
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_tool_screenshot"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1084
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z

    if-eqz v0, :cond_18

    .line 1085
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1087
    :cond_18
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_button_screenshot"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1088
    return-void
.end method

.method private modifyButtonGraphicVideo()V
    .registers 4

    .prologue
    .line 1064
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    if-eqz v0, :cond_2d

    .line 1065
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_tool_stop"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1066
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z

    if-eqz v0, :cond_1b

    .line 1067
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1075
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_StoppedRecording:Z

    if-eqz v0, :cond_4a

    .line 1076
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_button_saving"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1080
    :goto_2c
    return-void

    .line 1070
    :cond_2d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_btn_tool_record"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1071
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_StoppedRecording:Z

    if-nez v0, :cond_1b

    .line 1072
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b

    .line 1078
    :cond_4a
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_button_record_video"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2c
.end method

.method private performActionStateNothing()V
    .registers 1

    .prologue
    .line 1165
    return-void
.end method

.method private performActionStateScreenshot()V
    .registers 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->takeScreenshot()V

    .line 1177
    return-void
.end method

.method private performActionStateVideo()V
    .registers 2

    .prologue
    .line 1168
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->hasVideoToRecover()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1169
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->startRecording()V

    .line 1173
    :goto_9
    return-void

    .line 1171
    :cond_a
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->showUnuploadedVideoDialog()V

    goto :goto_9
.end method

.method private removeViewSafe(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 789
    :try_start_0
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 793
    :goto_7
    return-void

    .line 790
    :catch_8
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OverlayBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to clear window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private saveButtonLocationBeforeDrag(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1028
    iput p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->buttonXbeforeDrag:I

    .line 1029
    iput p2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->buttonYbeforeDrag:I

    .line 1030
    return-void
.end method

.method private scheduleFadeTimer(Landroid/view/WindowManager$LayoutParams;)V
    .registers 8
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 754
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeTimer:Ljava/util/Timer;

    .line 755
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeTimer:Ljava/util/Timer;

    new-instance v2, Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    invoke-direct {v2, p0, p1}, Lmobisocial/omlet/overlaybar/OverlayBarService$9;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/WindowManager$LayoutParams;)V

    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activeDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_14} :catch_15

    .line 781
    :goto_14
    return-void

    .line 778
    :catch_15
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "OverlayBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in scheduling Omlet button fade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private showUnuploadedVideoDialog()V
    .registers 7

    .prologue
    .line 1091
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-static {v3}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoPathToRecover(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, "videoPath":Ljava/lang/String;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_64

    .line 1094
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->createCommonAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1098
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    :goto_10
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "omp_unupload_video_dialog_title"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1099
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "omp_unupload_video_dialog_message"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1100
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "omp_unupload_video_dialog_action_open"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lmobisocial/omlet/overlaybar/OverlayBarService$13;

    invoke-direct {v4, p0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService$13;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1110
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "omp_unupload_video_dialog_action_delete"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lmobisocial/omlet/overlaybar/OverlayBarService$14;

    invoke-direct {v4, p0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService$14;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1125
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    if-nez v3, :cond_5c

    .line 1126
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6b

    const/16 v3, 0x7d5

    :goto_59
    invoke-virtual {v4, v3}, Landroid/view/Window;->setType(I)V

    .line 1128
    :cond_5c
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1129
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1130
    return-void

    .line 1096
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_64
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->createCommonAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_10

    .line 1126
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_6b
    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    goto :goto_59
.end method

.method private updateCounterVisibility()V
    .registers 3

    .prologue
    .line 1133
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->hasVideoToRecover()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_13

    .line 1134
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonCounterTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    :goto_12
    return-void

    .line 1136
    :cond_13
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonCounterTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12
.end method

.method private updateShortcutsViewState()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 651
    sget-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$15;->$SwitchMap$mobisocial$omlet$overlaybar$OverlayBarService$ActionState:[I

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 668
    :goto_10
    return-void

    .line 653
    :pswitch_11
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 658
    :pswitch_21
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 663
    :pswitch_31
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShortcutTrash:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 651
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_11
        :pswitch_21
        :pswitch_31
    .end packed-switch
.end method

.method private updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 797
    :try_start_0
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 801
    :goto_7
    return-void

    .line 798
    :catch_8
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OverlayBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to update layout params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method public dismissPopup()V
    .registers 3

    .prologue
    .line 972
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 973
    sget-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;->BUTTON_FULL:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_PopupState:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

    .line 974
    return-void
.end method

.method getEstimatedVideoLengthMs()J
    .registers 5

    .prologue
    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ToResumeVideoLength:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public loadButtonActionState()V
    .registers 6

    .prologue
    .line 994
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "overlay_bar_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 995
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "overlay_button_action"

    sget-object v3, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "enumString":Ljava/lang/String;
    const-string v2, "VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 998
    sget-object v2, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->setActionState(Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;)V

    .line 1006
    :goto_22
    return-void

    .line 999
    :cond_23
    const-string v2, "SCREENSHOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1001
    sget-object v2, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->SCREENSHOT:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->setActionState(Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;)V

    goto :goto_22

    .line 1003
    :cond_31
    sget-object v2, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->setActionState(Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;)V

    goto :goto_22
.end method

.method public loadLocalData()V
    .registers 1

    .prologue
    .line 982
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->loadOverlayButtonPosition()V

    .line 983
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->loadButtonActionState()V

    .line 984
    return-void
.end method

.method public loadOverlayButtonPosition()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1019
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "overlay_bar_preferences"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1020
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v3, "overlay_button_container_x"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1021
    .local v1, "x":I
    const-string v3, "overlay_button_container_y"

    const/16 v4, 0xc8

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1022
    .local v2, "y":I
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1023
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1024
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1025
    return-void
.end method

.method public moveButtonToLocationBeforeDrag()V
    .registers 3

    .prologue
    .line 1038
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->buttonXbeforeDrag:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1039
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->buttonYbeforeDrag:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1040
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1041
    return-void
.end method

.method public performActionState()V
    .registers 3

    .prologue
    .line 1154
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->NOTHING:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_a

    .line 1155
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->performActionStateNothing()V

    .line 1161
    :cond_9
    :goto_9
    return-void

    .line 1156
    :cond_a
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_14

    .line 1157
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->performActionStateVideo()V

    goto :goto_9

    .line 1158
    :cond_14
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->SCREENSHOT:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_9

    .line 1159
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->performActionStateScreenshot()V

    goto :goto_9
.end method

.method public saveButtonActionState()V
    .registers 6

    .prologue
    .line 987
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "overlay_bar_preferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 988
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 989
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "overlay_button_action"

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 990
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 991
    return-void
.end method

.method public saveLocalData()V
    .registers 1

    .prologue
    .line 977
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->saveOverlayButtonPosition()V

    .line 978
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->saveButtonActionState()V

    .line 979
    return-void
.end method

.method public saveOverlayButtonPosition()V
    .registers 8

    .prologue
    .line 1009
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1010
    .local v2, "x":I
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1011
    .local v3, "y":I
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v5, "overlay_bar_preferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1012
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1013
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "overlay_button_container_x"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1014
    const-string v4, "overlay_button_container_y"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1015
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1016
    return-void
.end method

.method public setActionState(Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;)V
    .registers 2
    .param p1, "state"    # Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .prologue
    .line 1044
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 1045
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->modifyButtonGraphic()V

    .line 1046
    return-void
.end method

.method public setRecordingControlsEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 824
    iput-boolean p2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordingControlsEnabled:Z

    .line 825
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordingControlsEnabled:Z

    if-eqz v0, :cond_2d

    .line 826
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_PreviousActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-eqz v0, :cond_e

    .line 827
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_PreviousActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 830
    :cond_e
    :goto_e
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->modifyButtonGraphic()V

    .line 831
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getTutorialOverlayBarPref(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordingControlsEnabled:Z

    if-eqz v0, :cond_32

    .line 832
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getTutorialHelper()Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->showTutorial()V

    .line 836
    :goto_22
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    if-eqz v0, :cond_2c

    if-nez p2, :cond_2c

    .line 837
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->stopRecording(Z)V

    .line 839
    :cond_2c
    return-void

    .line 829
    :cond_2d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_PreviousActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    goto :goto_e

    .line 834
    :cond_32
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_UpdateUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_22
.end method

.method public setup()V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x2

    const/4 v8, 0x0

    .line 337
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "omp_config_flavor"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "baidu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 338
    iput-boolean v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z

    .line 339
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    .line 344
    :goto_1f
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 345
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/util/RecorderConfigUtil;->getVideoMaxLengthMs(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_MaxVideoLengthMs:J

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->handler:Landroid/os/Handler;

    .line 348
    invoke-static {}, Lglrecorder/Initializer;->resumeRecording()V

    .line 349
    invoke-static {}, Lglrecorder/Initializer;->isRecording()Z

    move-result v0

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    .line 350
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    if-eqz v0, :cond_14e

    .line 351
    sget-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ActionState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 352
    iput-boolean v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ResumeRecording:Z

    .line 356
    :goto_4b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoToResumeLength(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ToResumeVideoLength:J

    .line 357
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->usePhoneOverlay:Z

    if-eqz v0, :cond_157

    .line 358
    const/16 v0, 0x7d2

    iput v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    .line 364
    :goto_5b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 365
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v2, "omp_omplay_button"

    invoke-static {v0, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "text_view_omplay_button"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    .line 367
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "image_view_omplay_button"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonImageView:Landroid/widget/ImageView;

    .line 368
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "text_view_omplay_button_counter"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonCounterTextView:Landroid/widget/TextView;

    .line 369
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->updateCounterVisibility()V

    .line 370
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ResumeRecording:Z

    if-eqz v0, :cond_b4

    .line 371
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->startTimer()V

    .line 373
    :cond_b4
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getFullscreen()I

    move-result v2

    or-int/lit8 v4, v2, 0x8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 374
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 376
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 377
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 378
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->addOverlayBackground()V

    .line 380
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    sget-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;->BUTTON_FULL:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_PopupState:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

    .line 382
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordingControlsEnabled:Z

    if-eqz v0, :cond_166

    move v0, v8

    :goto_f5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->loadLocalData()V

    .line 384
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "omlet.glrecorder.VIDEO_START_RECORDING"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OnRecordStartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 388
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string v0, "omlet.glrecorder.VIDEO_CANCELLED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OnRecordingCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string v0, "omlet.glrecorder.VIDEO_AVAILABLE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v0, "omlet.glrecorder.SCREENSHOT_AVAILABLE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ScreenshotVideoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 395
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/OverlayBarService$4;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$4;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 414
    return-void

    .line 341
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_145
    iput-boolean v8, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z

    .line 342
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F

    goto/16 :goto_1f

    .line 354
    :cond_14e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setVideoToResumeLength(Landroid/content/Context;J)V

    goto/16 :goto_4b

    .line 359
    :cond_157
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_160

    .line 360
    const/4 v0, 0x2

    iput v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    goto/16 :goto_5b

    .line 362
    :cond_160
    const/16 v0, 0x7d5

    iput v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    goto/16 :goto_5b

    .line 382
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_166
    const/16 v0, 0x8

    goto :goto_f5
.end method

.method public showPopup()V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v1, -0x1

    .line 964
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 965
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 966
    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;->MENU_OPTIONS:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_PopupState:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

    .line 967
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 968
    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;->MENU_OPTIONS:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_PopupState:Lmobisocial/omlet/overlaybar/OverlayBarService$PopupState;

    .line 969
    return-void
.end method

.method public startRecording()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 873
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x3c00000

    cmp-long v1, v2, v4

    if-gez v1, :cond_22

    .line 874
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "omp_overlayBarService_out_of_space"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 898
    :goto_21
    return-void

    .line 877
    :cond_22
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v1}, Lmobisocial/omlib/api/OmletApiManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 878
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v2, Lmobisocial/omlet/overlaybar/OverlayBarService$12;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$12;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 886
    :cond_34
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->isAudioPermissionAllowed()Z

    move-result v1

    invoke-static {v1}, Lglrecorder/Initializer;->setAudioEnabled(Z)V

    .line 887
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 889
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "omlet.glrecorder.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 892
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 893
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "omp_overlayBarService_recording_started"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    .line 895
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v3, "omp_btn_tool_stop"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 896
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21
.end method

.method startTimer()V
    .registers 7

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordStartTime:J

    .line 214
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;

    .line 215
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;

    new-instance v1, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 216
    return-void
.end method

.method public stopRecording(Z)V
    .registers 10
    .param p1, "forceCancel"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 902
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setPrefVideoRecordingWasCancelled(Landroid/content/Context;Z)V

    .line 903
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getEstimatedVideoLengthMs()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gez v1, :cond_13

    if-eqz p1, :cond_38

    .line 904
    :cond_13
    iput-boolean v7, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_StoppedRecording:Z

    .line 905
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 906
    iput-boolean v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z

    .line 907
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 909
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "omlet.glrecorder.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 912
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->cancelRecordTimer()V

    .line 920
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_37
    return-void

    .line 914
    :cond_38
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShowingToast:Landroid/widget/Toast;

    if-eqz v1, :cond_41

    .line 915
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShowingToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 917
    :cond_41
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    const-string v4, "omp_video_length_too_short_dialog_description"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShowingToast:Landroid/widget/Toast;

    .line 918
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ShowingToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_37
.end method

.method public takeScreenshot()V
    .registers 4

    .prologue
    .line 851
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v1}, Lmobisocial/omlib/api/OmletApiManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 852
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v2, Lmobisocial/omlet/overlaybar/OverlayBarService$11;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$11;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 860
    :cond_12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 862
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "omlet.glrecorder.SCREENSHOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 865
    return-void
.end method

.method public teardown()V
    .registers 5

    .prologue
    .line 804
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 805
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayShortcutBarContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->removeViewSafe(Landroid/view/View;)V

    .line 806
    :cond_9
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 807
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->removeViewSafe(Landroid/view/View;)V

    .line 808
    :cond_12
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 809
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->removeViewSafe(Landroid/view/View;)V

    .line 810
    :cond_1b
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getTutorialHelper()Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->removeTutorial()V

    .line 811
    invoke-static {}, Lglrecorder/Initializer;->pauseRecording()V

    .line 812
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OnRecordStartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 813
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OnRecordingCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 814
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_ScreenshotVideoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 815
    iget-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_StoppedRecording:Z

    if-nez v0, :cond_47

    .line 816
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getEstimatedVideoLengthMs()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setVideoToResumeLength(Landroid/content/Context;J)V

    .line 818
    :cond_47
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->cancelRecordTimer()V

    .line 819
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 820
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->saveLocalData()V

    .line 821
    return-void
.end method
