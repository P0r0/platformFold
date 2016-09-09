.class Lcom/vivo/upgrade/CheckSystemUpdate$2;
.super Ljava/lang/Object;
.source "CheckSystemUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/CheckSystemUpdate;->showSystemUpdateDialog(Lcom/vivo/upgrade/SystemUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/CheckSystemUpdate;

.field private final synthetic val$stateCode:I

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/CheckSystemUpdate;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/CheckSystemUpdate$2;->this$0:Lcom/vivo/upgrade/CheckSystemUpdate;

    iput p2, p0, Lcom/vivo/upgrade/CheckSystemUpdate$2;->val$stateCode:I

    iput-object p3, p0, Lcom/vivo/upgrade/CheckSystemUpdate$2;->val$url:Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    iget v1, p0, Lcom/vivo/upgrade/CheckSystemUpdate$2;->val$stateCode:I

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_c

    .line 163
    iget-object v1, p0, Lcom/vivo/upgrade/CheckSystemUpdate$2;->this$0:Lcom/vivo/upgrade/CheckSystemUpdate;

    const/4 v2, 0x1

    # invokes: Lcom/vivo/upgrade/CheckSystemUpdate;->keepDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v1, p1, v2}, Lcom/vivo/upgrade/CheckSystemUpdate;->access$1(Lcom/vivo/upgrade/CheckSystemUpdate;Landroid/content/DialogInterface;Z)V

    .line 166
    :cond_c
    iget-object v1, p0, Lcom/vivo/upgrade/CheckSystemUpdate$2;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bbk.action.SYSTEM_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "localIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vivo/upgrade/CheckSystemUpdate$2;->this$0:Lcom/vivo/upgrade/CheckSystemUpdate;

    # getter for: Lcom/vivo/upgrade/CheckSystemUpdate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/upgrade/CheckSystemUpdate;->access$2(Lcom/vivo/upgrade/CheckSystemUpdate;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    const-string v1, "Upgrade.CheckSystemUpdate"

    const-string v2, "sendBroadcast:SNSConstant.ACTION_SYSTEM_UPDATE"

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "localIntent":Landroid/content/Intent;
    :cond_2b
    return-void
.end method
