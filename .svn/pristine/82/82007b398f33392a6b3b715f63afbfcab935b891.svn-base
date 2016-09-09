.class final Lcom/vivo/sdkplugin/Utils/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/p;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iput-object p2, p0, Lcom/vivo/sdkplugin/Utils/p;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/p;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/p;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->a(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/p;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->d(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLastNoticeTime(J)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/p;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->c(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)Lcom/vivo/sdkplugin/SelfUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->dismiss()V

    return-void
.end method
