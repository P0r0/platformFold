.class final Lcom/vivo/sdkplugin/Utils/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/m;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/m;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->installPluginApk()V

    const-string v0, "021"

    const-string v1, "2"

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/m;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v2, v2, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/m;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/SelfUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->dismiss()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/m;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->d(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastNoticeTime(J)V

    return-void
.end method
