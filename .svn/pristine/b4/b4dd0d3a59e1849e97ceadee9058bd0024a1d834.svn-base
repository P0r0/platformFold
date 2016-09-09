.class Lcom/gionee/gsp/service/activity/AssistActivity$1;
.super Ljava/lang/Thread;
.source "AssistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/activity/AssistActivity;->requestBussiness()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/activity/AssistActivity;

.field private final synthetic val$isAutoLogin:Z

.field private final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/activity/AssistActivity;ZI)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/activity/AssistActivity$1;->this$0:Lcom/gionee/gsp/service/activity/AssistActivity;

    iput-boolean p2, p0, Lcom/gionee/gsp/service/activity/AssistActivity$1;->val$isAutoLogin:Z

    iput p3, p0, Lcom/gionee/gsp/service/activity/AssistActivity$1;->val$requestCode:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 61
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.gionee.account.activity.GSPLoginActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/gionee/gsp/service/activity/AssistActivity$1;->val$isAutoLogin:Z

    if-eqz v2, :cond_16

    .line 64
    const-string v2, "mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    :cond_16
    const-string v2, "showNotice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string v2, "GnEType"

    sget-object v3, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    invoke-virtual {v3}, Lcom/gionee/gsp/GnEType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "a"

    sget-object v3, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "packageName"

    iget-object v3, p0, Lcom/gionee/gsp/service/activity/AssistActivity$1;->this$0:Lcom/gionee/gsp/service/activity/AssistActivity;

    invoke-virtual {v3}, Lcom/gionee/gsp/service/activity/AssistActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v2, "requestCode"

    iget v3, p0, Lcom/gionee/gsp/service/activity/AssistActivity$1;->val$requestCode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    iget-object v2, p0, Lcom/gionee/gsp/service/activity/AssistActivity$1;->this$0:Lcom/gionee/gsp/service/activity/AssistActivity;

    iget v3, p0, Lcom/gionee/gsp/service/activity/AssistActivity$1;->val$requestCode:I

    invoke-virtual {v2, v1, v3}, Lcom/gionee/gsp/service/activity/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_48

    .line 76
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_47
    return-void

    .line 72
    :catch_48
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method
