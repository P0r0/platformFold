.class final Lcom/vivo/sdkplugin/activity/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bd;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 7

    if-nez p2, :cond_12

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bd;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bd;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->e(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "\u8bf7\u586b\u5199\u89d2\u8272\u540d\u79f0"

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checksize(Landroid/content/Context;Landroid/widget/EditText;ZLjava/lang/String;)Z

    :cond_12
    return-void
.end method