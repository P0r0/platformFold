.class final Lcom/vivo/sdkplugin/activity/aE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/aE;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 6

    if-nez p2, :cond_10

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aE;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/aE;->a:Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;->g(Lcom/vivo/sdkplugin/activity/CommitUserContactActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checkEmail(Landroid/content/Context;Landroid/widget/EditText;Z)Z

    :cond_10
    return-void
.end method
