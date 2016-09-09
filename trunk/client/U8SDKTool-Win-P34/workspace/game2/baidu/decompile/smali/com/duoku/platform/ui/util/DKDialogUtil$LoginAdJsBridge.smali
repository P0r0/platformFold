.class public Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/util/DKDialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginAdJsBridge"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/duoku/platform/ui/util/DKDialogUtil;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->this$0:Lcom/duoku/platform/ui/util/DKDialogUtil;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    iput-object p2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    .line 1007
    return-void
.end method


# virtual methods
.method public closeLoginAdDialog()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->this$0:Lcom/duoku/platform/ui/util/DKDialogUtil;

    invoke-static {v0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Lcom/duoku/platform/ui/util/DKDialogUtil;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->this$0:Lcom/duoku/platform/ui/util/DKDialogUtil;

    invoke-static {v0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Lcom/duoku/platform/ui/util/DKDialogUtil;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1014
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->this$0:Lcom/duoku/platform/ui/util/DKDialogUtil;

    invoke-static {v0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Lcom/duoku/platform/ui/util/DKDialogUtil;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1015
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->this$0:Lcom/duoku/platform/ui/util/DKDialogUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V

    .line 1017
    :cond_23
    return-void
.end method

.method public declared-synchronized downloadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1033
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "72"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1034
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    const-string v2, "cp_login_ad_click"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_59

    .line 1037
    :try_start_15
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_39

    .line 1040
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_33

    .line 1043
    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_33} :catch_35
    .catchall {:try_start_15 .. :try_end_33} :catchall_59

    .line 1062
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    .line 1048
    :catch_35
    move-exception v0

    .line 1050
    :try_start_36
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1052
    :cond_39
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->isDownloadNative:Z

    if-eqz v0, :cond_5c

    .line 1054
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    const-string v1, "\u5df2\u6dfb\u52a0\u5230\u4e0b\u8f7d\u7ba1\u7406\u5668"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->o()Lcom/duoku/platform/download/utils/DownloadTasks;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/duoku/platform/download/utils/DownloadTasks;->startDownloadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :goto_55
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->closeLoginAdDialog()V
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_59

    goto :goto_33

    .line 1033
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1059
    :cond_5c
    :try_start_5c
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/duoku/platform/util/f;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_59

    goto :goto_55
.end method

.method public jumpToH5(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1072
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "72"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1073
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    const-string v2, "cp_login_ad_click"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1074
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    const-class v2, Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1075
    const-string v1, "function_code"

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1076
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1078
    const-string v1, "dk_operate_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    :cond_2f
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/duoku/platform/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 1081
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->closeLoginAdDialog()V

    .line 1082
    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1092
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "72"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 1093
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    const-string v2, "cp_login_ad_click"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1094
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1095
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1096
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1097
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;->closeLoginAdDialog()V

    .line 1098
    return-void
.end method
