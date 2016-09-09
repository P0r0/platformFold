.class final Lcom/vivo/sdkplugin/activity/du;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/du;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/du;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/du;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/du;->a:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const-string v3, "string"

    const-string v4, "vivo_temp_login_tips"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Ljava/lang/String;)V

    return-void
.end method
