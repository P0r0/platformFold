.class public Lcom/gionee/gsp/service/activity/AssistActivity;
.super Landroid/app/Activity;
.source "AssistActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/gsp/service/activity/AssistActivity$ResultCode;
    }
.end annotation


# static fields
.field public static final LOGIN_REQUEST_CODE:I = 0x6f

.field public static final UPGRADE_USING_ACCOUNT_CODE:I = 0xde


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isGameVersion()Z
    .registers 3

    .prologue
    .line 109
    sget-object v0, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    invoke-virtual {v0}, Lcom/gionee/gsp/GnEType;->getValue()I

    move-result v0

    sget-object v1, Lcom/gionee/gsp/GnEType;->GAME:Lcom/gionee/gsp/GnEType;

    invoke-virtual {v1}, Lcom/gionee/gsp/GnEType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private pidIsNotNull(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private requestBussiness()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/gionee/gsp/service/activity/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "mode"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 40
    .local v2, "isAutoLogin":Z
    invoke-virtual {p0}, Lcom/gionee/gsp/service/activity/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "requestCode"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 41
    .local v4, "requestCode":I
    invoke-virtual {p0}, Lcom/gionee/gsp/service/activity/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "pid"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "pid":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/gionee/gsp/service/activity/AssistActivity;->pidIsNotNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 44
    :try_start_25
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.gionee.pay.components.activities.UpgradeAccountActivity"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "app_id"

    sget-object v6, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v5, "packageName"

    invoke-virtual {p0}, Lcom/gionee/gsp/service/activity/AssistActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v5, "playerId"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v5, "requestCode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v1, v4}, Lcom/gionee/gsp/service/activity/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_49} :catch_4a

    .line 106
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_49
    return-void

    .line 50
    :catch_4a
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4f
    invoke-direct {p0}, Lcom/gionee/gsp/service/activity/AssistActivity;->isGameVersion()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 58
    new-instance v5, Lcom/gionee/gsp/service/activity/AssistActivity$1;

    invoke-direct {v5, p0, v2, v4}, Lcom/gionee/gsp/service/activity/AssistActivity$1;-><init>(Lcom/gionee/gsp/service/activity/AssistActivity;ZI)V

    .line 77
    invoke-virtual {v5}, Lcom/gionee/gsp/service/activity/AssistActivity$1;->start()V

    goto :goto_49

    .line 89
    :cond_5e
    :try_start_5e
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.gionee.account.activity.GSPLoginActivity"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "a"

    sget-object v6, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v5, "packageName"

    invoke-virtual {p0}, Lcom/gionee/gsp/service/activity/AssistActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v5, "intent_goal"

    .line 94
    const/16 v6, 0x44c

    .line 93
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v5, "showNotice"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v5, "GnEType"

    sget-object v6, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    invoke-virtual {v6}, Lcom/gionee/gsp/GnEType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v5, "requestCode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v5, "mode"

    const/4 v6, 0x6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v1, v4}, Lcom/gionee/gsp/service/activity/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_9b} :catch_9c

    goto :goto_49

    .line 101
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_9c
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    invoke-static {p0}, Lcom/gionee/gsp/GnCommplatform;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/GnCommplatform;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gionee/gsp/GnCommplatform;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/gionee/gsp/service/activity/AssistActivity;->finish()V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/gionee/gsp/service/activity/AssistActivity;->setContentView(Landroid/view/View;)V

    .line 31
    invoke-direct {p0}, Lcom/gionee/gsp/service/activity/AssistActivity;->requestBussiness()V

    .line 32
    return-void
.end method
