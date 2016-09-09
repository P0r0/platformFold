.class public final Lmobisocial/omlet/OmletGameSDK;
.super Ljava/lang/Object;
.source "OmletGameSDK.java"


# static fields
.field private static sOverlayService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lmobisocial/omlet/overlaybar/OverlayBarService;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecordingControlsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobisocial/omlet/OmletGameSDK;->sOverlayService:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static areRecordingControlsEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    sget-boolean v0, Lmobisocial/omlet/OmletGameSDK;->sRecordingControlsEnabled:Z

    return v0
.end method

.method public static createEmbeddedVideoViewFragment()Landroid/app/Fragment;
    .registers 1

    .prologue
    .line 142
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-direct {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;-><init>()V

    return-object v0
.end method

.method private static hasHoudini()Z
    .registers 3

    .prologue
    .line 159
    const-string v0, "/system/lib/libhoudini.so"

    .line 160
    .local v0, "LIB_HOUDINI_PATH":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private static isBlacklisted()Z
    .registers 2

    .prologue
    .line 146
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 147
    .local v0, "model":Ljava/lang/String;
    const-string v1, "ALE-L02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 148
    const/4 v1, 0x1

    .line 150
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static isRecordingSupported(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 96
    sget-boolean v1, Lglrecorder/Initializer;->GL_RECORDING_AVAILABLE:Z

    if-nez v1, :cond_6

    .line 98
    :cond_5
    :goto_5
    return v0

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_5

    invoke-static {}, Lmobisocial/omlet/OmletGameSDK;->isBlacklisted()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lmobisocial/omlet/OmletGameSDK;->isUnderArmEmulation()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static isScreenshotSupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-boolean v0, Lglrecorder/Initializer;->GL_RECORDING_AVAILABLE:Z

    if-eqz v0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isUnderArmEmulation()Z
    .registers 2

    .prologue
    .line 155
    invoke-static {}, Lmobisocial/omlet/OmletGameSDK;->hasHoudini()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static launchGameContentActivity(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 136
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_f
    return-void

    .line 133
    :catch_10
    move-exception v0

    .line 134
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "omp_feature_coming_soon"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_f
.end method

.method public static onGameActivityPause(Landroid/app/Activity;)V
    .registers 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 84
    sget-object v1, Lmobisocial/omlet/OmletGameSDK;->sOverlayService:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/OverlayBarService;

    .line 85
    .local v0, "service":Lmobisocial/omlet/overlaybar/OverlayBarService;
    if-nez v0, :cond_12

    .line 86
    const-string v1, "OverlayBarService"

    const-string v2, "Application logic error missing propert onResume callbacks for overlay SDK"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_11
    return-void

    .line 88
    :cond_12
    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->teardown()V

    goto :goto_11
.end method

.method public static onGameActivityResume(Landroid/app/Activity;)V
    .registers 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 69
    sget-object v1, Lmobisocial/omlet/OmletGameSDK;->sOverlayService:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/OverlayBarService;

    .line 70
    .local v0, "service":Lmobisocial/omlet/overlaybar/OverlayBarService;
    if-eqz v0, :cond_14

    .line 71
    const-string v1, "OverlayBarService"

    const-string v2, "Application logic error missing propert onPause callbacks for overlay SDK"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->teardown()V

    .line 74
    :cond_14
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService;

    .end local v0    # "service":Lmobisocial/omlet/overlaybar/OverlayBarService;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 75
    .restart local v0    # "service":Lmobisocial/omlet/overlaybar/OverlayBarService;
    sget-object v1, Lmobisocial/omlet/OmletGameSDK;->sOverlayService:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->setup()V

    .line 77
    sget-boolean v1, Lmobisocial/omlet/OmletGameSDK;->sRecordingControlsEnabled:Z

    invoke-static {p0, v1}, Lmobisocial/omlet/OmletGameSDK;->setRecordingControlsEnabled(Landroid/content/Context;Z)V

    .line 78
    return-void
.end method

.method public static setRecordingControlsEnabled(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 110
    invoke-static {p0}, Lmobisocial/omlet/OmletGameSDK;->isRecordingSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz p1, :cond_17

    .line 111
    const-string v1, "omp_omletGameSDK_recording_not_supported"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 116
    :cond_16
    return-void

    .line 114
    :cond_17
    sput-boolean p1, Lmobisocial/omlet/OmletGameSDK;->sRecordingControlsEnabled:Z

    .line 115
    sget-object v1, Lmobisocial/omlet/OmletGameSDK;->sOverlayService:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/OverlayBarService;

    .local v0, "service":Lmobisocial/omlet/overlaybar/OverlayBarService;
    invoke-virtual {v0, p0, p1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->setRecordingControlsEnabled(Landroid/content/Context;Z)V

    goto :goto_23
.end method
