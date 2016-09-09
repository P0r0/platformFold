.class final Lcom/vivo/sdkplugin/Utils/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/n;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iput p2, p0, Lcom/vivo/sdkplugin/Utils/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 5

    iget v0, p0, Lcom/vivo/sdkplugin/Utils/n;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    const-string v0, "021"

    const-string v1, "0"

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/n;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v2, v2, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/n;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v0, v0, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/sdkplugin/accounts/VivoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/VivoAccountManager;->vivoAccountLoginCancled()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/n;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->d(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastNoticeTime(J)V

    :goto_26
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/n;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/SelfUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->dismiss()V

    return-void

    :cond_30
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/n;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->b(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V

    const-string v0, "021"

    const-string v1, "1"

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/n;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v2, v2, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/n;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->d(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastNoticeTime(J)V

    goto :goto_26
.end method
