.class final Lcom/vivo/sdkplugin/activity/eY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eY;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/eY;->a:Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/UserFeedBackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
