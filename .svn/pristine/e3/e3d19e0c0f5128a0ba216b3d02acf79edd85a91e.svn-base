.class public Lcom/duoku/platform/DkPlatform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# static fields
.field private static mDkPlatformInternal:Lcom/duoku/platform/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeAdView(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V
    .registers 2

    .prologue
    .line 160
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/b;->b(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V

    .line 161
    return-void
.end method

.method public static closeFloatWindow()V
    .registers 1

    .prologue
    .line 137
    :try_start_0
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0}, Lcom/duoku/platform/b;->p()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 142
    :goto_5
    return-void

    .line 139
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeSuspenstWindow()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    return-void
.end method

.method public static getAnnouncementInfo(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/b;->a(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method public static getAutoLoginUserInfo()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 1

    .prologue
    .line 236
    invoke-static {}, Lcom/duoku/platform/b;->n()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getFloatWindowData(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 84
    return-void
.end method

.method public static getSyncLoginUserInfo()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 1

    .prologue
    .line 226
    invoke-static {}, Lcom/duoku/platform/b;->m()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0}, Lcom/duoku/platform/b;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/duoku/platform/DkPlatformSettings;Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 4

    .prologue
    .line 42
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/duoku/platform/b;->a(Landroid/app/Activity;Lcom/duoku/platform/DkPlatformSettings;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 43
    return-void
.end method

.method public static initApplication(Landroid/app/Application;)V
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/b;->a(Landroid/app/Application;)V

    .line 53
    return-void
.end method

.method public static invokeActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 4

    .prologue
    .line 114
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/duoku/platform/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 115
    return-void
.end method

.method public static isAppOnForeground(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 216
    invoke-static {p0}, Lcom/duoku/platform/util/q;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static pause(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V
    .registers 2

    .prologue
    .line 150
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V

    .line 151
    return-void
.end method

.method public static resetLoginState()V
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0}, Lcom/duoku/platform/b;->i()V

    .line 188
    return-void
.end method

.method public static setDKSuspendWindowCallBack(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 2

    .prologue
    .line 170
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/b;->b(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 171
    return-void
.end method

.method public static setDkSessionFailedCallBack(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 2

    .prologue
    .line 179
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/b;->c(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 180
    return-void
.end method

.method public static setSuspensionWindowVisibility(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method public static showExitDialog(Landroid/content/Context;Lcom/duoku/platform/DkExitListener;)V
    .registers 3

    .prologue
    .line 62
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0, p1}, Lcom/duoku/platform/b;->a(Landroid/content/Context;Lcom/duoku/platform/DkExitListener;)V

    .line 63
    return-void
.end method

.method public static showFloatView(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 246
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/b;->a(Landroid/content/Context;)V

    .line 247
    return-void
.end method

.method public static showSuspendWindow(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/duoku/platform/DkPlatform;->getFloatWindowData(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 74
    return-void
.end method

.method public static startSuspensionView()V
    .registers 1

    .prologue
    .line 205
    sget-object v0, Lcom/duoku/platform/DkPlatform;->mDkPlatformInternal:Lcom/duoku/platform/b;

    invoke-virtual {v0}, Lcom/duoku/platform/b;->j()V

    .line 206
    return-void
.end method
